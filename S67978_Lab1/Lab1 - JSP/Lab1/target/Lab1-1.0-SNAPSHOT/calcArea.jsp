<%-- 
    Document   : calcArea
    Created on : 30 Mar 2024, 7:54:13 am
    Author     : Lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Area Result</title>
    </head>
    <body>
        <h1>Area Result</h1>
        <%-- Retrieve the radius value from the form --%>
        <% String radiusStr = request.getParameter("radius"); %>

        <%-- Check if the radius value is provided and is a valid number --%>
        <% if (radiusStr != null && radiusStr.matches("\\d+")) { %>
            <%-- Convert the radius string to an integer --%>
            <% int radius = Integer.parseInt(radiusStr); %>

            <%-- Calculate the area --%>
            <% double area = Math.PI * radius * radius; %>

            <%-- Format the area value --%>
            <% DecimalFormat df = new DecimalFormat("#.##"); %>

            <%-- Display the result --%>
            <p>The area of the circle with radius <%= radius %> is <%= df.format(area) %>.</p>
        <% } else { %>
            <%-- Display an error message if the radius value is missing or not a valid number --%>
            <p>Please enter a valid number for the radius.</p>
        <% } %>
    </body>
</html>
