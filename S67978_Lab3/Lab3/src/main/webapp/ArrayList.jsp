<%-- 
    Document   : ArrayList
    Created on : 20 Apr 2024, 11:01:23 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            //Create ArrayList object...
            ArrayList<String> studentList = new ArrayList<String>();
            //Store student name..
            studentList.add(0, "Mohamad Azam");
            studentList.add(1, "Peter Chong");
            studentList.add(2, "Rahimah Mansor");
            studentList.add(3, "Sri Devi");
            studentList.add(4, "Ng Hue Wen");
            studentList.add(5, "S. Nagarajan");
            
            //Display the number of records..
            out.println("<p>The number of records in ArrayList are " +
                        studentList.size() + "</p>");
            
            for (int i=0; i < studentList.size(); i++ ){
                out.println("<p>Record " + (i+1) + " is " + studentList.get(i) + "</p>"); 
            }
        %>
    </body>
    </br>
    <footer>&copy2024-Muhammad Haziq Aiman</footer>
</html>
