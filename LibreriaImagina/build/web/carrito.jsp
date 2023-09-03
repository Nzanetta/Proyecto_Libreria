<%--
    Document   : carrito
    Created on : 19-05-2023, 0:08:34
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-Ky6G+sS8ogdCVTU1ZFWvvoN/2pS+CXonMDJ9j3lJg93+IRdHHRK9PohfVLPEOwOs" crossorigin="anonymous"></script>
        <script src="https://www.paypal.com/sdk/js?client-id=ATx4ko4NWb3F3VluJntXs6xZFrDqRB0vuz0NEEUTqT5tEzJsaS05SksU0nF6MIzyLiz-NWcINj6S1vIQ&currency=MXN"></script>
        <title>Carrito</title>

    </head>
    <body>
        <%@include file="header.jsp" %>

        <br>
        <h3 style="text-align: center">Carrito</h3>



        <div class="container mt-4">
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRE</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
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
                                    <td>
                                        <a href="Controlador?accion=Delete&idp=${car.getItem()}" class="btn btn-danger" id="btnDelete">Eliminar</a>
                                    </td>
                                </tr>   
                            </c:forEach>
                        </tbody>
                    </table>

                </div>

                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="text-center">Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" value="$${totalPagar}" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" value="$0" readonly="" class="form-control">
                            <label>Total Pagar:</label>
                            <input type="text" value="$${totalPagar}" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <br>

                            <a href="pago.jsp" data-toggle="modal" data-target="#exampleModal" class="btn btn-warning d-block rounded-pill py-2 my-3 w-100">
                                Tarjeta Duoc UC
                            </a>


                            <!-- Botón de PayPal -->
                            <div id="paypal-button-container"></div>
                            <script>
                                paypal.Buttons({
                                    style: {
                                        color: 'blue',
                                        shape: 'pill',
                                        label: 'pay'
                                    },
                                    createOrder: function (data, actions) {
                                        return actions.order.create({
                                            purchase_units: [{
                                                    amount: {
                                                        value: '${totalPagar}'
                                                    }
                                                }]
                                        });
                                    },

                                    onApprove: function (data, actions) {
                                        let url = 'Detalle.jsp';
                                        window.location.href = url;
                                    },

                                    onCancel: function (data) {
                                        alert("Pago Cancelado")
                                        console.log(data);
                                    }
                                }).render('#paypal-button-container');
                            </script>



                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%@include file="footer.jsp" %>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="servletPago" method="POST">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Pago</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <p>Número de tarjeta:</p>
                            <input type="number" class="form-control" name="numTarjeta" required>
                            <br>
                            <p>Código CVV:</p>
                            <input type="number" class="form-control" name="numCVV" required>
                            <br>
                            <p>Monto a pagar:</p>
                            <input type="number" class="form-control" name="monto" value="${totalPagar}" readonly>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-dark" data-dismiss="modal">Cerrar</button>
                            <input type="submit" value="Pagar" class="btn btn-danger" name="btnPagar">
                        </div>

                    </form>    
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body> 
</html>


