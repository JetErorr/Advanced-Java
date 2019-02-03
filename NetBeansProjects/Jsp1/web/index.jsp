<%-- 
    Document   : jsp1
    Created on : 22 Jan, 2019, 12:47:05 PM
    Author     : Jarde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<%! int a = 4, b= 20; String st = "hello.!";%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 1</title>
    </head>
        <%= "Value of a= "+a+".!" %><br>
    <body>
        <h1>Hello!</h1>
        <%= "Value of b= "+b+".!"%><>
            <table border="1px">
                <tr>
                <% for(int i = 0; i < 10; i++){
                    %> <td><%=i%></td><%}%>
                </tr>
            </table>
        
    </body>
</html>
<%
    Date dt = new Date();
    out.println("Current Date is "+dt);//no need for PrintWriter, because out is a implicit object of JspWriter
    out.println("Name is = "+st);
%>