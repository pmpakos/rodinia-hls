#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>
#include <string>
#include "backprop.h"
#include <CL/opencl.h>
#include "my_timer.h"

#undef LOAD_INPUT
#undef CHECK_OUTPUT
int INPUT_SIZE = 4194304;

extern void setup(cl_context& context, cl_command_queue& commands, cl_program& program, cl_kernel& kernel);

void bpnn_layerforward_FPGA(float *input, float *hidden, float *conn, cl_context& context, cl_command_queue& commands, cl_program& program, cl_kernel& kernel) {
  printf("Backprop (forward) INPUT_SIZE=%d\n", INPUT_SIZE);

  cl_mem d_input;
  cl_mem d_hidden;
  cl_mem d_conn;

  cl_int err = 0;

  // 0th: initialize the timer at the beginning of the program
  timespec timer = tic();

  // Create device buffers
  d_input = clCreateBuffer(context, CL_MEM_READ_WRITE, (INPUT_SIZE+1) * sizeof(float), NULL, &err );
  if(err != CL_SUCCESS) { printf("ERROR: clCreateBuffer d_input (size:(INPUT_SIZE+1)) => %d\n", err);}
  d_hidden = clCreateBuffer(context, CL_MEM_READ_WRITE, 17 * sizeof(float), NULL, &err );
  if(err != CL_SUCCESS) { printf("ERROR: clCreateBuffer d_hidden (size:17) => %d\n", err);}
  d_conn = clCreateBuffer(context, CL_MEM_READ_WRITE, (INPUT_SIZE+1) * 17 * sizeof(float), NULL, &err );
  if(err != CL_SUCCESS) { printf("ERROR: clCreateBuffer d_conn (size:(INPUT_SIZE+1)*17) => %d\n", err);}

  // 1st: time of buffer allocation
  toc(&timer, "buffer allocation");

  // Write our data set into device buffers
  //
  err = clEnqueueWriteBuffer(commands, d_input, 1, 0, (INPUT_SIZE+1) * sizeof(float), input, 0, 0, 0);
  if(err != CL_SUCCESS) { printf("ERROR: clEnqueueWriteBuffer d_input (size:(INPUT_SIZE+1)) => %d\n", err);}
  err = clEnqueueWriteBuffer(commands, d_conn, 1, 0, (INPUT_SIZE+1) * 16 * sizeof(float), conn, 0, 0, 0);
  if(err != CL_SUCCESS) { printf("ERROR: clEnqueueWriteBuffer d_conn (size:(INPUT_SIZE+1)*16) => %d\n", err);}

  // 2nd: time of pageable-pinned memory copy
  toc(&timer, "memory copy");

  // Set the arguments to our compute kernel
  err = clSetKernelArg(kernel, 0, sizeof(void *), (void*) &d_input);
  err |= clSetKernelArg(kernel, 1, sizeof(void *), (void*) &d_hidden);
  err |= clSetKernelArg(kernel, 2, sizeof(void *), (void*) &d_conn);

  if (err != CL_SUCCESS)
  {
    printf("Error: Failed to set kernel arguments! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  // 3rd: time of setting arguments
  toc(&timer, "set arguments");

  // Execute the kernel over the entire range of our 1d input data set
  // using the maximum number of work group items for this device
  //

  err = clEnqueueTask(commands, kernel, 0, NULL, NULL);

  if (err)
  {
    printf("Error: Failed to execute kernel! %d\n", err);
    printf("Test failed\n");
    exit(1);
  }

  clFinish(commands);

  // 4th: time of kernel execution
  toc(&timer, "kernel execution");

  err = clEnqueueReadBuffer(commands, d_hidden, 1, 0, 17 * sizeof(float), hidden, 0, 0, 0);
  if(err != CL_SUCCESS) { printf("ERROR: Memcopy Out\n"); }

  // 5th: time of data retrieving (PCIe + memcpy)
  toc(&timer, "data retrieving");

  clReleaseMemObject(d_input);
  clReleaseMemObject(d_hidden);
  clReleaseMemObject(d_conn);
}

void run_benchmark(void *vargs, cl_context& context, cl_command_queue& commands, cl_program& program, cl_kernel& kernel ) {
  setup(context, commands, program, kernel);
}

void input_to_data(int fd, void *vdata) {

}

void data_to_input(int fd, void *vdata) {

}

void output_to_data(int fd, void *vdata) {

}

void data_to_output(int fd, void *vdata) {

}

int check_data( void *vdata, void *vref ) {
  // Return true if it's correct.
  return 1;
}