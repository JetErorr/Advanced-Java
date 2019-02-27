<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%
    String pid = request.getParameter("id");
%>
<html>  
    <head>  
        <title>sql:query Tag</title>  
    </head>  
    <body>

        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost/databaseDemo"  
                           user="root" password=""/>  




        <sql:update dataSource="${db}" var="rs">
            DELETE FROM `store` WHERE `PID` = <%=pid%>;
        </sql:update>

        <jsp:forward page="index.jsp"/>
    </body>  
</html>  