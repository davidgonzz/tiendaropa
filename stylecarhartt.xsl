<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        
        <html lang="en">
            
            <head>
                <title>TIENDAROPA</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
                <link rel="stylesheet" href="style.css"/>
            </head>
            
            <body>
                <header>
                    <nav class="navbar navbar-expand-lg bg-white fixed-top mt-0">
                        <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="container-fluid">
                            <div class="collapse navbar-collapse text-dark" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                           aria-expanded="false">
                                            <strong>Ropa</strong>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#" onclick="document.getElementById('sudadera').style = 'display:flex;'; document.getElementById('camiseta').style = 'display:none;' ; document.getElementById('pantalones').style = 'display:none;' ;">Sudaderas</a></li>
                                            <li><a class="dropdown-item" href="#" onclick="document.getElementById('camiseta').style = 'display:flex;'; document.getElementById('sudadera').style = 'display:none;'; document.getElementById('pantalones').style = 'display:none;';">Camisas</a></li>
                                            <li><a class="dropdown-item" href="#" onclick="document.getElementById('pantalones').style = 'display:flex;'; document.getElementById('camiseta').style = 'display:none;'; document.getElementById('sudadera').style = 'display:none;';">Pantalones</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Tiendas</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Colecciones</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="container-fluid justify-content-center">
                            <ul class="nav">
                                <li class="nav-item">
                                    <a class="navbar-brand" href="">
                                        <img class="my-1" src="img/logo.jpg" alt="" height="40px"/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="container-fluid justify-content-end">
                            <ul class="nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <strong class="text-dark">Paises</strong>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">España (EUR €)</a></li>
                                        <li><a class="dropdown-item" href="#">Singapur (SGD $)</a></li>
                                        <li><a class="dropdown-item" href="#">Estados Unidos (USD $)</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-dark" aria-current="page" href="#">Buscar</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-dark" href="#">Cesta(0)</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    
                </header>
                <main>
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2500">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/carousel1.png" class="d-block w-100" alt="..."/>
                            </div>
                            <div class="carousel-item">
                                <img src="img/carousel2.png" class="d-block w-100" alt="..."/>
                            </div>
                            <div class="carousel-item">
                                <img src="img/carousel3.png" class="d-block w-100" alt="..."/>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    
                    <div class="row mt-4 justify-content-center" id="camiseta">
                        
                        <xsl:for-each select="tienda/camiseta">
                            <div class="col-xl-3 col-lg-4 mb-3 ">
                                <div class="card rounded-0 border-0">
                                    <img class="card-img-top " src="{foto}" alt=""/>
                                    <div class="card-body ">
                                        <h4 class="card-title text-center "><strong><xsl:value-of select="nombre"/></strong></h4>
                                        <p class="card-text text-center"><xsl:value-of select="precio"/>€</p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <div class="row mt-1 mx-1 justify-content-center w-70" id="sudadera">
                        <xsl:for-each select="tienda/sudadera">
                            <div class="col-xl-3 col-lg-4 col-md-6 mb-3 ">
                                <div class="card rounded-0 border-0">
                                    <img class="card-img-top" src="{foto}" alt=""/>
                                    <div class="card-body ">
                                        <h4 class="card-title text-center "><strong><xsl:value-of select="nombre"/></strong></h4>
                                        <p class="card-text text-center"><xsl:value-of select="precio"/>€</p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div> 
                    <div class="row mt-1 mx-1 justify-content-center w-70" id="pantalones">
                        <xsl:for-each select="tienda/pantalones">
                            <div class="col-xl-3 col-lg-4 col-md-6 mb-3 ">
                                <div class="card rounded-0 border-0">
                                    <img class="card-img-top" src="{foto}" alt=""/>
                                    <div class="card-body ">
                                        <h4 class="card-title text-center "><strong><xsl:value-of select="nombre"/></strong></h4>
                                        <p class="card-text text-center"><xsl:value-of select="precio"/>€</p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    
                </main> 
                <footer>
                    <nav>
                        <div class="card text-center">  
                            <div class="card-body">
                                <i class="fa fa-instagram fa-2x me-3" aria-hidden="true"></i>
                                <i class="fa fa-facebook fa-2x me-3" aria-hidden="true"></i>
                                <i class="fa fa-youtube-play fa-2x me-3" aria-hidden="true"></i>
                                <i class="fa fa-twitter fa-2x me-3" aria-hidden="true"></i>   
                            </div>
                        </div>
                    </nav>
                    <nav class="navbar navbar-expand-sm bg-warning">
                        <div class="container justify-content-center mx-auto">
                            <div class="col-xl-7 text-xl-center text-white">
                                <h6 class= "mt-3"><strong>ENVÍOS: ESPAÑA (2-3 DÍAS) | RESTO DEL MUNDO (4-7 DÍAS)</strong></h6>
                            </div>
                        </div>
                    </nav>
                    
                    
                </footer>
                
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>

