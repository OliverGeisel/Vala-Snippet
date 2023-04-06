
using GLib;

int my_function(int param1, int param2){

	return param1 * param2 % 42;
}



int main(){
	// Variable a vom Typ int
	int a = 5;
	// Variable vom Typ double, aber durch Zuweisung des Literals. Erfordert var.
	var b = 3.5;
	int X = 3;
	int Y = 5;
	int Z = X > Y ? X : Y;
	int[,] my_array = new int[10,10];
	for (int i = 0; i < 10; ++i) {
		for (int j = 0; j < 10; ++j)
			my_array[i,j] = my_function(i,j);
	}
	// der folgende code ist äquivalent zum Code darüber
	int count = 0;
	int i,j;
	//var array2 = my_array[1];
	foreach(int x in my_array) {
		i = count / 10;
		j = count % 10;
		my_array[i,j] = my_function(i,j);
		++count;
	}
	// Einfaches Objekt erzeugen
	var t = new Test();
	int n = t.bar(5);
	print("n ist: %d\n",n);
	return 0;
}

class Test {


	private int foo(int i){
		return i;
	}

	public int bar(int i){
		return --i;

	}


}