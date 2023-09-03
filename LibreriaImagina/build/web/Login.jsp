<%-- 
    Document   : Login
    Created on : 10-06-2022, 17:40:07
    Author     : Nicolas
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="jumbotron text-center"
             style="background-image: url('IMG/Portada.jpg')">
            
        </div>
        
        <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <br>
        
        <h1 class="text-center">Iniciar sesión</h1>
        
        
        <img src="IMG/img_568656.png" alt="Imagen de inicio de sesión" class="img-fluid mx-auto d-block img-thumbnail" style="max-width: 200px; max-height: 200px;">
        <form action="servletLogin" method="POST">
          <table class="table">
            <tr>
              <td>Usuario:</td>
              <td><input type="text" name="txtUsuario" class="form-control" placeholder="Ingrese usuario aquí..." required></td>
            </tr>
            <tr>
              <td>Contraseña:</td>
              <td><input type="password" name="txtPassword" class="form-control" placeholder="Ingrese contraseña aquí..." required></td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" class="btn btn-primary btn-block" name="btnLogin" value="Entrar"></td>
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
    </div>
  </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
    
        
    </body>
</html>