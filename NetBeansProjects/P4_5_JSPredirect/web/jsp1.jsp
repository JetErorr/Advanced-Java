<html>
    <body>
        <h1>Hello World!</h1>
        <%
        out.print("JSP 1");
        %>
        <%--<jsp:forward page="jsp2.jsp"/>--%>
        <jsp:include page="jsp2.jsp"/>
    </body>
</html>
