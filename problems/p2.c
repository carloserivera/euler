#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc <= 1) {
        printf("You must supply an upper bound.\n");
        return 1;
    }
    int max = atoi(argv[1]);
    int i2, i1, temp, sum = 0;
    for (i1=0, i2=1; i2 <= max; temp = i2+i1, i1 = i2, i2 = temp) {
        if (i2 % 2 == 0) {
            sum += i2;
        }
    }

    printf("Sum of the even-valued terms that are <= %d: %d.\n", max, sum);
}
