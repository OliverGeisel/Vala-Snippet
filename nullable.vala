using GLib;

void main(){
	string s = "Hallo";
	string? null_string = null;
	string normal_string;
	int? j = null;
	int[]? b = null;


	// mit --enable-experimetal-non-null nicht möglich
	int i;
	int[] a = null;
	normal_string = null;
	int new_i = j ?? 1;
	print("%d\n", new_i);
}