<%-- 
    Document   : Eliminar
    Created on : 11-05-2023, 19:31:37
    Author     : Nicolas
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Libro</title>
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
                    <h3 style="text-align: center">Eliminar Libro</h3>
                    <br>
                    <form action="servletEliminar" method="POST">
                        <table class="table table">
                            <tr>
                                <td>Código</td>
                                <td><input type="number" name="txtCodigo" class="form-control" 
                                           placeholder="Ingrese Código" required></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" name="btnEliminar" value="Eliminar" 
                                           style="float: right;"
                                           class="btn btn-danger"></td>
                            </tr>
                            <tr>
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
