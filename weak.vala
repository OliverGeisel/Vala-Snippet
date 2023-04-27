

class StrongObject : Object {

	public StrongObject? strongBound;
	public StrongObject? weakBound;
	private string a;

	public StrongObject( StrongObject? strong, StrongObject? @weak ){
		this.strongBound = strong;
		this.weakBound = @weak;
		a = "1234567890123456789012345678901234567890123456789012345678901234567890";
	}

	public void setWeak( StrongObject @weak ){
		this.weakBound = @weak;
	}

	public void setStrong( StrongObject strong ){
		this.strongBound = strong;
	}

}

class WeakObject : Object {

	public WeakObject? strongBound;
	public weak WeakObject? weakBound;
	private string a;

	public WeakObject( WeakObject? strong, WeakObject? @weak ){
		this.strongBound = strong;
		this.weakBound = @weak;
		a = "1234567890123456789012345678901234567890123456789012345678901234567890";

	}

	public void setWeak( WeakObject @weak ){
		this.weakBound = @weak;
	}

	public void setStrong( WeakObject strong ){
		this.strongBound = strong;
	}

}

void weakRun( int repeat ){
	int i = 0;
	while(i < repeat) {
		var strong = new WeakObject( null,null );
		var @weak = new WeakObject( null,null );
		WeakObject object = new WeakObject( strong,@weak );
		strong.setStrong( @weak );
		strong.setWeak( object );
		@weak.setWeak( strong );
		Thread.usleep( 5000 );
		++i;
	}
}

void strongRun( int repeat ){
	int i = 0;
	while(i < repeat) {
		var strong = new StrongObject( null,null );
		var @weak = new StrongObject( null,null );
		StrongObject object = new StrongObject( strong,@weak );
		strong.setStrong( @weak );
		strong.setWeak( object );
		@weak.setWeak( strong );
		Thread.usleep( 5000 );
		++i;
	}
}

int main( string[] args ){
	int repeat;
	if (args.length > 2) {
		repeat = int.parse( args[2] );
	}
	else{
		repeat = 20;
	}
	if (args[1] == "weak") {
		weakRun( repeat );
	}
	else{
		strongRun( repeat );
	}
	return 0;
}