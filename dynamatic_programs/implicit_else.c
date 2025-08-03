#include <stdint.h>
#include <stdio.h>

long implicit_else(long arg0, long arg1) {
    long out = 0;

    if (arg0 < arg1) {
        out = arg0 + arg1;
    } else if (arg0 > arg1) {
        out = arg0 - arg1;
    }

    return out;
}

int main(void) {
    long out = implicit_else(5, 2);
    printf("%ld",out);

    return 0;
}
