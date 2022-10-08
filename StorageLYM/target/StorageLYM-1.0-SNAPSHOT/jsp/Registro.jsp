<%-- 
Document   : Registro
Created on : 6/10/2022, 08:28:00 PM
Author     : Melani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
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
        <div class="register">
            <div class="register-screen">
                <div class="app-title">
                    <h1>Registrarse</h1>
                    <p class="parrafo">Es un hecho establecido desde hace mucho tiempo que un lector</p>
                </div>
                <div class=register-form">
                    <div class="control-group">
                        <input type="text" class="register-field" value="" placeholder="  Usuario" id="register-name">
                        <label class="register-field-icon fui-user" for="register-name"></label>
                    </div>

                    <div class="control-group">
                        <input type="password" class="register-field" value="" placeholder="  Contraseña" id="register-pass">
                        <label class="register-field-icon fui-lock" for="register-pass"></label>
                    </div>
                    <div class="dropdown">
                        <button class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            &nbsp; Rol
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item active" href="#">Cliente</a></li>
                            <li><a class="dropdown-item" href="#">Proveedor</a></li>
                        </ul>
                    </div>

                    <label class="form-check-label"><input type="checkbox" id="cbox1" value="true" class="check"> Aceptar términos y condiciones</label><br>

                    <a href="/StorageLYM/jsp/Clientes.jsp"><button type="button" class="botonBasico2">Registrarse</button></a>
                </div>

            </div>
        </div>
    </body>
</html>
