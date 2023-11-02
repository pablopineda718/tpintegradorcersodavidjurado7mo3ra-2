<%-- 
    Document   : list
    Created on : 30/10/2023, 9:04:25
    Author     : estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stock de Productos</title>
        <style>
         /* Reset de estilos */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Estilos generales de la página */
body {
    font-family: Arial, sans-serif;
    background-image: url('https://fotografias.lasexta.com/clipping/cmsimages02/2023/06/12/2D1E1A88-3CCB-4EF5-BFAC-65A34B6706F3/fondos-pantalla-clasicos-windows-calidad_97.jpg?crop=1300,731,x0,y0&width=1600&height=900&optimize=high&format=webply');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: #fff;
}




.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #444;
    border: 1px solid #555;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

h1 {
    text-align: center;
    color: #ff3333; /* Rojo */
    margin-bottom: 20px;
}

/* Estilos de la tabla de productos */
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

table, th, td {
    border: 1px solid #666;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #ff3333; /* Rojo */
    color: #fff;
}

/* Estilos para botones y enlaces */
a {
    text-decoration: none;
    color: #ff3333; /* Rojo */
    margin-right: 10px;
}

a:hover {
    text-decoration: underline;
}
/* Botón "Añadir Producto" con bordes */
#btn-Añadir-producto {
    background-color: #28a745;
    border: 2px solid #28a745; /* Borde verde */
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    display: inline-block; /* Para que el botón se comporte como un bloque */
    text-align: center;
    text-decoration: none; /* Para eliminar el subrayado de enlaces */
    margin: 10px 0;
    transition: background-color 0.3s, border-color 0.3s; /* Transición de color al pasar el cursor */
}

#btn-Añadir-producto:hover {
    background-color: #218838;
    border-color: #218838; /* Borde verde más oscuro al pasar el cursor */
}


button {
    background-color: #ff3333; /* Rojo */
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #e60000; /* Rojo más oscuro al pasar el cursor */
}

/* Estilos para formularios */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="number"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #555;
    border-radius: 5px;
    font-size: 16px;
    background-color: #444;
    color: #fff;
}

textarea {
    height: 100px;
}

        </style>
    </head>
    <body>      
        
        
        <div class="header">
            STOCK DE PRODUCTOS
        </div>


        <table class="tablaCSS">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>MARCA</th>
                    <th>NOMBRE</th>
                    <th>PRECIO</th>
                    <th>STOCK</th>
                    <th>VENDIDOS</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="producto" items="${list}">
                    <tr>
                        <td> <c:out value="${producto.id}"></c:out> </td>
                        <td> <c:out value="${producto.marca}"></c:out> </td>
                        <td> <c:out value="${producto.nombre}"></c:out> </td>
                        <td> <c:out value="${producto.precio}"></c:out> </td>
                        <td> <c:out value="${producto.stock}"></c:out> </td>
                        <td> <c:out value="${producto.vendidos}"></c:out> </td>
                            <td> 
                                <a class="botonActualizar" href="ProductoController?accion=edit&id=<c:out value="${producto.id}"></c:out>">Actualizar</a>
                            
                            <a class="botonBorrar" href="ProductoController?accion=delete&id=<c:out value="${producto.id}"></c:out>">Borrar</a>
                            
                        
                        </td>
                            
                            
                        </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <div class="boton-container">
            <a class="botonAñadir" href="ProductoController?accion=nuevo">Añadir Producto</a>
        </div>
    </body>
</html>
