#include "pathfinder.h"
#include "support.h"
#include <string.h>
#include "my_timer.h"

int INPUT_SIZE = sizeof(struct bench_args_t);

void run_benchmark( void *vargs, cl_context& context, cl_command_queue& commands, cl_program& program, cl_kernel& kernel ) {
  struct bench_args_t *args = (struct bench_args_t *)vargs;
  // 0th: initialize the timer at the beginning of the program
  timespec timer = tic();

  printf("pathfinder ROWS = %d, COLS = %d\n", ROWS, COLS);

  // Create device buffers
  cl_mem J_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(args->J) , NULL, NULL);
  cl_mem Jout_buffer = clCreateBuffer(context, CL_MEM_WRITE_ONLY, sizeof(args->Jout) , NULL, NULL);

  if (!J_buffer || !Jout_buffer) {
    printf("Error: Failed to allocate device memory!\n");
    printf("Test failed\n");
    exit(1);
  }    

  // 1st: time of buffer allocation
  toc(&timer, "buffer allocation");

  // Write our data set into device buffers  
  //
  int err;
  err  = clEnqueueWriteBuffer(commands, J_buffer, CL_TRUE, 0, sizeof(args->J), args->J, 0, NULL, NULL);

  if (err != CL_SUCCESS)
  {
    printf("Error: Failed to write to device memory!\n");
    printf("Test failed\n");
    exit(1);
  }

  // 2nd: time of pageable-pinned memory copy
  toc(&timer, "memory copy");
    
  int32_t iterate = 300;
  // Set the arguments to our compute kernel  
  err  = clSetKernelArg(kernel, 0, sizeof(cl_mem), &J_buffer);
  err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &Jout_buffer);
  //err |= clSetKernelArg(kernel, 2, sizeof(int32_t), &iterate);

  if (err != CL_SUCCESS) {
    printf("Error: Failed to set kernel arguments! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  // 3rd: time of setting arguments
  toc(&timer, "set arguments");

  // Execute the kernel over the entire range of our 1d input data set
  // using the maximum number of work group items for this device
  //

  cl_ulong time_start, time_end;
  cl_event event;
  // double total_time;
#ifdef C_KERNEL
  err = clEnqueueTask(commands, kernel, 0, NULL, &event);
  err = clWaitForEvents(1, &event); 
#else
  printf("Error: OpenCL kernel is not currently supported!\n");
  exit(1);
#endif
  if (err) {
    printf("Error: Failed to execute kernel! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  // 4th: time of kernel execution
  clFinish(commands);
  err = clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);

  if (err) {
    printf("Error: Failed to retrieve time start! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  err = clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);

  if (err) {
    printf("Error: Failed to time end! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  // total_time = time_end-time_start;
  // printf("OpenCl Execution time is (ms): %0.3f \n",(total_time/1000000.0));
  toc(&timer, "kernel execution");

  // Read back the results from the device to verify the output
  err  = clEnqueueReadBuffer(commands, Jout_buffer,  CL_TRUE, 0, sizeof(args->Jout), args->Jout, 0, NULL, NULL);  

  if (err != CL_SUCCESS) {
    printf("Error: Failed to read output array! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  // 5th: time of data retrieving (PCIe + memcpy)
  toc(&timer, "data retrieving");
}

/* Input format:
   %% Section 1
   J[ROWS*COLS]: input array J
*/

void input_to_data(int fd, void *vdata) {
  struct bench_args_t *data = (struct bench_args_t *)vdata;
  char *p, *s;
  // Zero-out everything.
  memset(vdata,0,sizeof(struct bench_args_t));
  // Load input string
  // p = readfile(fd);
  // s = find_section_start(p,1);
  // STAC(parse_,TYPE,_array)(s, data->J, ROWS*COLS);
  // printf("+++++++++++++++++++++++++++++++++++input_to_data: ");
  // printf("%d\n",data->J[0]);

  int sample_array[] = {7, 9, 9, 1, 5, 3, 6, 7, 0, 3, 5, 1, 1, 6, 5, 0};
  for(int i=0; i<ROWS*COLS; i++)
    data->J[i] = sample_array[i%16];
}

void data_to_input(int fd, void *vdata) {
  struct bench_args_t *data = (struct bench_args_t *)vdata;

  write_section_header(fd);
  STAC(write_, TYPE, _array)(fd, data->J, ROWS * COLS);

  write_section_header(fd);
}

/* Output format:
   %% Section 1
   Jout[COLS]: output array Jout
*/

void output_to_data(int fd, void *vdata) {
  // struct bench_args_t *data = (struct bench_args_t *)vdata;
  // char *p, *s;
  // // Zero-out everything.
  // memset(vdata,0,sizeof(struct bench_args_t));
  // // Load input string
  // p = readfile(fd);

  // s = find_section_start(p,1);
  // STAC(parse_,TYPEOUT,_array)(s, data->Jout, COLS);
}

void data_to_output(int fd, void *vdata) {
  // struct bench_args_t *data = (struct bench_args_t *)vdata;

  // printf("+++++++++++++++++++++++++++++++++++data_to_output: ");
  // printf("%d\n",data->Jout[0]);

  // write_section_header(fd);
  // STAC(write_,TYPEOUT,_array)(fd, data->Jout, COLS);

  // write_section_header(fd);
}

int check_data( void *vdata, void *vref ) {
  //printf("starting check data\n");
  struct bench_args_t *data = (struct bench_args_t *)vdata;
  //printf("converting data\n");
  struct bench_args_t *ref = (struct bench_args_t *)vref;
  //printf("converting ref\n");
  int has_errors = 0;

  // has_errors |= memcmp(data->Jout, ref->Jout, COLS);
  //printf("finished comparing\n");
  
  // Return true if it's correct.
  return !has_errors;
}

