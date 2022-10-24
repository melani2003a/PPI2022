<%-- 
    Document   : ListarClientes
    Created on : 21/10/2022, 03:58:45 PM
    Author     : Melani
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.storagelym.modelo.Cliente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Cliente cliente = (Cliente) request.getAttribute("cliente");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del cliente ${cliente.nombre_cliente}</title>
        <!--    <link rel="stylesheet" type="text/css" href="CSS/CSS.css"/> -->
        <link rel="stylesheet" href="./CSS/CSS.css"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    </head>
    <body class="cuerpo">
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

        <!-- Tabla en donde se mostrara la informacion detallada de un cliente -->
        <h1 class="titulo">Datos del cliente ${cliente.nombre_cliente} ${cliente.apellido_cliente} </h1>

        <table class="table table-responsive">
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Documento</th>
                    <th scope="col">Contacto</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Empresa</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${cliente.nombre_cliente}</td>
                    <td>${cliente.apellido_cliente}</td>
                    <td>${cliente.documento_cliente}</td>
                    <td>${cliente.celular_cliente}</td>
                    <td>${cliente.correo}</td>
                    <td>${cliente.nombre_empresa}</td>
                </tr>
            </tbody>
        </table>

        <div class="botones">
            <a href="MainController3?op=list"><button type="button" class="botonesDetalle">Atrás</button></a>
            <a href="MainController3?op=list"><button type="hidden" class="botonesDetalle">Clientes</button></a>
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
