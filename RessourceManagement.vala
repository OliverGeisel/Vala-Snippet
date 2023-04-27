using GLib;

class Thread1 {

	private int runs;

	public Thread1( int runs ){
		this.runs = runs;
	}


}

void lock_run(){

}

void lock_test(){
	int a = 1;
	Thread<void> thread1 = new Thread<void>( "lock_run", lock_run );
}


void main(){
	if(!Thread.supported()) {
		stderr.printf ( "No thread support!\n" );
		return;
	}

}