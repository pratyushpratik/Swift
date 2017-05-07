#include <stdio.h>

int main (int argc, char const *argv[])
{
    int x = 10;
    int a[5];
    for (int i = 0; i < 6; i++) {
        a[i] = i;
    }
    printf("%d\n", x);
    return 0;
}
