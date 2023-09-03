<%-- 
    Document   : header
    Created on : 11-05-2023, 20:31:11
    Author     : Nicolas
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="stylesheet" href="css/estilo.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <title>Libreria Imagina</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Libreria Imagina</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="Controlador?accion=productos">Productos</a></li>
                        <li class="nav-item"><a class="nav-link" href="Servicio.jsp">Servicio</a></li>
                        
                        <!-- Carrito -->
                        <li class="nav-item"><a class="nav-link" href="Controlador?accion=Carrito">
                                <i class="fas fa-cart-plus">(<label style="color: darkorange">${contador}</label>)</i>Carrito</a></li>
                        <!-- Carrito-->
                        
                                <c:if test="${tipo!=null}">
                        <c:if test="${tipo==1}">
                        <li class="nav-item"><a class="nav-link" href="Agregar.jsp">Agregar</a></li>
                        <li class="nav-item"><a class="nav-link" href="EliminarLibro.jsp">Eliminar</a></li>
                        <li class="nav-item"><a class="nav-link" href="ListadoLibros">Listar</a></li>
                        
                        </c:if>
                        <li class="nav-item"><a class="nav-link" href="User.jsp">Perfil</a></li>
                        </c:if>
                           
                        <ul class="nav navbar-nav navbar-right">
                        <c:if test="${username==null}">
                        <li><a href="Login.jsp" class="btn btn-primary">Login</a></li>
                        </c:if>
                        <c:if test="${username!=null}">
                        <a href="servletLogin" class="btn btn-danger">Cerrar Sesión</a>
                        </c:if>
                        </ul>
                                                
                    </ul> 
                </div>
            </div>
        </nav>
    </body>
</html>
