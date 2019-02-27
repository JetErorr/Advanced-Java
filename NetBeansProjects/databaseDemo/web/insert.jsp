<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<html>  
    <head>  
        <title>sql:query Tag</title>  
    </head>  
    <body>

        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost/databaseDemo"  
                           user="root" password=""/> 

        <form action="add.jsp" method="get">
            ID      <input type="text" name="id"><br>
            NAME    <input type="text" name="name"><br>
            PRICE   <input type="text" name="price"><br>
            <input type="Submit" value="ADD">
        </form>

        <a href="index.jsp">DISPLAY ALL</a>
        
        

    </body>  
</html>  