<%-- 
    Document   : EditarClientes
    Created on : 21/10/2022, 04:18:36 PM
    Author     : Melani
--%>

<%@page import="com.mycompany.storagelym.modelo.Cliente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente cliente = (Cliente)request.getAttribute("cliente");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <!--    <link rel="stylesheet" type="text/css" href="CSS/CSS.css"/> -->
        <link rel="stylesheet" href="./CSS/CSS.css"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    </head>
    
    <body  class="cuerpo">
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
        <h1 class="titulo">
        <c:if test="${item.id_cliente == 0}" > Nuevo Cliente </c:if>
        <c:if test="${item.id_cliente != 0}"> Editar Cliente </c:if>
        </h1>
        <form action="MainController3" method="post">
            <table class="editarCliente">
                <tr>
                    <td><input type="hidden" name="id_cliente" value="${cliente.id_cliente}"></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre_cliente" value="${cliente.nombre_cliente}"></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="primer_apellido" value="${cliente.apellido_cliente}"></td>
                </tr>
                <tr>
                   <td>Documento</td>
                    <td><input type="text" name="documento_cliente" value="${cliente.documento_cliente}"></td>
                </tr>
                <tr>
                    <td>Celular</td>
                    <td><input type="text" name="celular_cliente" value="${cliente.celular_cliente}"></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo" value="${cliente.correo}"></td>
                </tr>
                <tr>
                     <td>Contrase??a</td>
                    <td><input type="password" name="contrase??a" value="${cliente.contrase??a}"></td>
                </tr>
                <tr>
                    <td>Empresa</td>
                    <td><input type="text" name="nombre_empresa" value="${cliente.nombre_empresa}"></td>
                </tr>
            </table>
                <button type="submit" value="Enviar" class="botonEnviar">Enviar</button></td>
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
