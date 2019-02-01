import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Scanner;
public class UDPSenderThread extends Thread 
{
    int udpreceiverPort;
    InetAddress receiverIP;
    DatagramSocket mysocket;
    public UDPServerThread(DatagramSocket socket, int rport, InetAddress rIP)
    {
        mysocket = socket;
        udpreceiverPort = rport;
        receiverIP = rIP;
        this.start();
    }
    public void run(){
        try{
            byte mybuffer[];
            while (true) {
                Scanner scanner = new Scanner(System.in);
                System.out.println(">");
                String msg = scanner.nextLine();
                mybuffer = msg.getBytes();
                DatagramPacket mypack = new DatagramPacket(mybuffer, mybuffer.length, receiverIP, udpReceiverPort);
                mySocket.send(mypack);
                if(msg.equals(":q"))break;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}