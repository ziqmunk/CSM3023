<%-- 
    Document   : bmiCalculator
    Created on : 27 Apr 2024, 8:25:26 am
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Analyzer</title>
    </head>
    <body>
        <fieldset>
            <legend>BMI Analyzer</legend>
            <form action="processBmiCalculator.jsp">
                <table>
                    <tr>
                        <td>
                            <label for="height">Enter your height in(m):</label>
                        </td>
                        <td>
                            <input type="text" id="height" name="height" placeholder="e.g. 1.7" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="weight">Enter your weight in(kg):</label>
                        </td>
                        <td>
                            <input type="text" id="weight" name="weight" placeholder="e.g 60" required>
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
