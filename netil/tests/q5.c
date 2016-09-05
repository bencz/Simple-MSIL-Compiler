#include <stdio.h>

#define RAND_MASK ((rNToGo == 1) ? 1 : 0)

int rNToGo;

void zz(int aa)
{
    printf("%d\n", 1 << aa);
}
int main(int argc, char *argv[])
{
    argc ^= (unsigned)RAND_MASK;
    return argc;
}