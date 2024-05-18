<%-- 
    Document   : processAuthor
    Created on : 17 May 2024, 7:43:35 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Perform and retrieving records via JSP page</h1>
        <jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>
        
        <jsp:setProperty name="myAuthor" property="*"/>
        
        <%
            int result;
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String myURL = "jdbc:mysql://localhost:3306/csm3023_lab6";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            
            String sInsertQry = "INSERT INTO author(authno, NAME, address, city, state, zip) VALUES(?, ?, ?, ?, ?, ?)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            myPS.setString(1, myAuthor.getAuthno());
            myPS.setString(2, myAuthor.getNAME());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());
            
            result = myPS.executeUpdate();
            if (result > 0){
                out.println("\tRecord successfully added into Author table...!");
                out.print("<p>" + "Record with author no " +myAuthor.getAuthno()
                        + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are; " + "</p>");
                out.print("<p>Name : " + myAuthor.getNAME() + "</p>");
                out.print("<p>Address : " + myAuthor.getAddress() + "</p>");
                out.print("<p>City : " + myAuthor.getCity() + "</p>");
                out.print("<p>State : " + myAuthor.getState() + "</p>");
                out.print("<p>Zip : " + myAuthor.getZip() + "</p>");
            }
            //Step5: close database connection..!
                System.out.println("Step 5: Close database connection..!");
                myConnection.close();
                System.out.println(" ");
                System.out.println("Database connection is closed..!");
        %>
    </body>
</html>
