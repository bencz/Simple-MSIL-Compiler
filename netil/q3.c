/*#include <Stdio.h>*/
void printf(void*,...);
void strcpy(char *, char*);
void bb(int xx[3])
{
    xx[0] = 11;
    xx[1] = 22;
    xx[2] = 33;
}
void cc(char *aa)
{
    strcpy(aa, "hi dave");
}
void nn1()
{
    int aa[3];
    char zz[21];
    bb(aa);
    cc(zz);
    printf("%s %d %d %d\n", zz, aa[0], aa[1], aa[2]);
}
main()
{
    nn1();
    return 0;
}