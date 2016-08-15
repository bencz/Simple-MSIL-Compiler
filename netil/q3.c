//#include <Stdio.h>
void printf(void*,...);
struct aa{
    int a,b,c;
} bb = {1,2,3};

struct aa nn1(int pp)
{
    struct aa cc = bb;
    cc.b = pp;
    return cc;
}
main()
{
    struct aa ss = nn1(55);
    printf("%d %d %d\n", ss.a, ss.b, ss.c);
    return 0;
}