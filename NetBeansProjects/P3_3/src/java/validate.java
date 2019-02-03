import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class validate extends HttpServlet {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>Servlet valid</title></head>");
            out.println("<body>");
            String uname = request.getParameter("user");
            String pass = request.getParameter("passx");
            if(uname.equals("admin") && pass.equals("passpass"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("WelcomeServ");
                rd.forward(request, response);
            
            }else{
                out.println("Invalid Credentials");
                RequestDispatcher rd = request.getRequestDispatcher("./index.html");
                rd.include(request, response);
            }
            out.println("<h1>Servlet valid at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
