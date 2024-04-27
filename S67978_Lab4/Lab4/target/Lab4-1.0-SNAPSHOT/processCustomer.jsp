<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 2:58:45 pm
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
        <h1>Use JSP Scriplet and JSP EXpression in application</h1><br>
        <%
            final int price = 10;
            //Using JSP Scriplet...
            String cust_no1 = request.getParameter("custCode");
            int quantity1 = Integer.parseInt(request.getParameter("qtty"));
            String cust_type1 = request.getParameter("custType");
            
            //Determine customer...
            if(cust_type1.equals("1") && quantity1 > 100){
                out.print("You're entitle " + "10%");%> <br>
            <% out.print("Total amount is RM" + quantity1 * price*0.9);
                }else if(cust_type1.equals("2") && quantity1 > 100){
                    out.print("You're entitle " + "25%");%> <br> 
                    <% out.print("Total amount is RM" + quantity1 * price * 0.75);
                        }else{
                            out.print("You're not entitle discount..!");%> <br> <%
                                out.print("Total amount is RM" + quantity1 * price);
                                }
            %>
            
    </body>
</html>
