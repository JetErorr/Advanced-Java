<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%
    String pid = request.getParameter("id");
    String price = request.getParameter("price");
    String name = request.getParameter("name");

%>
<html>  
    <head>  
        <title>sql:query Tag</title>  
    </head>  
    <body>

        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost/databaseDemo"  
                           user="root" password=""/>  


        <div align="center">
            <table>
                <form action="update.jsp" method="get">
                    <tr>
                        <td>NAME</td>
                        <td><input type="text" name="name" value="<%=name%>"><br></td>
                    </tr>
                    <tr>
                        <td>PRICE</td>
                        <td><input type="text" name="price" value="<%=price%>"><br></td>
                    <input type="hidden" name="id" value="<%=pid%>">
                    </tr>
                    <tr><td><input type="Submit" value="UPDATE"></td></tr>
                </form>
            </table>


        </form>
    </div>
</body>  
</html>  