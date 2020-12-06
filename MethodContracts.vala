


int methodWithPreCondition(int a, int b)requires(a>1) requires(b<10){
    return a*b;
}

int methodWithPostCondition(int a, int b) ensures(result > 10){
    return a+b;
}


int main(){
    Log.set_always_fatal (LogLevelFlags.LEVEL_CRITICAL |LogLevelFlags.LEVEL_WARNING);
    
    methodWithPreCondition(1,1);
  
    methodWithPostCondition(1,1);
    stdout.printf("Alles OK\n");
    return 0;
}