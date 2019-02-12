<html>
    <body>
        <h1>Hello World!</h1>
        <%out.print("JSP 1");%>
        <%--<jsp:forward page="jsp2.jsp"/>--%>
        <jsp:forward page="jsp2.jsp">
            <jsp:param name="user" value="uname1"/>
        </jsp:forward>
        <%--<jsp:include page="jsp2.jsp"/>--%>
    </body>
</html>
