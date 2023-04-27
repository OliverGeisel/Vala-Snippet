using GLib;

class BasisKlasse {
	private int alter = 2;

	public void foo(){
		print( "Hallo\n" );
	}

	public int getAlter(){
		return alter;
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
	print( "Alter von e=%d\n",e.getAlter());
	return 0;
}