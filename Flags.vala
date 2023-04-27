
[Flags]
public enum ZahlenPraedikate {
	IST_NULL,
	IST_NEGATIV,
	IST_DURCH_3_TEILBAR,
	IST_GERADE;

	public ZahlenPraedikate invertieren(){
		return this ^ IST_NULL ^ IST_NEGATIV ^ IST_DURCH_3_TEILBAR ^ IST_GERADE;
	}
}



public class Integer : Object {

	private static ZahlenPraedikate nichts = ZahlenPraedikate.IST_GERADE ^ ZahlenPraedikate.IST_GERADE;
	private int value;
	private ZahlenPraedikate praedikat;

	public int getValue(){
		return value;
	}

	public bool ist_durch_3_teilbar(){
		return ZahlenPraedikate.IST_DURCH_3_TEILBAR in praedikat;
	}

	public bool ist_negativ(){
		return ZahlenPraedikate.IST_NEGATIV in praedikat;
	}

	public bool ist_null(){
		return ZahlenPraedikate.IST_NULL in praedikat;
	}

	public bool ist_gerade(){
		return ZahlenPraedikate.IST_GERADE in praedikat;
	}

	public Integer( int value ){
		this.value = value;
		ZahlenPraedikate neues_praedikat = value == 0 ? ZahlenPraedikate.IST_NULL : nichts;
		neues_praedikat |= value < 0 ? ZahlenPraedikate.IST_NEGATIV : nichts;
		neues_praedikat |= ( value % 3 ) == 0 ? ZahlenPraedikate.IST_DURCH_3_TEILBAR : nichts;
		neues_praedikat |= ( value % 2 ) == 0 ? ZahlenPraedikate.IST_GERADE : nichts;
		praedikat = neues_praedikat;
	}

	public Integer plus( Integer other ){
		return new Integer( this.value + other.value );
	}

	public Integer multipliziert( Integer other ){
		return new Integer( this.value * other.value );
	}

	// Beispiel für Flag.Operation
	public void praedikat_invertieren(){
		praedikat = praedikat.invertieren();
	}

}

public static void check_Praedikate( Integer i ){
	print( "Ist die Zahl \"%d\" durch 3 teilbar? %s\n", i.getValue(), i.ist_durch_3_teilbar()? "JA":"NEIN" );
	print( "Ist die Zahl \"%d\" gerade? %s\n", i.getValue(), i.ist_gerade()? "JA":"NEIN" );
	print( "Ist die Zahl \"%d\" gleich 0? %s\n", i.getValue(), i.ist_null()? "JA":"NEIN" );
	print( "Ist die Zahl \"%d\" negativ? %s\n\n", i.getValue(), i.ist_negativ()? "JA":"NEIN" );
}

void main(){
	Integer i = new Integer( 3 );
	check_Praedikate( i );

	i = new Integer( -2 );
	check_Praedikate( i );
	// Nur als Beispiel
	print( "Invertiert\n" );
	i.praedikat_invertieren();
	check_Praedikate( i );
	print( "Wiederhergestellt\n" );
	i.praedikat_invertieren();
	check_Praedikate( i );
}


