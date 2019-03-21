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
                           user="root"  password=""/>

        <sql:query dataSource="${db}" var="rs">  
            SELECT * from store;  
        </sql:query>

        <div align="center">
            <table>
                <form action="add.jsp" method="get">
                    <tr>
                        <td>NAME</td>
                        <td><input type="text" name="name"><br></td>
                    </tr>
                    <tr>
                        <td>PRICE</td>
                        <td><input type="text" name="price"><br></td>
                    </tr>
                    <tr><td><input type="Submit" value="ADD"></td></tr>
                </form>
            </table>
            <table border="2" width="80%">  
                <tr>  
                    <th>Name</th>  
                    <th>RS</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>  
                <c:forEach var="table" items="${rs.rows}">  
                    <tr>  
                        <td><c:out value="${table.P_NAME}"/></td>  
                        <td><c:out value="${table.P_RS}"/></td>
                        <td><a href='updateform.jsp?id=${table.PID}&name=${table.P_NAME}&price=${table.P_RS}'>Update</a></td>
                        <td><a href='delete.jsp?id=${table.PID}'>Delete</a></td>
                    </tr>  
                </c:forEach>  
            </table>  
        </div>
    </body>  
</html>  