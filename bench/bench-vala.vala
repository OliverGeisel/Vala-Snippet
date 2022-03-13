using Posix;

errordomain BenchErrors{
	NormalerError,
	SpeziellerError
}

const int MEASURE = 1000000;
const int WARMUP = 10000;


int E_A(int i) throws BenchErrors.NormalerError{
	throw new BenchErrors.NormalerError("Fehler in E");
	return 0;
}


int D_A(int i) throws BenchErrors.NormalerError{
	try{
		E_A(i);
	} catch(BenchErrors.NormalerError ne){
		//print("Fehler gefangen in D\n");
		throw new BenchErrors.NormalerError("Fehler in D");
	}
	return 0;
}

int C_A(int i) throws BenchErrors.NormalerError{
	try{
		D_A(i);
	} catch(BenchErrors.NormalerError ne){
		//print("Fehler gefangen in C\n");
		throw new BenchErrors.NormalerError("Fehler in C");
	}
	return 0;
}

int B_A(int i) throws BenchErrors.NormalerError{
	try{
		C_A(i);
	} catch(BenchErrors.NormalerError ne){
		//print("Fehler gefangen in B\n");
		throw new BenchErrors.NormalerError("Fehler in B");
	}
	return 0;
}



int A_A(int i) throws BenchErrors.NormalerError{
	try{
		B_A(i);
	} catch(BenchErrors.NormalerError ne){
		//print("Fehler gefangen in A\n");
	}
	return 0;
}





int run_A(int64* results){
	int64 start,end;
	int i = 1;
	// warm up
  	int run;
  	for (run = 0; run < WARMUP; ++run) {
		try{
			A_A(i);
		}catch (BenchErrors e){
			print("Fehler beim Aufruf");
		}
	}
	// REAL run
  	for (run = 0; run < MEASURE; ++run) {
    	start = get_monotonic_time();
    	try {
      		A_A(i);
    	}catch (BenchErrors e){
			print("Fehler beim Aufruf");
		}
		end = get_monotonic_time();
    	results[run * 2] = start;
    	results[run * 2 + 1] = end;
  }
	return 0;
}



//--------------------------------------------


int E_F(int i) throws BenchErrors.SpeziellerError{
	throw new BenchErrors.SpeziellerError("Fehler in E");
	return 0;
}


int D_F(int i) throws BenchErrors{
	try{
		E_F(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in D\n");
		throw new BenchErrors.NormalerError("Fehler in D");
	}
	return 0;
}

int C_F(int i) throws BenchErrors{
	try{
		D_F(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in C\n");
		throw new BenchErrors.NormalerError("Fehler in C");
	}
	return 0;
}

int B_F(int i) throws BenchErrors{
	try{
		C_F(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in B\n");
		throw new BenchErrors.NormalerError("Fehler in B");
	}
	return 0;
}



int A_F(int i) throws BenchErrors.NormalerError{
	try{
		B_F(i);
	} catch(BenchErrors.SpeziellerError se){
	//	print("Fehler gefangen in A\n");
	}catch {
		print("Es gab einen anderen Fehler!");
	}

	return 0;
}

int run_F(int64* results){
	int i = 1;
	int64 start,end;
	// warm up
	int run;
  for (run = 0; run < WARMUP; ++run) {
	try{
		A_F(i);
	}catch (BenchErrors e){
	//	print("Fehler beim Aufruf");
	}
	}
	// REAL run

  for (run = 0; run < MEASURE; ++run) {
    start = get_monotonic_time();
    try {
      A_F(i);
    } catch (BenchErrors e) {
      // print("Fehler beim Aufruf");
    }
    end = get_monotonic_time();
    results[run * 2] = start;
    results[run * 2 + 1] = end;
  }
	return 0;

}


void evaluate(int64* results, int64 start,int64 end){
	double sum = 0.0;
  double expectaion_value;
	int64 diff = end -start;
	double temp_diff;
	double seconds = diff/1000000.0;
	for (int i = 0; i < MEASURE; ++i) {
    temp_diff = results[i * 2 + 1] - results[i * 2];
    sum += temp_diff/1000000.0;
  }
  double variance;
  expectaion_value = sum / MEASURE;
  double temp = 0;
  for (int i = 0; i < MEASURE; ++i) {
    temp_diff = results[i * 2 + 1] - results[i * 2];
	temp_diff/=1000000.0;
    temp += Math.pow(temp_diff - expectaion_value, 2);
  }
  variance = temp / MEASURE;
  double standard_deviation = Math.pow(variance,0.5);
	print("Gesamte Zeit:\t%.8fs\t%fms\n",seconds, seconds*1000);
  	print("Durchschnittliche Zeit: %fs\t%fms\n",expectaion_value,expectaion_value*1000);
	print("Varianz: %f\n",variance);
	print("Standardabweichung: %f\n",standard_deviation);
}

int main(){
	int64* results = (int64*) Posix.malloc(sizeof(int64)*2*MEASURE);
	int64 start = get_monotonic_time();
	run_A(results);
	int64 end = get_monotonic_time();
	print("Alle Funktionen:\n");
	evaluate(results,start,end);


	start = get_monotonic_time();
	run_F(results);
	end = get_monotonic_time();
	print("\nNur erste Funktion:\n");
	evaluate(results,start,end);
	Posix.free(results);
	return 0;
}