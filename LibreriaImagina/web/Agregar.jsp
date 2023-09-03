<%-- 
    Document   : Agregar
    Created on : 11-05-2023, 10:32:10
    Author     : DUOC
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Libro</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="row">
                <!-- Columnas izquierdas -->
                <div class="col-sm-2" style="background-color: azure"></div>
                <!-- Columnas centrales + color-->
                <div class="col-sm-8" style="background-color: silver">   
                    <br>
                    <h3 style="text-align: center">Agregar Libro</h3>
                    <br>

                    <form action="servletAgregar" method="POST">
                        <table class="table table-striped">
                            <tr>
                                <td>Titulo:</td>
                                <td><input type="text" name="txtTitulo" class="form-control" placeholder="Ingrese titulo aquí" required></td>
                            </tr>
                            <tr>
                                <td>Autor:</td>
                                <td><input type="text" name="txtAutor" class="form-control" placeholder="Ingrese autor aquí" required></td>
                            </tr>
                            <tr>
                                <td>Año:</td>
                                <td><input type="number" name="txtAnnio" class="form-control" placeholder="Ingrese año aquí" required></td>
                            </tr>
                            <tr>
                                <td>Precio:</td>
                                <td><input type="number" name="txtPrecio" class="form-control" placeholder="Ingrese precio aquí" required></td>
                            </tr>
                            <tr>
                                <td>Stock:</td>
                                <td><input type="text" name="txtStock" class="form-control" placeholder="Ingrese stock aquí" required></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" class="btn btn-primary" value="Agregar" style="float: right;"></td>
                            </tr>
                            <tr id="abajo">
                                <td></td>
                                <td>
                                    <c:if test="${msj!=null}">
                                        <div class="alert alert-success">${msj}</div>
                                    </c:if>
                                    <c:if test="${err!=null}">
                                        <div class="alert alert-danger">${err}</div>
                                    </c:if>


                                </td>
                            </tr>
                        </table> 
                    </form>   
                </div>
                <!-- Columnas derecha -->
                <div class="col-sm-2" style="background-color: azure"></div> 
            </div>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
