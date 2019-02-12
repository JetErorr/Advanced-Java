<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
    <body>
        <br>
        <h3>This is the output of fn:contains</h3>
        <c:set var="String" value="Welcome to marwadi"/>  
        <c:if test="${fn:contains(String, 'marwadi')}">  
            <p>Found javatpoint string</p>  
        </c:if>  
        <c:if test="${fn:contains(String, 'MARWADI')}">  
            <p>Found JAVATPOINT string</p>  
        </c:if>
        <br>
        <h3>This is the output of fn:containsIgnoreCase</h3>
        <c:set var="String" value="Welcome to Marwadi.!"/>  

        <c:if test="${fn:containsIgnoreCase(String, 'marwadi')}">  
            <p>Found javatpoint string</p>  
        </c:if>  
        <c:if test="${fn:containsIgnoreCase(String, 'MARWADI')}">  
            <p>Found JAVATPOINT string</p>  
        </c:if>
        <br>
        <h3>This is the output of fn:endsWith</h3>
        <c:set var="String" value="Welcome to JSP programming"/>  

        <c:if test="${fn:endsWith(String, 'programming')}">  
            <p>String ends with programming</p>  
        </c:if>  
        <c:if test="${fn:endsWith(String, 'JSP')}">  
            <p>String ends with JSP</p>  
        </c:if>
        <br>
        <h3>This is the output of fn:escapeXml</h3>
    </body>
</html>
