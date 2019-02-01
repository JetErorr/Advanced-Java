import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.PrintStream;
import java.net.Socket;

class TCPClient{
    public static void main(String[] args) throws Exception {
        Socket s = new Socket("localhost",888);
        PrintStream ps = new PrintStream(s.getOutputStream());
        BufferedReader br = new BufferedReader(new InputStreamReader(ps));
        BufferedReader KBDATA = new BufferedReader(new InputStreamReader(System.in));

        String serverStr,kbstr;
        while (true) {
            kbstr = KBDATA.readLine();
            ps.println(kbstr);
            if(kbstr.equals("exit")){
                break;
            }
            serverStr = br.readLine();
            System.out.println("Message from Server->"+serverStr);
        }
        br.close();
        KBDATA.close();
        s.close();
    }
}