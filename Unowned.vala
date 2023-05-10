

[Compact (opaque=true)]
class KompakteKlasse {
	private int value;

	public KompakteKlasse(int value){
		this.value =  value;
	}

	public int getValue(){
		return value;
	}
}

int main(){
	unowned KompakteKlasse nichtBesitzend;
	{
		KompakteKlasse besitztObjekt = new KompakteKlasse(42);
		nichtBesitzend = besitztObjekt;
		print("Aufruf von einer unowned Variable innerhalb des Scopes der owned Variable: %d\n", nichtBesitzend.getValue());
	}
	print( "Aufruf von einer unowned Variable außerhalb des Scopes der owned Variable: %d\n", nichtBesitzend.getValue());
	return 0;
}