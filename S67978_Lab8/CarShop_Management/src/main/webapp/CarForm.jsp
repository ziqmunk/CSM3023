<%-- 
    Document   : index
    Created on : 5 Jun 2024, 11:20:43 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Shop Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script>
            function updateBrand() {
                var selectedBrand = document.getElementById("brand").value;
                document.getElementById("displayBrand").value = selectedBrand;
            }
        </script>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Car Management Application </a>
                </div>
                
                <ul class="navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/listcar" class="nav-link">Cars</a></li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <c:if test="${car != null}">
                        <form action="update" method="post">
                    </c:if>
                    <c:if test="${car == null}">
                        <form action="insert" method="post">
                    </c:if>
                            
                    <h2>
                       <c:if test="${car != null}">
                            Edit Car
                        </c:if>
                        <c:if test="${car == null}">
                            Add New Car
                        </c:if>
                    </h2>
                            
                    <c:if test="${car != null}">
                        <input type="hidden" name="car_id" value="<c:out value='${car.id}' />" />
                    </c:if>
                      
                    <fieldset class="form-group">
                        <label>Car Brand</label>
                        <input type="text" id="displayBrand" value="<c:out value='${car.brand}' />" class="form-control" readonly>
                        <input list="carList" id="brand" class="form-control" name="brand" onchange="updateBrand()" >
                        <datalist id="carList">
                            <option value="Proton">
                            <option value="Perodua">
                            <option value="Toyota">
                            <option value="Honda">
                            <option value="Nissan">
                            <option value="Ford">
                            <option value="Hyundai">
                            <option value="Kia">
                        </datalist>
                    </fieldset>
                        
                    <fieldset class="form-group">
                        <label>Car Model</label><input type="text" value="<c:out value='${car.model}' />" 
                                                           class="form-control" name="model" required="required">
                    </fieldset>
                    
                    <fieldset class="form-group">
                        <label>Engine Cylinder</label><input type="text" value="<c:out value='${car.cylinder}' />" 
                                                           class="form-control" name="cylinder">
                    </fieldset>  
                                                           
                    <fieldset class="form-group">
                        <label>Car Price</label><input type="text" value="<c:out value='${car.price}' />" 
                                                           class="form-control" name="price">
                    </fieldset>
                        
                    <button type="submit" class="btn btn-success">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
