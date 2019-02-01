import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.io.Exception;

/**
 * UDPReceiverThread
 */
public class UDPReceiverThread extends Thread {
    DatagramSocket mySocket;
    public UDPReceiverThread(DatagramSocket socket){
        mySocket = socket;
        this.start();
    }

public void run(){
    try {
        System.out.println("You need to press CTRL+C to exit ");
        byte myBuffer[] = new byte[2000];
        while(true){
            DatagramPacket dataPacket = new Datagrampacket(myBuffer, mybuffer.length);
            mysocket.receiver(dataPacket);
            String msg = new String(dataPacket.getData(), 0, dataPacket.getLength());
            System.out.println(">>>"+msg);
            if(msg.equals(":q")){
                break;
            }
        }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }   
}