<%-- 
    Document   : insuranceQuotation
    Created on : 26 Apr 2024, 4:06:59 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ZIQRICH INSURANCE</title>
        <style>
            td{
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <fieldset>
            <legend>Insurance Calculation</legend>
            <form action="processInsuranceQuo.jsp">
                <table>
                    <tr>
                        <td>
                            <label for="icNo">ICNo*</label>
                        </td>
                        <td>
                            <input type="text" id="icNo" name="icNo" placeholder="E.g 821210-05-3478" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name*</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name" placeholder="Enter name" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="market">Market Price*</label>
                        </td>
                        <td>
                            <input type="text" id="market" name="market" placeholder="Price" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="type">Coverage Type</label>
                        </td>
                        <td>
                            <select id="type" name="type">
                                <option value="1">Third Party</option>
                                <option value="2">Comprehensive</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="ncd">No claims discount (NCD)</label>
                        </td>
                        <td>
                            <select id="ncd" name="ncd">
                                <option value="10%">10%</option>
                                <option value="25%">25%</option>
                                <option value="35%">35%</option>
                                <option value="55%">55%</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" value="Submit">Submit</button>
                            <button type="reset" value="Reset">Cancel</button>
                        </td>
                    </tr>
                </table>
            </form>    
        </fieldset>
    </body>
</html>
