<%-- 
    Document   : populateArray
    Created on : 29 Mar 2024, 6:26:07 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Kerepek 2023</title>
        <style>
             td{
                border: 0px solid black;
                text-align: center;
                padding: 8px;
                background-color: palegoldenrod;
            }
            #thead{
                border: 0px solid black;
                background-color: orange;
            }
        </style>
    </head>
    <body>
        <%
            int[][] sales = {
                {2500, 2100, 2200},
                {2000, 1900, 2400},
                {1800, 2200, 2450}
            };
        %>
        <h1>Read Java array and populate it into HTML's table</h1>
        <table style='width:100%'>
            <tr id='thead'>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <tr>
                <td>Salesman 1</td>
                <td><% out.println(sales[0][0]); %></td>
                <td><% out.println(sales[0][1]); %></td>
                <td><% out.println(sales[0][2]); %></td>
            </tr>
            <tr>
                <td>Salesman 2</td>
                <td><% out.println(sales[1][0]); %></td>
                <td><% out.println(sales[1][1]); %></td>
                <td><% out.println(sales[1][2]); %></td>
            </tr>
            <tr>
                <td>Salesman 3</td>
                <td><% out.println(sales[2][0]); %></td>
                <td><% out.println(sales[2][1]); %></td>
                <td><% out.println(sales[2][2]); %></td>
            </tr>
        </table>
    </body>
</html>
