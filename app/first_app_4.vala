using Gtk;

int main ( string[] argv ) {
	// Create a new application
	var app = new Gtk.Application ( "de.oliver.ValaGTK_Example",
	                                GLib.ApplicationFlags.FLAGS_NONE );
	app.activate.connect (( ) => {
		var window = new Gtk.ApplicationWindow ( app );
		var text = new Gtk.Label( "Willkommen bei Vala mit GTK!" );
		var button = new Gtk.Button.with_label ( "Hallo!" );
		var box =  new  Gtk.Box( Orientation.VERTICAL, 2 );

		button.clicked.connect (( ) => {
			button.set_label( "Auf wiedersehen" );
			Thread.usleep( 1000000 );
			window.close ();
		} );

		box.append( text );
		box.append( button );
		window.set_child ( box );
		window.present ();
	} );

	return app.run ( argv );
}