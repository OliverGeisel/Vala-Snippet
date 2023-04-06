using GLib;

class BasisKlasse : GLib.Object {
	private int _alter;

	public int alter{
		public get{ return _alter;}
	}

	public BasisKlasse.with_alter( int alter ){
		this._alter = alter;
	}
	public BasisKlasse(){
		this._alter = 25;
	}

	public void foo(){
		print( "Hallo!\n" );
	}
	public void foo_with_name( string name ){
		print( "Hallo %s!\n",name );
	}
}

class ErbendeKlasse :  BasisKlasse {

	public void foo(){
		print( "Welt!\n" );
	}

}

int main(){
	BasisKlasse b = new BasisKlasse();
	ErbendeKlasse e = new ErbendeKlasse();

	b.foo();
	e.foo();
	BasisKlasse new_b = e;
	new_b.foo();
	print( "Alter von e=%d\n",e.alter);
	return 0;
}