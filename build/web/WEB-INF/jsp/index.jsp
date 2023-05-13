<%@page import="java.util.List"%>
<%@page import="Modelo.ColoresBin"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-while  ">
                    
                </div>
                <div class="card-body">
                    <table class="" border="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>ACCIONES</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
           

            <tr>
                <td>${dato.getId_color()}</td>               
               <td>${dato.getNombre_color()}</td>
                <td>
                    <a class="boton-8" >Editar </a>
                    <a class="boton-8" href="#">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
            
            </tbody>
        </table>
                </div>
                    
            </div> 
        </div>
     
    </body>
</html>
