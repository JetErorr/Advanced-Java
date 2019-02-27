
import java.util.ListResourceBundle;

public class Bundle2 extends ListResourceBundle {

    public Object[][] getContents() {
        return contents1;
    }
    static final Object[][] contents1 = {{"vegetable.Potato", "Potato"},
    {"vegetable.Tomato", "Tomato"}, {"vegetable.Carrot", "Carrot"},};
}
