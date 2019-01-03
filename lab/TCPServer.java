import java.io.*;
import java.net.*;
class TCPServer{
    public static void main(String[] args) throws Exception {
        ServerSocket ss = new ServerSocket(888);
        Socket s = ss.accept();
        System.out.println("Connection Established");

        //To send data to the client
        PrintStream ps = new PrintStream(s.getOutputStream());
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedReader KBDATA = new BufferedReader(br);
        String clientStr, KBStr;
        while (!((clientStr = br.readLine()).equals("exit"))) {
            System.out.println("Message from the client->"+clientStr);
            KBStr = KBDATA.readline();
            ps.printls("KBStr"); //Send to Client
        }
    }
}