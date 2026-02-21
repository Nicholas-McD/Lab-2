#include <stdio.h>

extern long hammingDist();

int main() {
    long result = hammingDist();

    printf("Hamming Distance: %ld\n", result);

    return 0;
};