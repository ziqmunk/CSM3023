<%-- 
    Document   : rectangle
    Created on : 20 Apr 2024, 11:37:03 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rectangle Area Comparison</title>
</head>
<body>
<h1>Comparing 2 Rectangle Areas</h1>
<form id="rectangleComparison" action="area.jsp" method="post">
    <fieldset>
        <legend>Length & Width Input</legend>
        <h3>Rectangle 1</h3>
        <label for="l1">Enter length: </label>
        <input type="text" id="l1" name="l1" size="10" placeholder="length 1"> cm<br/><br/>
        <label for="w1">Enter width: </label>
        <input type="text" id="w1" name="w1" size="10" placeholder="width 1"> cm<br/><br/>

        <h3>Rectangle 2</h3>
        <label for="l2">Enter length: </label>
        <input type="text" id="l2" name="l2" size="10" placeholder="length 2"> cm<br/><br/>
        <label for="w2">Enter width: </label>
        <input type="text" id="w2" name="w2" size="10" placeholder="width 2"> cm<br/><br/>

        <p><input type="submit" id="btnSubmit" value="Compare"/>
            <input type="reset" id="btnCancel" value="Cancel"/>
        </p>
    </fieldset>
</form>
</body>
</html>
