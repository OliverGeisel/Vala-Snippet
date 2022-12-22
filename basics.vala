using GLib;

int my_function(int param1, int param2){

    return param1 * param2 % 42;
}



int main(){
    int a = 5;
    var b = 3.5;
    int X = 3;
    int Y = 5;
    int Z= X> Y ? X : Y;
    int[,] my_array = new int[10,10];
    for (int i = 0; i < 10; ++i){
        for (int j = 0; j < 10; ++j)
            my_array[i,j]=my_function(i,j);
    }
    // der folgende code ist äquivalent zum Code darüber
    int i,j;
    i = 0;
    foreach(int[] x in my_array[i]){

        j = 0;
        foreach (int y in x){
            y = my_function(i,j);
            j++;
        }
        i++;
    }

	//
	var x;
	x=1;

    return 0;
}

class Test{

    private int foo(int i){
        return i;
    }


}