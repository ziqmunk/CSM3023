<%-- 
    Document   : calculateLoan
    Created on : 17 Apr 2024, 4:56:09 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            p{
                size: 24px;
                font-family: Courier New;
                font-weight: bold;
            }
            h2{
                color: blue;
                font-family: Courier New;
            }
        </style>
    </head>
    <body>
        <h1>Perform Car Loan Calculation</h1>
        <fieldset>
            <%
                String dAmount = request.getParameter("loan_amount");
                double amount = Double.parseDouble(dAmount);
                
                String dPeriod  = request.getParameter("period");
                int period = Integer.parseInt(dPeriod);
                
                double total = 0;
                
                if (period > 5){
                    total = amount * 1.045; //interest rate
                }
                else{
                    total = amount * 1.028;
                }
            %>
            
            <h2>Details of car loan: </h2>
            <p>Loan Request : RM<%=amount%> </p>
            <p>Period of payment : <%=period%> </p>
            <p>Total Loan (+ interest): RM<%=total%> </p>
            
        </fieldset>
            <p>&copy; 2024-Muhammad Haziq Aiman</p>
    </body>
</html>
