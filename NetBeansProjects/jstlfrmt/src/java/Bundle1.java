import java.util.ListResourceBundle;  
public class Bundle1 extends ListResourceBundle {  
    public Object[][] getContents() {  
        return contents;  
    }  
    static final Object[][] contents = { { "colour.Violet", "Violet" },  
            { "colour.Indigo", "Indigo" }, { "colour.Blue", "Blue" }, };  
}  