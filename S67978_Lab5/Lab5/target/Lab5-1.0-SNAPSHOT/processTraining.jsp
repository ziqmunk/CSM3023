<%-- 
    Document   : processTraining
    Created on : 8 May 2024, 3:38:15 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.com.Register"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zass Coder Camp</title>
        <style>
            p{
                color: blue;
                font-family: Comic Sans MS;
            }
        </style>
    </head>
    <body>
        <h1>Training Registration Acknowledgement</h1>
        <% 
            String ic_num = request.getParameter("icNo");
            String name = request.getParameter("name");
            int type = Integer.parseInt(request.getParameter("trainingType"));
            int pax_num = Integer.parseInt(request.getParameter("noOfPax"));
            int isStudent = Integer.parseInt(request.getParameter("isStudent"));
        %>
        
        <%
            Register zRegister = new Register(ic_num, name, type, pax_num, isStudent);
            // Assign value..
            zRegister.setIcNo(ic_num);
            zRegister.setName(name);
            zRegister.setTrainingType(type);
            zRegister.setNoOfPax(pax_num);
            zRegister.setIsStudent(isStudent);
            
            // Display value...
            out.println("<p>IC No : " + zRegister.getIcNo() + "</p>");
            out.println("<p>Name : " + zRegister.getName() + "</p>");
            out.println("<p>Type of Training : " + zRegister.getTrainingName(type) + "</p>");
            out.println("<p>Number of Pax : " + zRegister.getNoOfPax() + " person/s</p>");
            out.println("<p>Student: " + zRegister.stud2Str(isStudent) + "</p>");
            out.println("<p>Amount Due : RM " + String.format("%.2f", zRegister.getTrainingFee(type, pax_num, isStudent)) + "</p>");
        %>
        
        
    </body>
</html>
