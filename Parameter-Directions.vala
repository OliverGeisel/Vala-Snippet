using GLib;


int methode_mit_2_rueckgaben( int a, out int quadrat ){
	var temp = quadrat;
	print( "Parameter quadrat zum Anfang = %d\n",quadrat );
	quadrat = a * a;
	return a + quadrat;
}

int methode_mit_ueberschriebener_rueckgabe( int a, ref int quadrat ){
	var temp = quadrat;
	quadrat++;
	return a + temp;
}


void main(){
	int a = 5;
	int b = 2;
	print( "Vor out-funktion\na = %d\nb = %d\n",a,b );
	int c = methode_mit_2_rueckgaben( a, out b );
	print( "Nach out-funktion\nb = %d\nc = %d\n",b,c );

	b = 5;
	print( "Vor ref-funktion\na = %d\nb = %d\n",a,b );
	c = methode_mit_ueberschriebener_rueckgabe( a, ref b );
	print( "Nach ref-funktion\n b= %d\nc = %d\n",b,c );
}