<%-- 
    Document   : index
    Created on : 22/09/2022, 03:59:16 PM
    Author     : Melani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Storage LYM</title>
        <link rel="stylesheet" type="text/css" href="./CSS/CSS.css"/>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


    </head>
    <body class="cuerpo">
        <%-- Este es el navbar--%>
        <div class="nav justify-content-end">
            <div id="circulo"></div>
            <a href="/StorageLYM/jsp/Registro.jsp"><button type="button" class="botonInvisible">Registrarse</button></a>
            <a href="/Prueba/jsp/InicioSesion.jsp"><button type="button" class="botonBasico">Inicio sesión</button></a>
        </div>


        <%-- Este es el mensaje de la pagina principal --%>
        <div class="texto">
            <h1 style="font-size: 45px">Tapicería de autos <br> y muebles </h1>
            &nbsp;

            <%-- Logo de la pagina y texto--%>
            <p class="parrafo"> 
                <img src="Images/Logo PPI 2022-2 Sin fondo.png" class="imagen">
                Es un hecho establecido desde hace mucho tiempo que un lector <br>
                se distraerá con el contenido legible de una página cuando mire <br>
                su diseño. El punto de usar Lorem Ipsum es que tiene una distribución</p>
        </div>


        <%-- Linea separadora--%>
        <hr class="linea" size="2px"/>

        <%-- Link a saber más--%>
        <a class="sabermas" href="#">Saber más<img src="Images/IconoSaberMas.png" class="iconoSaberMas"></a>
    </body>
</html>
