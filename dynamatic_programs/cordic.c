#include <stdio.h>
#include <stdint.h>
#include <math.h>

#define N_FRAC 16                     // number of fractional bits
typedef int64_t fixed_t;              // underlying integer type
#define ONE   (1 << N_FRAC)          // fixed-point +1.0
#define TO_FIXED(x)  ((fixed_t)lround((x) * (double)(1 << N_FRAC)))
#define TO_FLOAT(x)  ((double)(x) / (double)(1 << N_FRAC))

// Precomputed arctangent table in fixed-point
static constexpr fixed_t angles[16] = {
    TO_FIXED(atan(1.0)),
    TO_FIXED(atan(0.5)),
    TO_FIXED(atan(0.25)),
    TO_FIXED(atan(0.125)),
    TO_FIXED(atan(0.0625)),
    TO_FIXED(atan(0.03125)),
    TO_FIXED(atan(0.015625)),
    TO_FIXED(atan(0.0078125)),
    TO_FIXED(atan(0.00390625)),
    TO_FIXED(atan(0.001953125)),
    TO_FIXED(atan(0.0009765625)),
    TO_FIXED(atan(0.00048828125)),
    TO_FIXED(atan(0.000244140625)),
    TO_FIXED(atan(0.0001220703125)),
    TO_FIXED(atan(6.103515625e-5)),
    TO_FIXED(atan(3.0517578125e-5))
};

fixed_t cordic_int(fixed_t theta, fixed_t K) {
    fixed_t x = K, y = 0, z = theta;
    for (int i = 0; i < 16; ++i) {
        // rotation direction: +1 or -1 (integer)
        int di = (z >= 0) ? +1 : -1;

        // shift by i keeps you in Q16
        fixed_t x_shift = y >> i;
        fixed_t y_shift = x >> i;

        x = x - di * x_shift;
        y = y + di * y_shift;
        z = z - di * angles[i];
    }
    return x;
}


// int main(void) {
//     // Scaling constant K ≈ 0.607252935 (inverse CORDIC gain)
//     const double Kd = 0.6072529350088812561694;
//     fixed_t K = TO_FIXED(Kd);

//     // Example: compute cos(45°)
//     double theta_d = M_PI / 4;
//     fixed_t theta = TO_FIXED(theta_d);

//     fixed_t cos_fp = cordic_int(theta, K);
//     double cos_f = TO_FLOAT(cos_fp);

//     printf("cos(%.6f) ≈ %.6f\n", theta_d, cos_f);
//     return 0;
// }

