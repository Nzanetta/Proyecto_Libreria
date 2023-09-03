<%-- 
    Document   : pfUser
    Created on : 06-06-2023, 1:04:55
    Author     : Nls
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

        <!--FONT SIZE-->
        <link href="https://fonts.googleapis.com/css2?family=Tapestry&display=swap" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/js/all.min.js"></script>
        <!--PARA EL SCROLL DE CONTACTO-->
        <style>
            body {
                font-family: proxima-nova;
                position: relative; 
            }
           
            #sectionFooter {padding-top:50px;height:250px;color: #fff; background-color: #333;}
            
           
        </style>

    </head>
   
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <!--NAV BAR-->
        <nav class="navbar navbar-default navbar-fixed-top " style="background-color: #fff; border-style: none; font-size: 17px;">
            <div class="container-fluid">
                <div class="navbar-header">
                    
                    <!--BOTON RESPONSIVE O ESCONDER EL MENU-->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                        <span class="burger-inner header-menu-icon-doubleLineHamburger"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--LOGO DE LA EMPRESA-->
                    <a class="navbar-brand" href="index.jsp" style="">Imagina</a>
                </div>

                <!--DIVISIONES DEL MENU-->
                <ul class="nav navbar-nav navbar-right collapse navbar-collapse" id="myNavbar">
                    <li><a href="index.jsp">Inicio</a></li>

                    
                     
                      <!--DIVISION DE USUARIO-->
                    <c:if test="${username!=null}">
                        <li><a href="servletLogin">Cerrar Sesión</a></li>
                    </c:if>
                </ul>
            </div>      
        </nav>
    </body>
</html>