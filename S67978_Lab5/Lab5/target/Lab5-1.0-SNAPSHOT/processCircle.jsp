<%-- 
    Document   : processCircle
    Created on : 14 May 2024, 8:11:49 am
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Circle Calculation Result</h1>
        <c:set var="radius" value="${param.radius}" />
        
        <c:set var="pi" value="3.141592653589793" />
        
        <c:set var="area" value="${pi * radius * radius}" />
        <c:set var="perimeter" value="${2 * pi * radius}" />
        
        <p>Radius of the circle: <c:out value="${radius}" /></p>
        <p>Area of the circle: <fmt:formatNumber type="number" maxFractionDigits="3" value="${area}"/></p>
        <p>Perimeter of the circle: <fmt:formatNumber type="number" maxFractionDigits="3" value="${perimeter}"/></p>
    </body>
</html>
