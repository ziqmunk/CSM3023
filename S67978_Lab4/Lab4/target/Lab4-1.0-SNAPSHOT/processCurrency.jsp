<%-- 
    Document   : processCurrency
    Created on : 24 Apr 2024, 3:47:58 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Use JSP Declaration tag,JSP Scriplet and JSP Expression in application</h1>
        <%!
            //Define constant...
            final double USD = 4.75;
            final double STG = 5.94;
            final double EURO = 5.09;
            
            //Define method to perform currency exchange..
            private double calculateRate(String currency, int amount){
                double currencyChange=0.00f;
                switch(currency){
                    case "1":
                        currencyChange = (double)(amount * USD);
                        break;
                    case "2":
                        currencyChange = (double)(amount * STG);
                        break;
                    case "3":
                        currencyChange = (double)(amount * EURO);
                        break;
                }
                return currencyChange;
            }
            
        %>
        <%
            int amount1 = Integer.parseInt(request.getParameter("amount"));
            String currencyType = request.getParameter("currency");
            double result = calculateRate(currencyType, amount1);
            String currencyName = "";
            switch(currencyType){
                case "1":
                    currencyName = "USD";
                    break;
                case "2":
                    currencyName = "STG";
                    break;
                case "3":
                    currencyName = "EURO";
                    break;
            }
        %>
        <p>Amount in Ringgit Malaysia is <%=amount1%></p>
        <p>Amount in <%=currencyName%> is <%=String.format("%.2f", result)%></p>
    </body>
</html>
