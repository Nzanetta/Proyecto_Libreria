<%-- 
    Document   : footer
    Created on : 11-05-2023, 19:32:01
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }

        .wrapper {
            min-height: 100%;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="wrapper">
        <div class="content">
            <!-- Aquí va el contenido principal de la página -->
        </div>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4 style="color:white">Contacto</h4>
                        <p style="color:white"><i class="fa fa-phone"></i> +56 2 12345678</p>
                        <p style="color:white"><i class="fa fa-envelope"></i> info@libreriaimagina.cl</p>
                    </div>
                    <div class="col-md-4">
                        <h4 style="color:white">Síguenos</h4>
                        <div class="social-links">
                            <a href="#" style="color:white"><i class="fab fa-facebook"></i></a>
                            <a href="#" style="color:white"><i class="fab fa-twitter"></i></a>
                            <a href="#" style="color:white"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h4 style="color:white">Ubicación</h4>
                        <p style="color:white"><i class="fa fa-map-marker"></i> Puente Alto, Chile</p>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p style="color:white">&copy; 2023 Alphilia. Todos los derechos reservados, Grupo 2 - DUOC UC</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>

 