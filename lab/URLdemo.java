import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

class URLdemo{
    public static void main(String[] args) throws Exception
    {
        URL obj = new URL("http://localhost/dashboard/");

        URLConnection conn = obj.openConnection();
        int l = conn.getContentLength();
        System.out.println("Length of Content: "+l);
        if (l == 0) {
            System.out.println("Content not available.!");
            return;
        }
        else
        {
            int ch;
            InputStream in = conn.getInputStream();
            while ((ch = in.read())!= -1) {
                System.out.print((char)ch);
            }
        }
    }
}