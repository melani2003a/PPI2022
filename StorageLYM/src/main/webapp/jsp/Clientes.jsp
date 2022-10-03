<%-- 
    Document   : Clientes
    Created on : 24/09/2022, 07:24:12 AM
    Author     : Melani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title class="titulo">Clientes</title>
        <!--    <link rel="stylesheet" type="text/css" href="CSS/CSS.css"/> -->
        <link rel="stylesheet" href="../CSS/CSS.css"/>
         <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    </head>
    <body class="cuerpo">

        <!<!-- Nav principal que servira para esta y las demas paginas -->
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Autos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Proveedores</a>
            </li>
            <li class="nav-item1">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <button type="button" class="btn btn-danger">Regresar</button>
                </a>
            </li>
        </ul>

        <h1 class="titulo">Clientes</h1>
        <p>Hol esto es un parrrafo</p>

        <!-- Contenedores de la informacion -->
        <div id="normal">
            <div class="red"> 
            
            Alejandro Perez
                
            </div>
            <div class="blue"> </div>
            <div class="orange"> </div>
            <div class="green"> </div>
        </div>      
    </div>
    
    <!-- Navbar de final de pagina que servira de apoyo para las demas paginas --> 
    <footer>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Autos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Ventas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Proveedores</a>
            </li>
        </ul>
    </footer>
</body>
</html>
