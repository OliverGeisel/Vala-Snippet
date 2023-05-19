using Posix;

errordomain BenchErrors {
	NormalerError,
	SpeziellerError
}

const long MEASURE = 10000000;
const int WARMUP = 10000;


int E_All( int i ) throws BenchErrors.NormalerError {
	throw new BenchErrors.NormalerError( "Fehler in E" );
}

int D_All( int i ) throws BenchErrors.NormalerError {
	try{
		E_All( i );
	} catch(BenchErrors.NormalerError ne) {
		//print("Fehler gefangen in D\n");
		throw new BenchErrors.NormalerError( "Fehler in D" );
	}
	return 0;
}

int C_All( int i ) throws BenchErrors.NormalerError {
	try{
		D_All( i );
	} catch(BenchErrors.NormalerError ne) {
		//print("Fehler gefangen in C\n");
		throw new BenchErrors.NormalerError( "Fehler in C" );
	}
	return 0;
}

int B_All( int i ) throws BenchErrors.NormalerError {
	try{
		C_All( i );
	} catch(BenchErrors.NormalerError ne) {
		//print("Fehler gefangen in B\n");
		throw new BenchErrors.NormalerError( "Fehler in B" );
	}
	return 0;
}

int A_All( int i ) throws BenchErrors.NormalerError {
	try{
		B_All( i );
	} catch(BenchErrors.NormalerError ne) {
		//print("Fehler gefangen in A\n");
	}
	return 0;
}

int run_All( int64 *results ){
	int64 start,end;
	int i = 1;
	// warm up
	int run;
	for (run = 0; run < WARMUP; ++run) {
		try{
			A_All( i );
		}catch (BenchErrors e) {
			print( "Fehler beim Aufruf" );
		}
	}
	// REAL run
	for (run = 0; run < MEASURE; ++run) {
		start = get_monotonic_time();
		try {
			A_All( i );
		}catch (BenchErrors e) {
			print( "Fehler beim Aufruf" );
		}
		end = get_monotonic_time();
		results[run * 2] = start;
		results[run * 2 + 1] = end;
	}
	return 0;
}


//--------------------------------------------------------------


int E_First( int i ) throws BenchErrors.SpeziellerError {
	throw new BenchErrors.SpeziellerError( "Fehler in E" );
}

int D_First( int i ) throws BenchErrors {
	try{
		E_First( i );
	} catch(BenchErrors.NormalerError ne) {
		print( "Fehler gefangen in D\n" );
		throw new BenchErrors.NormalerError( "Fehler in D" );
	}
	return 0;
}

int C_First( int i ) throws BenchErrors {
	try{
		D_First( i );
	} catch(BenchErrors.NormalerError ne) {
		print( "Fehler gefangen in C\n" );
		throw new BenchErrors.NormalerError( "Fehler in C" );
	}
	return 0;
}

int B_First( int i ) throws BenchErrors {
	try{
		C_First( i );
	} catch(BenchErrors.NormalerError ne) {
		print( "Fehler gefangen in B\n" );
		throw new BenchErrors.NormalerError( "Fehler in B" );
	}
	return 0;
}

int A_First( int i ) {
	try{
		B_First( i );
	} catch(BenchErrors.SpeziellerError se) {
		//	print("Fehler gefangen in A\n");
	}catch (BenchErrors be) {
		print( "Es gab einen anderen Fehler!\n" );
	}
	return 0;
}

int run_First( int64 *results ){
	int i = 1;
	int64 start,end;
	// warm up
	int run;
	for (run = 0; run < WARMUP; ++run) {
		try{
			A_First( i );
		}catch (BenchErrors e) {
			//	print("Fehler beim Aufruf");
		}
	}
	// REAL run

	for (run = 0; run < MEASURE; ++run) {
		start = get_monotonic_time();
		try {
			A_First( i );
		} catch (BenchErrors e) {
			// print("Fehler beim Aufruf");
		}
		end = get_monotonic_time();
		results[run * 2] = start;
		results[run * 2 + 1] = end;
	}
	return 0;
}


void evaluate( int64 *results, int64 start, int64 end ){
	double sum = 0.0;
	double expectaion_value;
	int64 diff = end - start;
	double temp_diff;
	double seconds = diff / 1000000.0;
	for (int i = 0; i < MEASURE; ++i) {
		temp_diff = results[i * 2 + 1] - results[i * 2];
		sum += temp_diff / 1000000.0;
	}
	double variance;
	expectaion_value = sum / MEASURE;
	double temp = 0;
	for (int i = 0; i < MEASURE; ++i) {
		temp_diff = results[i * 2 + 1] - results[i * 2];
		temp_diff /= 1000000.0;
		temp += Math.pow( temp_diff - expectaion_value, 2 );
	}
	variance = temp / MEASURE;
	double standard_deviation = Math.sqrt( variance );
	print( "Gesamte Zeit:\t\t%.8f s\t%f ms\n", seconds, seconds * 1000 );
	print( "Durchschnittliche Zeit:\t%f s\t%f ms\t%f mikrosec.\n", expectaion_value, expectaion_value * 1000,expectaion_value * 1000000 );
	print( "Varianz:\t\t%f s\t%f ms\t%f mikrosec.\n", variance, variance * 1000, variance * 1000000 );
	print( "Standardabweichung:\t%.6f s\t%f ms\n", standard_deviation,
	       standard_deviation * 1000 );
}

int main(){
	int64 *results = (int64 *) Posix.malloc( sizeof( int64 ) * 2 * MEASURE );
	int64 start = get_monotonic_time();

	run_All( results );
	int64 end = get_monotonic_time();
	print( "Alle Funktionen:\n" );
	evaluate( results,start,end );

	start = get_monotonic_time();
	run_First( results );
	end = get_monotonic_time();
	print( "\nNur erste Funktion:\n" );
	evaluate( results,start,end );
	Posix.free( results );
	return 0;
}