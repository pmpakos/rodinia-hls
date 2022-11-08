#include <math.h>
#include <string.h>
#define ETA 0.3       //eta value
#define TILE_SIZE 512
#define INPUT_SIZE 65536
#define INPUT_SIZE_P1 65537

extern "C" {
void workload(float l1[INPUT_SIZE_P1], float l2[17], float conn[INPUT_SIZE_P1 * 17]) {
#pragma HLS INTERFACE m_axi port=l1 offset=slave bundle=l11
#pragma HLS INTERFACE m_axi port=l2 offset=slave bundle=l21
#pragma HLS INTERFACE m_axi port=conn offset=slave bundle=conn1


#pragma HLS INTERFACE s_axilite port=l1 bundle=control
#pragma HLS INTERFACE s_axilite port=l2 bundle=control
#pragma HLS INTERFACE s_axilite port=conn bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    float sum;
    int j, k, kk;
    float l1_buf[INPUT_SIZE_P1];
    float conn_buf[TILE_SIZE*17];
    float l2_buf[17];

    memcpy(l1_buf, l1, sizeof(float) * INPUT_SIZE_P1);

    /*** Set up thresholding unit ***/
    l1_buf[0] = 1.0;

    /*** For each unit in second layer ***/
    for (j = 1; j <= 16; j++) {
        /*** Compute weighted sum of its inputs ***/
        sum = 0.0;

        for (kk = 0; kk < INPUT_SIZE + TILE_SIZE; kk += TILE_SIZE) {
            int size = (kk == INPUT_SIZE)?1:TILE_SIZE;
            memcpy(conn_buf, conn+kk*17, sizeof(float) * size * 17);
            for (k = 0; k < TILE_SIZE; k++) {
                if (k + kk < INPUT_SIZE_P1) {
                    float product = conn_buf[k * 17 + j] * l1_buf[k + kk];
                    sum += product;
                }
            }
        }
        
        l2_buf[j] = (1.0 / (1.0 + exp(-sum)));
    }
    memcpy(l2, l2_buf, sizeof(float) * 17);
}
}
