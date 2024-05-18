<%-- 
    Document   : processStudent
    Created on : 17 May 2024, 11:26:54 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myStudent" class="lab6.com.Student" scope="request"/>
        <jsp:setProperty name="myStudent" property="*"/>
        
        <%
            int result;
            
            //Step 1: Load JDBC driver..
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");
            
            //Step 2: Establish the connection
            String myURL = "jdbc:mysql://localhost:3306/csm3023_lab6";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");
            
            //Step 3: Create a PreparedStatement object...
            System.out.println("Step3: Prepared Statements created...!");
            String sInsertQry = "INSERT INTO student(studno, stuname, stuprogram) VALUES(?, ?, ?)";
            System.out.println("\tSQL Query: " + sInsertQry);
            
            //Call method preparedStatement
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            //Assign each value to respective columns for Student's table.. (C-Create)
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getName());
            myPS.setString(3, myStudent.getProgram());
            
            result = myPS.executeUpdate();
            if (result > 0){
                out.println("\tRecord successfully added into Student table...!");
                out.print("<p>" + "Record with student no " +myStudent.getStuno()
                        + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are; " + "</p>");
                out.print("<p>Student ID : " + myStudent.getStuno() + "</p>");
                out.print("<p>Name : " + myStudent.getName() + "</p>");
                out.print("<p>Program : " + myStudent.getProgram() + "</p>");
            }
            //Step5: close database connection..!
                System.out.println("Step 5: Close database connection..!");
                myConnection.close();
                System.out.println(" ");
                System.out.println("Database connection is closed..!");
        %>
    </body>
</html>
