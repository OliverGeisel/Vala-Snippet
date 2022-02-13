using Posix;


errordomain BenchErrors{
	NormalerError,
	SpeziellerErrror
}
int E_A(int i) throws BenchErrors.NormalerError{
	throw new BenchErrors.NormalerError("Fehler in E");
	return 0;
}


int D_A(int i) throws BenchErrors.NormalerError{
	try{
		E_A(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in D\n");
		throw new BenchErrors.NormalerError("Fehler in D");
	}
	return 0;
}

int C_A(int i) throws BenchErrors.NormalerError{
	try{
		D_A(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in C\n");
		throw new BenchErrors.NormalerError("Fehler in C");
	}
	return 0;
}

int B_A(int i) throws BenchErrors.NormalerError{
	try{
		C_A(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in B\n");
		throw new BenchErrors.NormalerError("Fehler in B");
	}
	return 0;
}



int A_A(int i) throws BenchErrors.NormalerError{
	try{
		B_A(i);
	} catch(BenchErrors.NormalerError ne){
		print("Fehler gefangen in A\n");
	}
	return 0;
}





int run_A(){
	int i = 1;
	try{
		A_A(i);
	}catch (BenchErrors e){
		print("Fehler beim Aufruf");
	}
	return 0;
}


int main(){

	int64 start = get_monotonic_time();
	run_A();
	int64 end = get_monotonic_time();
	int64 diff = end -start;
	double seconds = diff/1000000.0;
	print("%.8fs\t%fms\n",seconds, seconds*1000);
	return 0;
}