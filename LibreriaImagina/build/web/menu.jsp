<%-- 
    Document   : menu
    Created on : 11-05-2023, 20:06:33
    Author     : Nicolas
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Libreria Imagina</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5">
                <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="IMG/fondolib.jpg" alt="..." /></div>
                <div class="col-lg-5">
                    <h1 class="font-weight-light">Libreria Imagina</h1>
                    <p>Bienvenido a Libreria Imagina! Donde podras encontrar una inmensa cantidad de libros del genero que busques, contamos con tecnicos preparados para restaurar y hacer mantencion a tus libros preciados.</p>
                    <a href="Controlador?accion=productos" class="btn btn btn-dark">Ver Productos</a>
                </div>
            </div>
            <div class="section-title text-center mb-50">
                <h2>Nuestros Servicios</h2>
                <P>
                    "Contamos con servicios de Mantencion y Restauracion de libros"
                    <br>
                    " Dirigete a lo que desees "
                 
                </P>
                
            </div>
            <div class="row gx-4 gx-lg-5">
                <div class="card-group">
                    <div class="card">
                        <img src="IMG/librosss.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                        <h5 class="card-title text-center" >PRODUCTOS</h5>
                        
                        <div class="d-grid gap-2">
                            <a href="Controlador?accion=productos" class="btn btn btn-dark">Ir</a>
                            
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="IMG/lib2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                        <h5 class="card-title text-center">MANTENCIONES</h5>
                        
                        <div class="d-grid gap-2">
                            <a href="Servicio.jsp" class="btn btn btn-dark">Ir</a>
                            
                        </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="IMG/librosss.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                        <h5 class="card-title text-center">RESTAURACIONES</h5>
                        
                        <div class="d-grid gap-2">
                            <a href="Servicio.jsp" class="btn  btn btn-dark">Ir</a>
                            
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
            
            <br>
            <br>
            <!-- carousel-->
            <!-- Call to Action-->
            
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="IMG/sjfghuijgh.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Libreria Imagina</h5>
                    <p>El Sitio que estabas buscando.</p>
                </div>
                </div>
                <div class="carousel-item">
                    <img src="IMG/lib55.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Amplia variedad de libros</h5>
                    <p>Tenemos todo tipo de libro que estes buscando.</p>
                </div>
                </div>
                <div class="carousel-item">
                    <img src="IMG/lib56.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5></h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            </div>
            <br>
            <br>
            <div class="section-title text-center mb-50">
                <h2>NOVEDADES</h2>
                <P>
                    " NO TE LO PIERDAS "
                    <br>
                    " Los ultimos libros añadidos para ti..."
                 
                </P>
                
            </div>
            <br>
            <br>
            <!-- Content Row-->
            <div class="row gx-4 gx-lg-5">
                <div class="card-group">
                    <div class="card">
                        <img src="IMG/El_principito.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                      </div>
                      <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                      </div>
                    </div>
                    <div class="card">
                        <img src="IMG/El caleuche.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                      </div>
                      <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                      </div>
                    </div>
                    <div class="card">
                        <img src="IMG/Sherlock.jpg" class="card-img-top " margin="50" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                      </div>
                      <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                      </div>
                    </div>
                  </div>
                <div>
                    <hr>
                <img src="IMG/Momentos-Estelares.jpg" class="rounded float-start" alt="...">
                <img src="IMG/Dos-.jpg" class="rounded float-end" alt="...">
            </div>
            </div>
            
            <br>
            <br>
            
            
            <br>
            <br>
            
            <div class="section-title  mb-50">

                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <div class="col">
                      <div class="card">
                        <img src="IMG/Portada.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                      <div class="card">
                        <img src="IMG/Portada.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                      <div class="card">
                          <img src="IMG/Portada.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                      <div class="card">
                        <img src="IMG/Portada.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                <br>
                <br>
            </div>
            
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                      <img src="IMG/imgcars.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                      <img src="IMG/imgcars.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                      <img src="IMG/imgcars.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>
            
            
            
        </div>
        
        
    </body>
</html>
