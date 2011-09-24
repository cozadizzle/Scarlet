using Gtk;

int main (string[] args) {
	Gtk.init (ref args);

	try {
		var build_mainwindow = new Builder (); // Initializing the builder for the main window
		build_mainwindow.add_from_file ("scarlet.glade"); // Adding the UI XML
		var mainwindow = build_mainwindow.get_object ("Scarlet") as Window;
		mainwindow.show_all ();
		Gtk.main ();
	} catch (Error e) {
		stderr.printf ("Could not load UI: %s\n", e.message);
		return 1;
	}

	return 0;
}
