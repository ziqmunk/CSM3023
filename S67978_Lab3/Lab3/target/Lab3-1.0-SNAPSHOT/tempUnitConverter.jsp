<%-- 
    Document   : tempUnitConverter
    Created on : 20 Apr 2024, 11:29:47 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Celsius to Fahrenheit</title>
    <style>
        p {
            font-size: 24px;
            font-family: Courier New;
            font-weight: bold; 
        }
    </style>
</head>
<body>
    <h1>Calculate Celsius to Fahrenheit</h1>
    <form id="CelsiusToFahrenheitForm" action="tempUnitConverter.jsp" method="post"> 
        <fieldset>
            <legend>Celsius to Fahrenheit Conversion</legend>
            <br/>
            <label for="celsius">Enter Temperature in Celsius: </label>
            <input type="text" id="celsius" name="celsius" size="10" placeholder="temperature"> °C<br/><br/> 
            <p>
                <input type="submit" id="btnSubmit" value="Convert"/>
                <input type="reset" id="btnCancel" value="Cancel"/> 
            </p>
              <%
        // Retrieve the temperature in Celsius from the form
        String celsiusStr = request.getParameter("celsius");
        if (celsiusStr != null && !celsiusStr.isEmpty()) {
            // Convert the temperature to Fahrenheit
            double celsius = Double.parseDouble(celsiusStr);
            double fahrenheit = (9.0 / 5.0) * celsius + 32.0;
    %>
        <p><%= celsius %> °C = <%= fahrenheit %> °F</p>
    <%
        }
    %>
            
        </fieldset>
    </form>

  
</body>
</html>
