using Gtk;

int main ( string[] args ) {
	Gtk.init ( ref args );

	var window = new Window ();

	window.title = "Example GTK+ Program";
	window.border_width = 5;
	window.window_position = WindowPosition.CENTER;
	window.set_default_size ( 400, 100 );
	window.destroy.connect ( Gtk.main_quit );

	var button = new Button.with_label ( "Bitte klicken!" );
	button.clicked.connect (( ) => {
		button.label = "Der Knopf wurde gedrückt!";
	} );
	var text = new Label.with_mnemonic("Das ist ein Beispieltext");

    var layout = new Box (Orientation.VERTICAL, 2);
	layout.add(text);
	layout.add(button);
	window.add ( layout );
	window.show_all ();

	Gtk.main ();
	return 0;
}