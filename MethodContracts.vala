


int methodWithPreCondition( int a, int b ) requires( a > 1 ) requires( b < 10 ){
	return a * b;
}

bool method_with_bool( int a ) requires( a > 2 ){
	print( "Dieser Text wird nur ausgegeben, wenn der Parameter a > 2 ist.\n" );
	return true;
}

int methodWithPostCondition( int a, int b ) ensures( result > 10 ){
	return a + b;
}


int main(){
	// critical Log, weil erster Parameter nicht größer als 1 ist
	// Rückgabe ist 0
	int back1 = methodWithPreCondition( 1,1 );
	print( "%d\n", back1 );
	// Warining Log, da output nicht größer 10 | 1+1 < 10
	int back2 = methodWithPostCondition( 1,1 );
	print( "%d\n", back2 );
	bool a = method_with_bool( 1 );
	print( "%s\n", a ? "Ausgeführt": "Nicht ausgeführt" );

	// aktiviert Abbruch bei Critical oder Warning Log.
	Log.set_always_fatal ( LogLevelFlags.LEVEL_CRITICAL | LogLevelFlags.LEVEL_WARNING );
	int back3 = methodWithPostCondition( 1,1 );
	print( "%d\n", back3 );
	// wird nicht ausgegeben, da vorher warning
	stdout.printf( "Alles OK\n" );
	return 0;
}