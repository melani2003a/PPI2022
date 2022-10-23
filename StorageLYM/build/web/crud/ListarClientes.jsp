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
    List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
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
         
       <!-- Tabla en donde se mostrara la informaicon detallada de los clientes -->
        <h1>Informacion Clientes</h1>
        <table border="1">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE </th>
                    <th>APELLIDO</th>
                    <th>DOCUMENTO</th>
                    <th>TELEFONO</th>
                    <th>CELULAR</th>
                    <th>CORREO</th>
                    <th>CONTRASEÑA</th>
                    <th>EMPRESA</th>
                    <th>TELEFONO EMPRESA</th>
                    <th>DIRECCION EMPRESA</th>
                    <th>RUT</th>
                    <th>TIPO DE CLIENTE</th>
                </tr>
            
                <c:forEach var="item" items="${lista}">
                    <tr>
                        <td>${item.id_cliente}</td>
                        <td>${item.nombre_cliente}</td>
                        <td>${item.apellido_cliente}</td>
                        <td>${item.documento_cliente}</td>
                        <td>${item.telefono_cliente}</td>
                        <td>${item.celular_cliente}</td>
                        <td>${item.correo}</td>
                        <td>${item.contraseña}</td>
                        <td>${item.nombre_empresa}</td>
                        <td>${item.telefono_empresa}</td>
                        <td>${item.ubicacion_empresa}</td>
                        <td>${item.rut_empresa}</td>
                        
                    </tr>
                </c:forEach>
            
        </table>
         
         
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
