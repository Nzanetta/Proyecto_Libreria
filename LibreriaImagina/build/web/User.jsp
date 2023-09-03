<%-- 
    Document   : User
    Created on : 06-06-2023, 1:05:04
    Author     : Nls
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page User</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        
        
    </head>
    <body>
        <%@include file="pfUser.jsp" %>
        <div class="container text-center" style="margin-top: 100px">    
            <div class="row">
                <div class="col-sm-3 well">
                    <div class="well">
                        <p><a href="#">Mi Perfil</a></p>
                        <img src="IMG/avatar.jpg" class="img-circle"  width="40%">
                        <!--SALUDO AL USUARIO NORMAL-->
                        <c:if test="${username!=null}">
                            <c:if test="${tipo==1}">
                                <div class="aler alert-success"> Bienvenido ${username}</div>
                            </c:if>
                        </c:if>
                        <c:if test="${msj!=null}">
                            <div class="alert alert-success" role="success">
                                <li><a href="#Respuesta">${msj}</a></li>
                            </div>
                        </c:if>
                        <c:if test="${err!=null}">
                            <div class="alert alert-danger" role="alert">
                                <li><a href="#Respuesta">${err}</a></li>
                            </div>
                        </c:if>
                                <c:if test = "${idIns!=null}">
                                <h3>Codigo de seguimiento</h3>
                                
                                <h4>${idIns}</h4>
                                </c:if>
                    </div>
                    
                    <div class="alert alert-warning fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <h2><strong>Hola ${username}!</strong></h2>
                        <h3><strong>¿Desea alguno de nuestros servicios?</strong></h3>

                        <p class="text-center"><a style="color: #8a6d3b;" href="Controlador?accion=productos"><strong>Productos</strong></a></p>
                        <p class="text-center"><a style="color: #8a6d3b;" href="Servicio.jsp"><strong>Mantenciones</strong></a></p>
                        <p class="text-center"><a style="color: #8a6d3b;" href="Servicio.jsp"><strong>Reparaciones</strong></a></p>
                    </div>

                </div>
                <div class="col-sm-7">

                    <!--PRIMER ESPACIO-->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-left">
                                <div class="panel-body">
                                    <h3 class="text-center">Seguimiento en Linea</h3>
                                    <p>El seguimiento en linea, también conocido como tracking. Consiste en ofrecer a los cientes entregas más rapidas
                                        y una experiencia de <strong>compra</strong> positiva. Con ayuda de la tecnología, visualizarás en que estado esta tu pedido.
                                        <br>Existen <strong>4 etapas</strong>..¿Cuales son estas?. <br>
                                        <strong>
                                            1.Preparacion del pedido<br>
                                            2.Envio del pedido<br>
                                            3.Entrega en curso<br>
                                            4.Entrega Terminada.
                                        </strong><br>

                                    <h3 class="text-center">Para visualizar el estado de su Seguimiento,
                                        <br> precione el Botón e Ingresé el Codigó de su reserva.</h3>
                                    </p>
                                    <!-- boton del modal -->
                                    <a href="SeguimientoLinea.jsp"><button class="form-control">  Seguimiento en Linea</button></a>
  



                                </div>
                            </div>
                        </div>
                    </div>

                    <!--BODY O CUERPO DE LA PAG-->
                    


                </div>
                
            </div>
        </div>

        
                        
    </body>
   
  
    
</html>