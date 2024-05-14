<%-- 
    Document   : processUser
    Created on : 11 May 2024, 8:31:03 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Canberra University E-Learning</title>
    <style>p{color: violet;}</style>
</head>
<body>
    <h1>Retrieve info using c:param & display it using c:out</h1>

    <p>First Name: <c:out value="${param.fname}"/></p>
    <p>Surname: <c:out value="${param.sname}"/></p>
    <p>Gender: <c:out value="${param.gender}"/></p>
    <p>Type of User: <c:out value="${param.typeUser}"/></p>
    <p>Prefer Language: <c:out value="${param.language}"/></p>

    <c:set var="firstName" value="${param.fname}" />
    <c:set var="lastName" value="${param.sname}" />
    <c:set var="userGender" value="${param.gender}" />
    <c:set var="userType" value="${param.typeUser}" />
    <c:set var="preferredLanguage" value="${param.language}" />

    <!-- Using c:param:</p> -->
    <c:url var="processUrl" value="processUser.jsp">
        <c:param name="fname" value="${firstName}" />
        <c:param name="sname" value="${lastName}" />
        <c:param name="gender" value="${userGender}" />
        <c:param name="typeUser" value="${userType}" />
        <c:param name="language" value="${preferredLanguage}" />
    </c:url>
    
</body>
</html>

