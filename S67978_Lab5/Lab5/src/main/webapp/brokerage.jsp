<%-- 
    Document   : brokerage
    Created on : 14 May 2024, 8:30:17 am
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.com.processBrokerage"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocoTex Trading Broker</title>
    </head>
    <body>
        <h1>Welcome to LocoTex Trading Broker!</h1>
        <%
            //initialize all variables needed
            int shares = 800;
            double price = 10.50;
            //instantiate broker object
            processBrokerage broker = new processBrokerage(shares, price);
        %>
        
        <!-- declare variable using taglibs approach (c:set)-->
        <c:set var="amount" value="<%=broker.getAmountB(shares, price)%>" />
        <c:set var="commission" value="<%=broker.getCommission(shares, price)%>" />
        <c:set var="total" value="<%=broker.getAmountA(shares, price)%>" />
        
        <!-- output the value using fmt:format to ensure the output is 2 decimal places -->
        <p>Amount (without commission): RM <fmt:formatNumber type="number" minFractionDigits="2" value="${amount}" /></p>
        <p>Commission charged: RM <fmt:formatNumber type="number" minFractionDigits="2" value="${commission}" /></p>
        <p>Total amount paid (commission included): RM <fmt:formatNumber type="number" minFractionDigits="2" value="${total}" /></p>
    </body>
</html>
