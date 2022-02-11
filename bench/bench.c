#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int A_A(int i);
int B_A(int i);
int C_A(int i);
int D_A(int i);
int E_A(int i);

int A_F(int i);
int B_F(int i);
int C_F(int i);
int D_F(int i);
int E_F(int i);

int A_C(int i);
int B_C(int i);
int C_C(int i);
int D_C(int i);
int E_C(int i);

int A_D(int i);
int B_D(int i);
int C_D(int i);
int D_D(int i);
int E_D(int i);

int A_A(int i)
{
    if (B_A(i) < 0)
        return -1;
    return 0;
}

int B_A(int i)
{
    if (C_A(i) < 0)
        return -1;
    return 0;
}

int C_A(int i)
{
    if (D_A(i) < 0)
        return -1;
    return 0;
}

int D_A(int i)
{
    if (E_A(i) < 0)
        return -1;
    return 0;
}

int E_A(int i)
{
    return -1;
}

int run_A()
{
    int i = 1;
    if (A_A(i) < 0)
    {
        printf("There was an error!\n");
    }
    return 0;
}

static inline double gtod()
{
    struct timeval act_time;
    gettimeofday(&act_time, NULL);

    return (double)act_time.tv_sec + (double)act_time.tv_usec / 1000000.0;
}

int main(int argc, char **args)
{
    double start = gtod();
    run_A();
    double end = gtod();
    double diff = end - start;
    printf("%fs\t%fms\n",diff, diff*1000);
}