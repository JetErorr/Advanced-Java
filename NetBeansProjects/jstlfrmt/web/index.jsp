<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>  
    <body>  
        <!--        Parse Numbers
                        <h3>The fmt:parseNumber tag Example is:</h3>  
                
        <c:set var="Amount1" value="786.970" />  

        <fmt:parseNumber var="j" type="number" value="${Amount1}" />  
        <p><i>Amount is:</i>  <c:out value="${j}" /></p>  

        <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount1}" />  
        <p><i>Amount is:</i>  <c:out value="${j}" /></p>

        Time Zones

        <c:set var="str" value="<%=new java.util.Date()%>"/>  
        <table border="2" width="100%">  
            <tr>  
                <td width="100%" colspan="2" bgcolor="#FF7F50">  
                    <p align="center">  
                        <b>  
                            <font color="#000000" size="6">Formatting:  
        <fmt:formatDate value="${str}" type="both"  
                        timeStyle="long" dateStyle="long" />  
        </font>  
    </b>  
</p>  
</td>  
</tr>  

        <c:forEach var="zone" items="<%=java.util.TimeZone.getAvailableIDs()%>">  
            <tr>  
                <td width="50%"  bgcolor="#C0C0C0">  
            <c:out value="${zone}" />  
        </td>  
        <td width="50%" bgcolor="#FFEBCD">  
            <fmt:timeZone value="${zone}">  
                <fmt:formatDate value="${str}" timeZone="${zn}"  
                                type="both"/>  
            </fmt:timeZone>  
        </td>  
    </tr>  
        </c:forEach>
    </table>

    Currency
    <h3>Formatting of Number:</h3>  
        <c:set var="Amount" value="9850.14115" />  
        <p>Formatted Number-1:  <fmt:formatNumber value="${Amount}" type="currency" /></p>  
        <p>Formatted Number-2:  <fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></p>  
        <p>Formatted Number-3:  <fmt:formatNumber type="number" minIntegerDigits="7" value="${Amount}" /></p>  
        <p>Formatted Number-4:  <fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}" /></p>  
        <p>Formatted Number-5:  <fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></p>  
        <p>Formatted Number-6:  <fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></p>  -->

        <!--        Parse Date
                <h3>Parsed Date:</h3>  
        <c:set var="date" value="12-08-2016" />  

        <fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
        <p><c:out value="${parsedDate}" /></p>  -->

        <fmt:bundle basename="Bundle1" prefix="colour.">  
            <fmt:message key="Violet"/><br/>  
            <fmt:message key="Indigo"/><br/>  
            <fmt:message key="Blue"/><br/>  
        </fmt:bundle>
        
        

    </body>  
</html>