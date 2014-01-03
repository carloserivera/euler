#include <stdio.h>
#include <stdlib.h>

/* Find the sum of all the multiples of 3 or 5 below 1000. */
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("You must supply an upper bound\n");
        return 1;
    }

    int max = atoi(argv[1]);
    int sum = 0, i;

    for (i = 0; i < max; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }

    printf("Sum of all the multiples of 3 or 5 below %d: %d\n", max, sum);
}
