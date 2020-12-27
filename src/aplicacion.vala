public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.yourusername.yourrepositoryname",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hola Mundo"
        };
        var button_hello = new Gtk.Button.with_label("Clicame"){
            margin=12
        };
        button_hello.clicked.connect(()=>{
            button_hello.label = "Hola Mundo";
            button_hello.sensitive=true;
        });
        main_window.add(button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
