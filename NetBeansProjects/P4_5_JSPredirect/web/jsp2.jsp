<%@ page import="java.util.*"%>

<html>
    <body>
        <h1>JSP 2</h1>
        <%
        out.print("JSP 2");
        %>
        <%out.println(request.getParameter("user"));%>
        <!--Today's date: <%= (new java.util.Date()).toLocaleString()%>-->
    </body>
</html>
