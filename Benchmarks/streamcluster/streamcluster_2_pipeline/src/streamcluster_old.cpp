#include "streamcluster.h"
#define HALF_BUF ((BUF_SIZE) / 2)
#define BUF_SIZE ((OFFSET) << 9)
#define UNROLL_FACTOR 16
void setup(float* target, float* local_target, int* center_table, int* local_center_table)
{
#pragma HLS INLINE OFF
    memcpy(local_target, target, DIM * sizeof(float));
    memcpy(local_center_table, center_table, BATCH_SIZE * sizeof(int));
}

void stage_0(int i, float* coord, float* local_coord, float* weight, float* local_weight, float* cost, float* local_cost, int* assign, int* local_assign)
{
#pragma HLS INLINE OFF

    memcpy(local_weight, weight + i, BUF_SIZE * sizeof(float));
    memcpy(local_assign, assign + i, BUF_SIZE * sizeof(int));
    memcpy(local_cost, cost + i, BUF_SIZE * sizeof(float));
    memcpy(local_coord, coord + i * DIM, BUF_SIZE * DIM * sizeof(float));
}

void stage_1(float* local_coord, float* local_weight, float* local_target, float* x_cost)
{
#pragma HLS INLINE OFF

    int i, j, k;
    for( i = 0; i < BUF_SIZE; i++ ) {
    #pragma HLS pipeline
        float sum = 0;
        for( j = 0; j < 16; j++ ) {
        #pragma HLS pipeline
            float sum_coord[16];
            #pragma HLS array_partition variable=sum_coord complete

            for(int m = 0; m < 16 * sizeof(float); m++)
                sum_coord[m] = 0;
            // memset(sum_coord, 0, 16 * sizeof(float));
            
            for(k = 0; k <16; k++){
            #pragma HLS unroll
            #pragma HLS dependence variable=local_coord inter false  
            #pragma HLS dependence variable=local_target inter false 
            #pragma HLS dependence variable=sum_coord inter false                
                float a = local_coord[i * DIM + j * 16 + k] - local_target[j * 16 + k];
                sum_coord[k] += a * a;
            }
            
            
            for(k = 0; k < 8; k++){
            #pragma HLS unroll
            #pragma HLS dependence variable=sum_coord inter false 
                sum_coord[k] += sum_coord[k + 8];   


            }
            for(k = 0; k < 4; k++){
            #pragma HLS unroll
            #pragma HLS dependence variable=sum_coord inter false 
                sum_coord[k] += sum_coord[k + 4];         

            }
            for(k = 0; k < 4; k++){
            #pragma HLS pipeline
                sum += sum_coord[k];
            }
            
        }
        x_cost[i] = sum * local_weight[i];
    }
    
}


void stage_2(int num, int ii, float* x_cost, float* local_cost, char* local_switch_membership, float* local_cost_of_opening_x, int* local_assign, int* local_center_table, float* local_work_mem)
{
#pragma HLS INLINE OFF

    int bound = (num - ii) > BUF_SIZE ? BUF_SIZE : num - ii;
    int i;
    for (i = 0; i < bound; i++) {
    #pragma HLS pipeline
        int assign_index = local_assign[i];
        int local_center_index = local_center_table[assign_index];
        float current_cost = x_cost[i] - local_cost[i];

        if (current_cost < 0) {

            // point i would save cost just by switching to x
            // (note that i cannot be a median, 
            // or else dist(p[i], p[x]) would be 0)
      
            local_switch_membership[ii + i] = 1;
            local_cost_of_opening_x[0] += current_cost;

        } 
        else {

            // cost of assigning i to x is at least current assignment cost of i

            // consider the savings that i's **current** median would realize
            // if we reassigned that median and all its members to x;
            // note we've already accounted for the fact that the median
            // would save z by closing; now we have to subtract from the savings
            // the extra cost of reassigning that median and its members 
            local_work_mem[local_center_index] -= current_cost;
        }
    }
}

void result(float* work_mem, float* local_work_mem, int numcenter, char* switch_membership, char* local_switch_membership, float* cost_of_opening_x, float* local_cost_of_opening_x)
{
#pragma HLS INLINE OFF
    memcpy(work_mem, local_work_mem, numcenter * sizeof(float));
    memcpy(switch_membership, local_switch_membership, BATCH_SIZE * sizeof(char));
    cost_of_opening_x[0] = local_cost_of_opening_x[0];
}
    

extern "C" {
void workload(    
    float* coord,                      
    float* weight,                      
    float* cost, 
    float* target,
    int* assign,
    int* center_table,
    char* switch_membership,
    float* work_mem,
    int num,
    float* cost_of_opening_x,
    int numcenter            
)
{
    #pragma HLS INTERFACE m_axi port=coord offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=weight offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=cost offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=target offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=assign offset=slave bundle=gmemi
    #pragma HLS INTERFACE m_axi port=center_table offset=slave bundle=gmemi
    #pragma HLS INTERFACE m_axi port=switch_membership offset=slave bundle=gmemc
    #pragma HLS INTERFACE m_axi port=work_mem offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=cost_of_opening_x offset=slave bundle=gmemf
    #pragma HLS INTERFACE s_axilite port=coord bundle=control
    #pragma HLS INTERFACE s_axilite port=weight bundle=control
    #pragma HLS INTERFACE s_axilite port=cost bundle=control
    #pragma HLS INTERFACE s_axilite port=target bundle=control
    #pragma HLS INTERFACE s_axilite port=assign bundle=control
    #pragma HLS INTERFACE s_axilite port=center_table bundle=control
    #pragma HLS INTERFACE s_axilite port=switch_membership bundle=control
    #pragma HLS INTERFACE s_axilite port=work_mem bundle=control
    #pragma HLS INTERFACE s_axilite port=num bundle=control
    #pragma HLS INTERFACE s_axilite port=cost_of_opening_x bundle=control
    #pragma HLS INTERFACE s_axilite port=numcenter bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    

    float local_target[DIM];
    #pragma HLS array_partition variable=local_target cyclic factor=16

    int local_center_table[BATCH_SIZE];
    float local_cost_of_opening_x[1] = {0};
    float local_work_mem[MAX_WORK_MEM_SIZE];
    memset(local_work_mem, 0, MAX_WORK_MEM_SIZE * sizeof(float));
    char local_switch_membership[BATCH_SIZE];
    memset(local_switch_membership, 0, BATCH_SIZE * sizeof(char));

    setup(target, local_target, center_table, local_center_table);


    int i;
    for(i = 0; i < BATCH_SIZE; i += BUF_SIZE) {
        int local_assign[BUF_SIZE];
        float local_cost[BUF_SIZE];
        float local_weight[BUF_SIZE];
        float local_coord[BUF_SIZE * DIM];
        #pragma HLS array_partition variable=local_coord cyclic factor=16

        float x_cost[BUF_SIZE];

        stage_0(i, coord, local_coord, weight, local_weight, cost, local_cost, assign, local_assign);

        stage_1(local_coord, local_weight, local_target, x_cost);

        stage_2(num, i, x_cost, local_cost, local_switch_membership, local_cost_of_opening_x, local_assign, local_center_table, local_work_mem);

    }

    result(work_mem, local_work_mem, numcenter, switch_membership, local_switch_membership, cost_of_opening_x, local_cost_of_opening_x);
    return;
}
}