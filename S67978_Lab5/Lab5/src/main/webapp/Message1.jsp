<%-- 
    Document   : Message1
    Created on : 8 May 2024, 2:42:58 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Using JSP Standard Action to call JavaBeans"%>
<%@page import="java.util.Date, lab5.com.Message"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scriplet</title>
    </head>
    <body>
        <h1>Using JSP Scriplet to call JavaBeans</h1>
        <%
            Message objMsg = new Message();
            // Assign value..
            objMsg.setMsg("Welcome to CSM3203 course...!");
            // Display value...
            out.println("<p>" + objMsg.getMsg() + "</p>");
            // Add date..
            out.println("<p>Current date is " + new java.util.Date() + "</p>");
        %>
    </body>
</html>
