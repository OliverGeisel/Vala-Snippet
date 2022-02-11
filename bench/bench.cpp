#include <iostream>
#include <chrono>

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
    try
    {
        B_A(i);
    }
    catch (const std::exception &e)
    {
        throw e;
    }
    return 0;
}

int B_A(int i)
{
    try
    {
        C_A(i);
    }
    catch (const std::exception &e)
    {
        throw e;
    }
    return 0;
}

int C_A(int i)
{
    try
    {
        D_A(i);
    }
    catch (const std::exception &e)
    {
        throw e;
    }
    return 0;
}

int D_A(int i)
{
    try
    {
        E_A(i);
    }
    catch (const std::exception &e)
    {
        throw e;
    }
    return 0;
}

int E_A(int i)
{
    throw std::exception();
    return 0;
}

int run_A()
{
    int i = 1;
    try
    {
        A_A(i);
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
    }
    return 0;
}

int main(int argc, char **args)
{
    auto start = std::chrono::high_resolution_clock::now();
    run_A();
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout<<"Hallo"<<std::endl;
    std::cout << diff.count() << "s\t " <<diff.count()*1000<< "ms"<< std::endl;
}