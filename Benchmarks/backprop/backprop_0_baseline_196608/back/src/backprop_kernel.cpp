#include <math.h>
#include <string.h>
#define ETA 0.3       //eta value
#define MOMENTUM 0.3  //momentum value
#define INPUT_SIZE 196608
#define INPUT_SIZE_P1 196609

extern "C" {
void workload(float delta[17], float ly[INPUT_SIZE_P1], float w[INPUT_SIZE_P1 * 17], float oldw[INPUT_SIZE_P1 * 17]) {
#pragma HLS INTERFACE m_axi port=delta offset=slave bundle=delta1
#pragma HLS INTERFACE m_axi port=ly offset=slave bundle=ly1
#pragma HLS INTERFACE m_axi port=w offset=slave bundle=w1
#pragma HLS INTERFACE m_axi port=oldw offset=slave bundle=oldw1

#pragma HLS INTERFACE s_axilite port=delta bundle=control
#pragma HLS INTERFACE s_axilite port=ly bundle=control
#pragma HLS INTERFACE s_axilite port=w bundle=control
#pragma HLS INTERFACE s_axilite port=oldw bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    float new_dw;
    int k, kk, j;

    ly[0] = 1.0;

    for (j = 1; j <= 16; j++) {
        for (k = 0; k <= INPUT_SIZE; k++) {
            new_dw = ((ETA * delta[j] * ly[k]) + (MOMENTUM * oldw[k * 17 + j]));
            w[k * 17 + j] += new_dw;
            oldw[k * 17 + j] = new_dw;
        }
    }
}

}
