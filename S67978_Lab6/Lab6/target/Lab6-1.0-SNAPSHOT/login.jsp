<%-- 
    Document   : login
    Created on : 18 May 2024, 1:40:42 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department of Quality UMT</title>
    </head>
    <body>
        <h1>Department of Quality UMT</h1>
        <fieldset>
            <legend>User Login</legend>
            <form action="doLogin.jsp">
                <table>
                    <tr>
                        <td>
                            <label for="username">Username</label>
                        </td>
                        <td>
                            <input type="text" id="username" name="username" placeholder="Enter a username">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="password">Password</label>
                        </td>
                        <td>
                            <input type="password" id="password" name="password" placeholder="Enter a password">
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
        <%
           String errorMessage = request.getParameter("error");
           if (errorMessage != null && !errorMessage.isEmpty()) {
               out.println("<p style='color: red'>" + errorMessage + "</p>");
           }
        %>
        <footer>
            <p>&copy;Quality UMT - 2024</p>
        </footer>
    </body>
</html>
