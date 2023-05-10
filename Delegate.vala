
static delegate int MethodWithOneInt( int i );

int square( int i ){
	return i * i;
}

int plus_ten(int i){
    return 10 + i;
}

void call_three_times_and_print_sum(MethodWithOneInt m, int a){
    int sum = 0;
    sum += m(a);
    sum += m(a);
    sum += m(a);
    stdout.printf("%d\n",sum);
}

int main(){

    MethodWithOneInt func1 = square;
    MethodWithOneInt func2 = plus_ten;

    call_three_times_and_print_sum(func1,3); // 3*3^2 = 27
    call_three_times_and_print_sum(func1,5); // 3*5^2 = 75
    call_three_times_and_print_sum(func2, 1); // 3*11  = 33

	return 0;
}