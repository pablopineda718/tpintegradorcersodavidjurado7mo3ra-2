<%-- 
    Document   : form-empleado
    Created on : 30/10/2023, 9:03:07
    Author     : estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="tpintegradorcss.css">
</head>
<body>
    <div class="container">
        <h1>Formulario de Producto</h1>
        <form action="procesar_producto.jsp" method="post">
            <div class="form-group">
                <label for="Marca">Marca:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre del Producto:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="precio">Precio:</label>
                <input type="number" id="precio" name="precio" step="0.01" required>
            </div>

            <div class="form-group">
                <label for="cantidad">Cantidad en Stock:</label>
                <input type="number" id="cantidad" name="cantidad" required>
            </div>
            <div class="form-group">
                <label for="Vendidos">Vendidos:</label>
                <input type="number" id="cantidad" name="cantidad" required>
            </div>

            <button type="submit">Guardar Producto</button>
        </form>
    </div>
</body>
</html>