using GLib;

void main(){
	string s = "Hallo";
	string? nullString = null;
	string normalString;
	int? j = null;
	int[]? b = null;

	// mit --enable-experimetal-non-null nicht möglich
	int[] a = null; // Fehler
	normalString = null; // Fehler

	// Nullable Typen sind aber erlaubt
	int? nullableInt = null;
	int new_i = j ?? 1;
	print("%d\n", new_i);
}