<%-- 
    Document   : area
    Created on : 20 Apr 2024, 11:36:50 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rectangle Area Comparison Result</title>
</head>
<body>
<%
    // Retrieve the parameters from the request
    double l1 = Double.parseDouble(request.getParameter("l1"));
    double w1 = Double.parseDouble(request.getParameter("w1"));
    double l2 = Double.parseDouble(request.getParameter("l2"));
    double w2 = Double.parseDouble(request.getParameter("w2"));

    // Calculate areas of both rectangles
    double area1 = l1 * w1;
    double area2 = l2 * w2;

    // Compare areas
    String result;
    if (area1 > area2) {
        result = "Rectangle 1 has a greater area than Rectangle 2.";
    } else if (area1 < area2) {
        result = "Rectangle 2 has a greater area than Rectangle 1.";
    } else {
        result = "Both rectangles have the same area.";
    }
%>
<h1>Rectangle Area Comparison Result</h1>
<p>Area of Rectangle 1: <%= String.format("%.2f", area1) %> square cm</p>
<p>Area of Rectangle 2: <%= String.format("%.2f", area2) %> square cm</p>
<p><%= result %></p>
</body>
</html>
