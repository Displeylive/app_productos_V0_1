<%-- 
    Document   : editar
    Created on : 8 nov. de 2022, 20:46:03
    Author     : MARCO_T_EMERGENTES
--%>
<%@page import="com.emergentes.modelo.Productos"%>
<%

   Productos item = (Productos)request.getAttribute("miProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#B0C4DE"><center>
        <h1><%= (item.getId() == 0) ? "NUEVO REGISTRO" : "EDITAR REGISTRO" %></h1>
        <form action="MainController" method="post">           
            <input type="hidden" name="id" value="<%= item.getId() %>">
        <table>
                
              <tr>
                <td>DESCRIPCION </td>
                <td><input type="text" name="descripcion" value="<%= item.getDescripcion() %>" /></td>
              </tr>
              <tr>
                <td>CANTIDA </td>
                <td><input type="text" name="cantidad" value="<%= item.getCantidad() %>" /></td>
              </tr>
              <tr>
                <td>PRECIO </td>
                <td><input type="text" name="precio" value="<%= item.getPrecio() %>" /></td>
              </tr>
              <tr>
                <td>CATEGORIA </td>
                <td><input type="text" name="categoria" value="<%= item.getCategoria() %>" /></td>
              </tr>
              <tr>
                <td></td>
                <td><input type="submit" value="ENVIAR" /></td>
              </tr>
            </table>
        </form>
    </body>
</html>
