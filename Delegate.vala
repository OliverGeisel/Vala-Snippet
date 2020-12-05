
static delegate int MethodWithOneInt(int i);

int square(int i){
    return i*i;
}

int plusTen(int i){
    return 10 + i;
}

void callThreeTimesAndPrintSum(MethodWithOneInt m, int a){
    int sum =0;
    sum += m(a);
    sum += m(a);
    sum += m(a);
    stdout.printf("%d\n",sum);
} 

int main(){

    MethodWithOneInt func1 = square;
    MethodWithOneInt func2 = plusTen; 

    callThreeTimesAndPrintSum(func1,3); // 3*3^2 =27
    callThreeTimesAndPrintSum(func1,5); // 3*5^2 = 75
    callThreeTimesAndPrintSum(func2, 1); // 3*11  = 33

    return 0;
}