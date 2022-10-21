<%-- 
    Document   : Clientes
    Created on : 24/09/2022, 07:24:12 AM
    Author     : Melani
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.storagelym.modelo.Cliente"%>
<%@page import="com.mycompany.storagelym.modeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
%>
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
    <!-- En este listado solo se vera el nombre correspondiente al cliente -->
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

        <h1 class="titulo">Clientes</h1>
        <p class="cliente">Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en 
            demostraciones de tipografías o de borradores de diseño para probar 
            el diseño visual antes de insertar el texto final</p>


        <!-- Contenedores de la informacion -->
        <div id="normal">
            <c:forEach var="item" items="${lista}">
                <div class="rows"> 
                    <p class="nombres">
                        <a href="MainController?op=list"><img src="../Images/check.png" class="checkRows"></a>
                            ${item.nombre_cliente}
                        <a href="MainController?op=editar=${item.id_cliente}"><img src="../Images/editar.png" class="editar"></a>
                        <a href="MainController?op=eliminar=${item.id_cliente}" onclick="return(confirm('Estas seguro de eliminar el resgistro?'))"><img src="../Images/delete.png" class="eliminar"></a>

                    </p>   
                </div>

                <div class="rows"> 
                    <p class="nombres">
                        <img src="../Images/check.png" class="checkRows">
                        ${item.nombre_cliente}
                        <a href="MainController?op=editar=${item.id_cliente}"><img src="../Images/editar.png" class="editar"></a>
                        <a href="MainController?op=eliminar=${item.id_cliente}" onclick="return(confirm('Estas seguro de eliminar el resgistro?'))"><img src="../Images/delete.png" class="eliminar"></a>



                    </p>
                </div>
                <div class="rows">
                    <p>
                        <img src="../Images/check.png" class="checkRows">
                        ${item.nombre_cliente}
                        <a href="MainController?op=editar=${item.id_cliente}"><img src="../Images/editar.png" class="editar"></a>
                        <a href="MainController?op=eliminar=${item.id_cliente}" onclick="return(confirm('Estas seguro de eliminar el resgistro?'))"><img src="../Images/delete.png" class="eliminar"></a>

                    </p>
                </div>
                <div class="rows"> 
                    <p>
                        <img src="../Images/check.png" class="checkRows">
                        ${item.nombre_cliente}
                        <a href="MainController?op=editar=${item.id_cliente}"><img src="../Images/editar.png" class="editar"></a>
                        <a href="MainController?op=eliminar=${item.id_cliente}" onclick="return(confirm('Estas seguro de eliminar el resgistro?'))"><img src="../Images/delete.png" class="eliminar"></a>

                    </p>
                </div>
                <div class="rows"> 
                    <p>
                        <img src="../Images/check.png" class="checkRows">
                        ${item.nombre_cliente}
                        <a href="MainController?op=editar=${item.id_cliente}"><img src="../Images/editar.png" class="editar"></a>
                        <a href="MainController?op=eliminar=${item.id_cliente}" onclick="return(confirm('Estas seguro de eliminar el resgistro?'))"><img src="../Images/delete.png" class="eliminar"></a>

                    </p>
                </div>
            </c:forEach>
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                <a href="MainController?op=nuevo"><button type="button" class="botonBasico5">Nuevo Cliente</button></a>

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
