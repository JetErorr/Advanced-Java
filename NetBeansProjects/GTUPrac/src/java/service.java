import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class service extends HttpServlet {

    private int count;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    count++;
    
    if(count % 2 == 0){
    RequestDispatcher rd = request.getRequestDispatcher("odd.jsp");
    rd.include(request, response);
    }
    else{
    RequestDispatcher rd = request.getRequestDispatcher("even.jsp");
    rd.include(request, response);
    }
    
    
    
//    processRequest(request, response);
//    ServletContext context = request.getServletContext();
//    String a = context.getInitParameter("counter");
//    out.println("A: "+ a );
//    count = Integer.parseInt(a);
//    out.println("Request Number: "+count);
//    out.println("Request Number: "+count);
//    String b = String.valueOf(count);
//    out.println(b);
//    context.setInitParameter("counter", b);
//    String c = context.getInitParameter("counter");
//    out.println("C: " + c);
    }
}
