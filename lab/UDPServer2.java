import java.net.*;
import java.io.*;

/**
 * UDPServer2
 */
public class UDPServer2 {

    public static void main(String[] args) throws Exception {
        int receiverPort = 1212;
        InetAddress receiverIP = InetAddress.getByName("192.168.43.29");
        DatagramSocket mysocket = new DatagramSocket(1112);

        UDPServerThread sender = new UDPServerThread(mysocket, receiverPort, receiverIP);
        UDPReceiverThread receiver = new UDPReceiverThread(mysocket);
    }
}