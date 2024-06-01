<%-- 
    Document   : studentRegister
    Created on : 1 Jun 2024, 12:12:23 pm
    Author     : Lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
</head>
<body>
    <h1>Student Registration</h1>
    <form action="confirmRegister.jsp" method="post">
        <label for="studentid">Student ID:</label>
        <input type="text" id="studentid" name="studentid" required><br><br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>

