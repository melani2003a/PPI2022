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
                <a class="nav-link active" aria-current="page" href="./Clientes.jsp">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Autos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Proveedores</a>
            </li>
            <li class="nav-item1">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                    <button type="button" class="btn btn-danger">
                        Regresar <img src="../Images/image_processing20200508-13692-15uuikj.png" class="cuadro">
                    </button>
                </a>
            </li>
        </ul>

        <h1 class="titulo">Clientes</h1>
        <p class="cliente">Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en 
            demostraciones de tipografías o de borradores de diseño para probar 
            el diseño visual antes de insertar el texto final</p>

        <!-- Contenedores de la informacion -->
        <div id="normal">
            <div class="red"> 
                <p>
                    <img src="../Images/7508.png" class="chulo">
                    Alejandro Perez 
                    <img src="../Images/1486504369-change-edit-options-pencil-settings-tools-write_81307.png" class="editar">
                    <img src="../Images/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash_81361.png" class="eliminar">
                </p>   
            </div>
            <div class="blue"> 
            <p>
                    <img src="../Images/7508.png" class="chulo">
                    Luis Castaño A.
                    <img src="../Images/1486504369-change-edit-options-pencil-settings-tools-write_81307.png" class="editar">
                    <img src="../Images/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash_81361.png" class="eliminar">
                </p>
            </div>
            <div class="orange">
            <p>
                    <img src="../Images/7508.png" class="chulo">
                    Camille Ruiz B.
                    <img src="../Images/1486504369-change-edit-options-pencil-settings-tools-write_81307.png" class="editar">
                    <img src="../Images/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash_81361.png" class="eliminar">
                </p>
            </div>
            <div class="green"> 
            <p>
                    <img src="../Images/7508.png" class="chulo">
                    Alvaro Lopez R.
                    <img src="../Images/1486504369-change-edit-options-pencil-settings-tools-write_81307.png" class="editar">
                    <img src="../Images/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash_81361.png" class="eliminar">
                </p>
            </div>
            <div class="green"> 
            <p>
                    <img src="../Images/7508.png" class="chulo">
                    Luisa Domiguez
                    <img src="../Images/1486504369-change-edit-options-pencil-settings-tools-write_81307.png" class="editar">
                    <img src="../Images/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash_81361.png" class="eliminar">
                </p>
            </div>
            <div class="clientes">
                <button type="button" class="btn btn-danger" data-bs-toggle="button" aria-pressed="true" style="width: 250px">
                Nuevo Cliente <img src="../Images/image_processing20200508-13692-15uuikj.png" class="cuadro">
            </button>
            </div>
        </div>       

    <!-- Navbar de final de pagina que servira de apoyo para las demas paginas --> 
    <footer>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="./Clientes.jsp">Clientes</a>
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
