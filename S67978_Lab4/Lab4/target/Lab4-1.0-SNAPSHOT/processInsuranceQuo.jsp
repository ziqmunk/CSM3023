<%-- 
    Document   : processInsuranceQuo
    Created on : 26 Apr 2024, 7:30:13 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ZIQRICH INSURANCE</title>
    </head>
    <body>
        <%!
           final double gst = 0.06;
           
           private double calcInsurance(String cover, String NCD, int market){
                double insurance = 0.0;
                if(cover.equals("Comprehensive")){
                    switch(NCD){
                        case "55%":
                            insurance = 0.018 * market;
                            break;
                        case "35%":
                            insurance = 0.024 * market;
                            break;
                        case "25%":
                            insurance = 0.030 * market;
                            break;
                        case "10":
                            insurance = 0.038 * market;
                            break;
                        }
                }else{
                     switch(NCD){
                        case "55%":
                            insurance = 0.012 * market;
                            break;
                        case "35%":
                            insurance = 0.018 * market;
                            break;
                        case "25%":
                            insurance = 0.025 * market;
                            break;
                        case "10%":
                            insurance = 0.033 * market;
                            break;
                        }
                }
                return insurance;
            }    
        %>
        <%
           String icNo = request.getParameter("icNo");
           String custName = request.getParameter("name");
           int market_price = Integer.parseInt(request.getParameter("market"));
           String cover_type = request.getParameter("type");
           
           String coverage = "";
           switch(cover_type){
               case "1":
                   coverage = "Third Party";
                   break;
               case "2":
                   coverage = "Comprehensive";
                   break;
           }
           
           String Ncd = request.getParameter("ncd");
           double ins_amount = calcInsurance(coverage, Ncd, market_price);
           double gst_charge = ins_amount * gst;
           double final_amount = ins_amount + gst_charge;
        %>
        <fieldset>
            <legend>Details of Insurance Quotation</legend>
            <p>IC No: <%=icNo%></p>
            <p>Customer Name: <%=custName%></p>
            <p>Market Price: <%=market_price%></p>
            <p>Coverage Type: <%=coverage%></p>
            <p>No claim discount (NCD) = <%=Ncd%></p>
            <p>Insurance amount: <%=String.format("%.2f", ins_amount)%></p>
            <p>6% GST: <%=String.format("%.2f", gst_charge)%></p>
            <p>Final amount(with 6% GST): <%=String.format("%.2f", final_amount)%></p>
        </fieldset>
    </body>
</html>
