#include <stdio.h>

void conv2d_im2col(
    const double A[3][3],
    const double K[2][2],
    double Y[2][2]
) {
    // Dimensions
    const int OM = 3 - 2 + 1;  // 2
    const int ON = 3 - 2 + 1;  // 2
    const int R  = 2 * 2;      // 4
    const int C  = OM * ON;    // 4

    // 1) Build the 4×4 patch matrix S[row][col]
    double S[4][4];
    for (int j = 0; j < ON; ++j) {
        for (int i = 0; i < OM; ++i) {
            int col = j * OM + i;
            for (int v = 0; v < 2; ++v) {
                for (int u = 0; u < 2; ++u) {
                    int row = v * 2 + u;
                    // A[i+u][j+v]
                    S[row][col] = A[i + u][j + v];
                }
            }
        }
    }

    // 2) Flatten the 2×2 kernel into a 4×1 vector k
    double k[4];
    for (int v = 0; v < 2; ++v) {
        for (int u = 0; u < 2; ++u) {
            int idx = v * 2 + u;
            k[idx] = K[u][v];
        }
    }

    // 3) GEMM: compute ycol[col] = sum_row S[row][col] * k[row]
    double ycol[4];
    for (int col = 0; col < C; ++col) {
        double acc = 0.0;
        for (int row = 0; row < R; ++row) {
            acc += S[row][col] * k[row];
        }
        ycol[col] = acc;
    }

    // 4) Scatter back into Y[i][j]
    for (int j = 0; j < ON; ++j) {
        for (int i = 0; i < OM; ++i) {
            int idx = j * OM + i;
            Y[i][j] = ycol[idx];
        }
    }
}

int main(void) {
    // Example: A = [1 2 3; 4 5 6; 7 8 9], K = [1 0; 0 -1]
    double A[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };
    double K[2][2] = {
        {1,  0},
        {0, -1}
    };
    double Y[2][2];

    conv2d_im2col(A, K, Y);

    // Print result
    printf("Y =\n");
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            printf("%6.1f ", Y[i][j]);
        }
        printf("\n");
    }
    return 0;
}
