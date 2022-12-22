using GLib;

class Thread1{

	private int runs;

public Thread1(int runs){
	this.runs=runs;
}
	public void

}

void lock_run(){

}

void lock_test(){
	int a =1;
	auto thread1 = new Thread<void>("lock_run", lock_run,a);
}


void main(){
	if(!Thread.supported()){
		stderr.printf ("No thread support!\n");
        return;
	}
    with()
}