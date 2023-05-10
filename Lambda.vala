
static delegate int MethodWithTwoInt( int a, int b );


void print_result(MethodWithTwoInt func, int a , int b ){
        stdout.printf("%d\n", func(a,b) );
}


int main(string[] args){
    print_result((first, second) => {return first * second + 1;} , 5 ,10); // 5*10+1 =51
    return 0;
}