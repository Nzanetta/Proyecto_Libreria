A
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantención</title>
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
                    <h3 style="text-align: center">Formulario de Servicio</h3>
                    <br>

                    <form action="servletServicio" method="POST">
                        <table class="table table-striped">
                            <tr>
                                <td>Nombre:</td>
                                <td><input type="text" name="txtNombre" class="form-control" placeholder="Ingrese su Nombre y Apellido" required></td>
                            </tr>
                            <tr>
                                <td>Telefono:</td>
                                <td><input type="number" name="txtTelefono" class="form-control" placeholder="Ingrese su Número Telefonico" required></td>
                            </tr>
                            <tr>
                                <td>Servicio:</td>
                                <td>
                                    <select name="cboServicio" class="form-control">
                                        <option>Servicio de Reparación</option>
                                        <option>Servicio de Mantención</option>
                                        <option>Otro...</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Comentarios:</td>
                                <td><input type="text" name="txtComentario" class="form-control" placeholder="Ingrese comentario aquí" ></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" class="btn btn-primary" value="Enviar" style="float: right;"></td>
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
