<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>  
    <body>
        <h3>This is the output of c:out</h3>
        <c:out value="${'Welcome to Marwadi.!'}"/>
        <br>
        <h3>This is the output of c:import</h3>
        <c:import var="variable1" url="http://www.google.com"/>  
        <c:out value="${variable1}"/>
        <br>
        <h3>This is the output of c:set</h3>
        <c:set var="Income" scope="session" value="${4200*4}"/>  
        <c:out value="${Income}"/>
        <br>
        <h3>This is the output of c:remove</h3>
        <c:set var="income" scope="session" value="${4000*4}"/>  
        <p>Before Remove Value is: <c:out value="${income}"/></p>  
        <c:remove var="income"/>  
        <p>After Remove Value is: <c:out value="${income}"/></p>
        <br>
        <h3>This is the output of c:catch</h3>
        <c:catch var ="catchtheException">  
            <% int x = 2 / 0;%>  
        </c:catch>  

        <c:if test = "${catchtheException != null}">  
            <p>The type of exception is : ${catchtheException}</p>
            <p>There is an exception: ${catchtheException.message}</p>
        </c:if>
        <br>
        <h3>This is the output of c:if</h3>
        <c:set var="income" scope="session" value="${4000*4}"/>  
        <c:if test="${income > 8000}">  
            <p>
                My income is: <c:out value="${income}"/>
            </p>  
        </c:if>
        <br>
        <h3>This is the output of c:choose,when,otherwise</h3>
        <c:set var="income" scope="session" value="${4000*4}"/>  
        <p>
            Your income is : <c:out value="${income}"/>
        </p>
        <c:choose>  
            <c:when test="${income <= 1000}">  
                Income is not good.  
            </c:when>  
            <c:when test="${income > 10000}">  
                Income is very good.  
            </c:when>  
            <c:otherwise>  
                Income is undetermined...  
            </c:otherwise>
        </c:choose>
        <br>
        <h3>This is the output of c:forEach</h3>
        <c:forEach var="j" begin="1" end="3">  
            Item <c:out value="${j}"/><br>
        </c:forEach>
        <br>
        <h3>This is the output of c:forToken</h3>
        <c:forTokens items="Marwadi-Education-Foundation-College" delims="-" var="name">  
            <c:out value="${name}"/><br>  
        </c:forTokens>
        <br>
        <h3>This is the output of c:param</h3>
        <c:url value="/index1.jsp" var="completeURL">  
            <c:param name="trackingId" value="420"/>  
            <c:param name="user" value="admin"/>  
        </c:url>
        ${completeURL}
        <br>
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