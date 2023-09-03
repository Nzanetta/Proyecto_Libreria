<%-- 
    Document   : Detalle
    Created on : 06-06-2023, 1:16:52
    Author     : Nls
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-Ky6G+sS8ogdCVTU1ZFWvvoN/2pS+CXonMDJ9j3lJg93+IRdHHRK9PohfVLPEOwOs" crossorigin="anonymous"></script>
    <title>Detalle Compra</title>
</head>
<body>
    <%@include file="header.jsp" %>

    <br>
    <h3 style="text-align: center">Detalle de Compra</h3>

    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ITEM</th>
                            <th>NOMBRE</th>
                            <th>DESCRIPCION</th>
                            <th>PRECIO</th>
                            <th>CANTIDAD</th>
                            <th>SUBTOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${carrito}">
                            <tr>
                                <td>${car.getItem()}</td>
                                <td>${car.getNombre()}</td>
                                <td>${car.getDescripcion()}</td>
                                <td>${car.getPrecioCompra()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>${car.getSubTotal()}</td>
                            </tr>   
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>