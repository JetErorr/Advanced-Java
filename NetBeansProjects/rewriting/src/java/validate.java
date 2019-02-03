import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class validate extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>URLRewriting</title>");            
            out.println("</head>");
            out.println("<body>");
            String uname = request.getParameter("user");
            String pass = request.getParameter("passx");
            if(uname.equals("jeet") && pass.equals("qwerty"))
            {
//                out.print("Welcome " + uname + ", you have logged in.");
//                out.println("<a href='logout?user="+uname+"'>Logout</a>");
                out.println("<form action='logout'>");
                out.println("<input type='hidden' name='user1' value='"+uname+"'/>");
                out.print("<input type='submit' value='Logout'/></form>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
