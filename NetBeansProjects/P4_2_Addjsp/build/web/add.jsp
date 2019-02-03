<html>
    <body>
        <%
            out.println(request.getParameter("btn"));
            if(request.getParameter("btn").equals("ADD")){
                out.println("<br>The total of both the values is: "+((Integer.parseInt(request.getParameter("n1")))+(Integer.parseInt(request.getParameter("n2")))));
            }
            else if(request.getParameter("btn").equals("SUBTRACT")){
                out.println("<br>The total of both the values is: "+((Integer.parseInt(request.getParameter("n1")))-(Integer.parseInt(request.getParameter("n2")))));
            }
            else if(request.getParameter("btn").equals("DIVIDE")){
                out.println("<br>The total of both the values is: "+((Integer.parseInt(request.getParameter("n1")))/(Integer.parseInt(request.getParameter("n2")))));
            }
            else if(request.getParameter("btn").equals("MULTIPLY")){
                out.println("<br>The total of both the values is: "+((Integer.parseInt(request.getParameter("n1")))*(Integer.parseInt(request.getParameter("n2")))));
            }
        %>
    </body>
</html>