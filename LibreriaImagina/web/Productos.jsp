<%-- 
    Document   : Productos
    Created on : 18-05-2023, 21:13:17
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <style>
            .product-card {
                margin-bottom: 20px;
                border: 1px solid #ccc;
                padding: 10px;
                text-align: center;
                width: 100%;
                max-width: 300px;
                display: inline-block;
                vertical-align: top;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <br>
        <h3 style="text-align: center">Productos</h3>
        <br>

        <div class="container mt-2">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4">
                        <div class="product-card">
                            <div class="card-header"></div>
                            <label>${p.getNombre()}</label>
                            <BR>
                            <div class="card-body"></div>
                            <i>$${p.getPrecio()}</i>
                            <img src=${p.getFoto()} width="200" height="200">
                            <div class="card-footer" text-center></div>
                            <label>Autor: ${p.getDescripcion()}</label>
                            <div>
                                <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-success">Agregar a carrito</a>
                                <a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-primary">Comprar</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
