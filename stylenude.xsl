<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Nude</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>

<body>
    <header>
        <nav class="navbar navbar-expand-sm bg-light fixed-top">
            <div class="container justify-content-start mx-auto">
                <div>
                    <a class="navbar-brand" href="tiendaropa.html">
                        <img src="img/logonude.png" alt="" height="60px"/>
                    </a>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="col-4 mb-4	">
            <div class="card">
                <img class="card-img-top" src="https://nude-project.com/cdn/shop/files/CHERRYHOODASHback_315x.jpg?v=1701176919"
                    alt="" />
                <div class="card-body">
                    <h4 class="card-title">{nombre}</h4>
                    <div class="row mx-0 mb-2">
                        <div class="card-text col-6"></div>
                        <div class="col-6 text-end">
                            <h4 class="text-success">{precio}</h4>
                        </div>
                    </div>
                    <div class="text-end"><button class="btn btn-danger ">Añadir</button></div>
                </div>
            </div>
        </div>

    </main>
    <footer>

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