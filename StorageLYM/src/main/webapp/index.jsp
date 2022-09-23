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
        <title>STORAGE LYM</title>
        <link rel="stylesheet" type="text/css" href="CSS/CSS.css"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


    </head>
    <body class="cuerpo">
        <%-- Este es el navbar de la pantalla principal--%>
        <nav>
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="https://puntorojo.com.pe/wp-content/uploads/2022/05/punto.png" class="punto">
                </a>
            </div>
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="#" style="color: #FF0000">Resgistrarse</a>
                </li>
                <li class="nav-item"> <%--LInk en el nadvar que funciona como boton de inicio de sesion--%>
                    <button type="button" class="btn btn-danger nav-link" href="#" >
                        Iniciar Sesion
                    </button>
                </li>
            </ul>         
        </nav>

        <%-- Este es el mensaje de la pagina principal --%>
        <div class="texto">
            <h1 style="font-size: 50px">Tapiceria de autos </h1>
            <h1 style="font-size: 50px">  y muebles</h1>
          
                <%-- Logo de la pagina y texto--%>
                <p> <img src="Images/Logo PPI 2022-2 Sin fondo.png" class="imagen">
                Es un hecho establecido desde hace mucho tiempo que un lector
                se distraerá con el contenido legible de una página cuando mire 
                su diseño. El punto de usar Lorem Ipsum es que tiene una distribución 
                de letras más o menos normal, en lugar de usar 'Contenido aquí, contenido 
                aquí', lo que hace que parezca un inglés legible. Muchos paquetes de autoedición
                y editores de páginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado,
                y una búsqueda de 'lorem ipsum' descubrirá muchos sitios web que aún están en su infancia.
                Varias versiones han evolucionado a lo largo de los años, a veces por accidente, a veces a
                propósito (humor inyectado y cosas por el estilo).</p>
        </div>
                
                
                <%-- Linea separadora--%>
                <hr size="2px" color="black" style="margin-right:80px; margin-left:80px"/>


    </body>
</html>
