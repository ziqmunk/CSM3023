<%-- 
    Document   : registerTraining
    Created on : 8 May 2024, 3:06:07 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zass Coder Camp</title>
    </head>
    <body>
        <h1>Register IT Training</h1>
        <fieldset>
            <legend>Training Registration</legend>
            <form action="processTraining.jsp">
                <table>
                    <tr>
                        <td>
                            <label for="icNo">IC No</label>
                        </td>
                        <td>
                            <input type="text" id="icNo" name="icNo" placeholder="E.g.:911210-05-1234">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name" placeholder="Enter your name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="trainingType">Type of Training</label>
                        </td>
                        <td>
                            <select name="trainingType" id="trainingType">
                                <option value="1">C++ training</option>
                                <option value="2">Java for beginner</option>
                                <option value="3">HTML5</option>
                                <option value="4">Java EEE</option>
                                <option value="5">Android Programming</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="noOfPax">No of Pax</label>
                        </td>
                        <td>
                            <input type="text" id="noOfPax" name="noOfPax" placeholder="No of pax">
                        </td>
                    </tr>
                    <tr>
                        <td><label>Student</label></td>
                        <td>
                            <input type="radio" id="yes" name="isStudent" value="1">
                            <label for="yes">Yes</label>
                            <input type="radio" id="no" name="isStudent" value="0">
                            <label for="no">No</label>
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
