<%-- 
    Document   : processBmiCalculator
    Created on : 27 Apr 2024, 8:26:27 am
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Analyzer</title>
    </head>
    <body>
        <%
            double u_height = Double.parseDouble(request.getParameter("height"));
            double u_weight = Double.parseDouble(request.getParameter("weight"));
            double bmi = u_weight / (u_height * u_height);
            
            String category = "";
            if(bmi > 25){
                category = "overweight";
            }
            else if(bmi > 18.5 && bmi <= 25){
                category = "optimal";
            }
            else{
                category = "underweight";
            }
        %>
        <fieldset>
            <legend>Your BMI result</legend>
            <p>Height: <%=u_height%></p>
            <p>Weight: <%=u_weight%></p>
            <p>BMI: <%=String.format("%.2f", bmi)%></p>
            <p>Your bmi is <%=category%>!</p>
        </fieldset>
    </body>
</html>
