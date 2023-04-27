using Gee;


int main(){
	int[] feld = {1,2,3,4,5,6,7};
	Gee.List<int> liste = new ArrayList<int>();
	liste.add( 10 );
	liste.add( 11 );
	liste.add( 12 );
	liste.add( 13 );
	liste.add( 14 );
	liste.add( 15 );
	liste.add( 16 );
	foreach ( int value in feld) {
		print( " %d ",value );
	}
	print( "\n" );

	foreach ( int value in liste) {
		print( "%d ",value );
	}
	print( "\n" );
	return 0;
}


