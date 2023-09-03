<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Libros</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row">
                <!-- Columnas izquierdas -->
                <div class="col-sm-2" style="background-color: azure"></div>
                <!-- Columnas centrales -->
                <div class="col-sm-8" style="background-color: silver">
                    
                    <br>
                    <h3 style="text-align: center">Listado Libros</h3>
                    <br>
                    
                    <table class="table table-striped">
                        <tr>
                            <td>C�digo</td>
                            <td>Titulo</td>
                            <td>Autor</td>
                            <td>A�o</td>
                            <td>Precio</td>
                            <td>Stock</td>
                            <td>Opci�n</td>
                        </tr>
                        <c:forEach var="libro" items="${listado}">
                            <tr>
                                <td>${libro.getCodigo()}</td>
                                <td>${libro.getTitulo()}</td>
                                <td>${libro.getAutor()}</td>
                                <td>${libro.getAnnio()}</td>
                                <td>${libro.getPrecio()}</td>
                                <td>${libro.getStock()}</td>
                                <td><a class="btn btn-danger btn-xs"
                                       href="servletEliminar?txtCodigo=${libro.getCodigo()}">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <!-- Columnas derecha -->
                <div class="col-sm-2" style="background-color: azure"></div>
            </div>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
