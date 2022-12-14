<%-- 
    Document   : Autos
    Created on : 24/09/2022, 07:24:12 AM
    Author     : Valeria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title class="titulo">Autos</title>
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
               <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Clientes.jsp"><button type="button" class="botonInvisible2">Clientes</button></a>
                </a>
            </li>
            <li class="nav-item">
                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Autos.jsp"><button type="button" class="botonInvisible2">Autos</button></a>
                </a>
            </li>
            <li class="nav-item">
                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Proveedores.jsp"><button type="button" class="botonInvisible2">Proveedores</button></a>
                </a>
            </li>
            <li class="nav-item1">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/index.jsp"><button type="button" class="botonBasico4">Salir</button></a>
                </a>
            </li>
        </ul>

        <h1 class="titulo">Autos</h1>
        <p class="cliente">Lorem ipsum es el texto que se usa habitualmente en dise??o gr??fico en 
            demostraciones de tipograf??as o de borradores de dise??o para probar 
            el dise??o visual antes de insertar el texto final</p>

        <!-- Contenedores de la informacion -->
        <div id="normal">
            <div class="rows"> 
                <p class="nombres">
                    <img src="../Images/check.png" class="checkRows">
                    Mercedes 
                    <img src="../Images/editar.png" class="editar">
                    <img src="../Images/delete.png" class="eliminar">
                </p>   
            </div>
            <div class="rows"> 
            <p class="nombres">
                    <img src="../Images/check.png" class="checkRows">
                    Logan RE
                    <img src="../Images/editar.png" class="editar">
                    <img src="../Images/delete.png" class="eliminar">
                </p>
            </div>
            <div class="rows">
            <p>
                    <img src="../Images/check.png" class="checkRows">
                    Audi Rou
                    <img src="../Images/editar.png" class="editar">
                    <img src="../Images/delete.png" class="eliminar">
                </p>
            </div>
            <div class="rows"> 
            <p>
                    <img src="../Images/check.png" class="checkRows">
                    Mercedes
                    <img src="../Images/editar.png" class="editar">
                    <img src="../Images/delete.png" class="eliminar">
                </p>
            </div>
            <div class="rows"> 
            <p>
                    <img src="../Images/check.png" class="checkRows">
                    Audi Rou
                    <img src="../Images/editar.png" class="editar">
                    <img src="../Images/delete.png" class="eliminar">
                </p>
            </div>
               <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Clientes.jsp"><button type="button" class="botonBasico5">Nuevo Auto</button></a>
        </div>       

    <!-- Navbar de final de pagina que servira de apoyo para las demas paginas --> 
    <footer>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Clientes.jsp"><button type="button" class="botonInvisible2">Clientes</button></a>
                </a>
            </li>
            <li class="nav-item">
                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Autos.jsp"><button type="button" class="botonInvisible2">Autos</button></a>
                </a>
            </li>
            <li class="nav-item">
                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <a href="/StorageLYM/jsp/Proveedores.jsp"><button type="button" class="botonInvisible2">Proveedores</button></a>
                </a>
            </li>
        </ul>
    </footer>
</body>
</html>
