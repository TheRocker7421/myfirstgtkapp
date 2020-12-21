public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.therocker7421.myfirstgtkapp",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var label_hello = new Gtk.Label ("Hello World! This is my first GTK App!") {
        margin = 12
        };
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        main_window.add (label_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
