<%-- 
    Document   : inicioSesion
    Created on : 6/10/2022, 08:27:23 PM
    Author     : Melani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
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
			<div class="titulo">
				<h2>Iniciar Sesion</h2>
			</div>

			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="  Usuario" id="login-name">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="  Contraseña" id="login-pass">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<a href="../MainController3?op=list"><button type="button" class="botonBasico3">Iniciar Sesión</button></a>
				
			</div>
		</div>
	</div>
    </body>
</html>
