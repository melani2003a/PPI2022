<%-- 
    Document   : EditarClientes
    Created on : 21/10/2022, 04:18:36 PM
    Author     : Melani
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <!--    <link rel="stylesheet" type="text/css" href="CSS/CSS.css"/> -->
        <link rel="stylesheet" href="../CSS/CSS.css"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    </head>
    
    <body>
         <!-- Nav principal que servira para esta y las demas paginas -->
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
         
        <!--Form que se utiliza para ingresar y editar un cliente-->
        <h1>
        <c:if test="${item.id_cleinte == 0}" > Nuevo Cliente </c:if>
        <c:if test="${item.id_cliente != 0}"> Editar Cliente </c:if>
        </h1>
        <form action="MainController" method="POST">
            <table border="1">
                <tr>
                    <td>ID</td>
                    <td><input type="number" name="id del cliente" value="${item.id_cliente}"></td>
                </tr>
                <tr>
                    <td>CLIENTE</td>
                    <td><input type="text" name="nombre del cliente" value="${item.nombre_cliente}"></td>
                </tr>
                <tr>
                    <td>APELLIDO</td>
                    <td><input type="text" name="apellidodel cliente" value="${item.aepllido_cliente}"></td>
                </tr>
                <tr>
                   <td>DOCUMENTO</td>
                    <td><input type="text" name="documento del cliente" value="${item.documento_cliente}"></td>
                </tr>
                <tr>
                    <td>TELEFONO</td>
                    <td><input type="text" name="telefono del cliente" value="${item.telefono_cliente}"></td>
                </tr>

                <tr>
                    <td>CELULAR</td>
                    <td><input type="text" name="celular del cliente" value="${item.celular_cliente}"></td>
                </tr>
                <tr>
                    <td>CORREO</td>
                    <td><input type="text" name="correo del cliente" value="${item.correo}"></td>
                </tr>
                <tr>
                     <td>CONTRASEÑA</td>
                    <td><input type="text" name="contraseña del cliente" value="${item.contraseña}"></td>
                </tr>
                <tr>
                    <td>EMPRESA</td>
                    <td><input type="text" name="nombre de la empresa" value="${item.nombre_empresa}"></td>
                </tr>
                <tr>
                    <td>TELEFONO</td>
                    <td><input type="text" name="telefono de la empresa" value="${item.telefono_empresa}"></td>
                </tr>
                <tr>
                    <td>DIRECCION EMPRESA</td>
                    <td><input type="text" name="direccion de la empresa" value="${item.ubicacion_empresa}"></td>
                </tr>
                <tr>
                    <td>RUT</td>
                    <td><input type="text" name="nombre del cliente" value="${item.rut_empresa}"></td>
                </tr>
                <tr>
                     <td>TIPO CLIENTE</td>
                    <td><input type="text" name="tipo de cliente" value="${item.id_tipo_cliente_fk}"></td>
                </tr>
                <tr>
                     <td>TIPO CLIENTE</td>
                <a href="/index.jsp" type="submit"><button type="button" class="botonBasico5">Enviar</button></a>
                </tr>
            </table>
        </form>
                
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
