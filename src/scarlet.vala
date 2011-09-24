using Gtk;

int main (string[] args) {

	stdout.printf ("This application is licensed under a MIT license and the source is available at\nhttps://github.com/sakjur/Scarlet \n\nFeel free to use for any purpose!\n");

	Gtk.init (ref args);

	try {
		var build_mainwindow = new Builder (); // Initializing the builder for the main window
		build_mainwindow.add_from_file ("scarlet.glade"); // Adding the UI XML
		var mainwindow = build_mainwindow.get_object ("Scarlet") as Window;
		mainwindow.destroy.connect (Gtk.main_quit);
		mainwindow.show_all ();
		Gtk.main ();
	} catch (Error e) {
		stderr.printf ("Could not load UI: %s\n", e.message);
		return 1;
	}

	return 0;
}
