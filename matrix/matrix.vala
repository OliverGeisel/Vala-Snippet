using GLib; // default imported
using Posix;



int dimension = 0;
const int step = 32;
const int MAX_DIMENSION = 2048*4; 

void step_dimension(){
	if (dimension < 256) { dimension += step; }
	else if (dimension < 512) { dimension += step * 2; }
	else if (dimension < 1024) { dimension += step * 4; }
	else if (dimension < 2048) { dimension += step * 8; }
	else if (dimension < 4096) { dimension += step * 16; }
	else { dimension += step * 32; }
}

double gtod() {
	timeval act_time = timeval();
	act_time.get_time_of_day();

    return (double) act_time.tv_sec + (double) act_time.tv_usec / 1000000.0;
}

void multiply_matrix(double[,] matrix_a, double[,] matrix_b, double[,] matrix_c){
	for(int i=0; i < dimension;i++){
		for(int k=0; k< dimension; k++){
			for( int j=0; j< dimension; j++){
			matrix_c[i,j] += matrix_a[i,k]*matrix_b[k,j];
			} 
		}
	}
}


void print_matrix(double[,] matrix,int dimension){
	for(int row=0; row < dimension; row++){
		for( int value=0; value < dimension; value++){
			print("%f ", matrix[row, value]);	
		}
		print("\n");
	}
} 

void random_matrix(double[,] matrix, int dimension){
	for(int row= 0; row < dimension; row++){
		for( int value= 0; value < dimension; value++){
		matrix[row, value]=(double) Random.next_double();
	}
}
}

void collect_info(double t_start, double t_end, double gflops){
	print("Dim: %4d runtime: %7.4fs GFLOP/s: %0.2f\n", dimension, t_end - t_start, gflops);	
}


void main(){
	double t_start, t_end;
    double gflops;
	while(dimension < MAX_DIMENSION){
		step_dimension();
		double[,] matrix_a = new double[dimension,dimension];
		double[,] matrix_b = new double[dimension,dimension];
		double[,] matrix_c = new double[dimension,dimension];
		
		random_matrix(matrix_a, dimension);
		random_matrix(matrix_b, dimension);
		t_start = gtod();
		multiply_matrix(matrix_a, matrix_b, matrix_c);
		t_end = gtod();
		gflops= ((double) 2 * dimension * dimension * dimension / 1000000000.0) / (t_end - t_start);
		collect_info(t_start,t_end,gflops);
	}
	/*print("%d",matrix_c[5,5]);
	print_matrix(matrix_c, dimension);
	print("\n\n");
	print_matrix(matrix_a, dimension);*/
	
	
}
