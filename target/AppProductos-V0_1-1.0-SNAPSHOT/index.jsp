<%-- 
    Document   : index
    Created on : 8 nov. de 2022, 20:45:03
    Author     : MARCO_T_EMERGENTES
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%

    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <h2><center><br>SEGUNDO PARCIAL TEM-742
        <br>NOMBRE: MARCO ANTONIO TAMBO ARCANI
        <br>CARNET: 8373276
    </h2></center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#B0C4DE"><center>
        <h1>PRODUCTOS</h1>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <br><br>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th>EDITAR</th>
                <th>ELIMINAR</th>
            </tr>
            <%
                if (lista != null){
                for(Productos item : lista){
                
                %>
              
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion()  %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria()  %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                      onclick="return confirm('esta seguro de eliminar ?')">Eliminar</a></td>
                
            </tr>
            <%
                }
                }
                %>
        </table>
    </body>
</html>
