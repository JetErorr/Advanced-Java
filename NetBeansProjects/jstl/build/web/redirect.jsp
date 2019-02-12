<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
    <body>
        <h3>This is the output of c:redirect</h3>
    <c:set var="url" value="0" scope="request"/>
    <c:if test="${url<1}">
        <c:redirect url="http://google.com"/>
    </c:if>
    <c:if test="${url>1}">
        <c:redirect url="http://google.com"/>
    </c:if>
</body>
</html>