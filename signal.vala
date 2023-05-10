
public class Event {
	public signal void mein_event ( int i, string s );
}


public class EventHandler {
	public void mein_handler( Event e, int i, string s ){
		print( "I war: %d und S war: %s\n", i,s );
	}
}


void main(){
	Event e = new Event();
	EventHandler handler = new EventHandler();

	// e.mein_event += handler.mein_handler;
	// alternativ geht auch. Dies ist auch empfohlen
	e.mein_event.connect( handler.mein_handler );
	print( "Eventhandler wurde dem Event zugewiesen!\n" );
	e.mein_event( 5,"Hallo" );

}