<%-- 
    Document   : listadoPartituras
    Created on : 09-may-2019, 17:49:20
    Author     : alu2014044
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entities.Sheetmusic"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Partituras</title>
    </head>
    <body>
        
        
        
        
      
        <h1>Listado de Partituras</h1>
        
        
        <table>
            <tr><td>Titulo</td><td>Artista </td><td> Instrumento</td><td>Género </td><td>Dificultad </td><td>Autor</td></tr>
             <%
            ArrayList<Sheetmusic> listadoPartituras = (ArrayList<Sheetmusic>) request.getAttribute("status");
                        for (Sheetmusic s: listadoPartituras) {
                         %>   
                        
            <tr><td><%=  s.getTitle() %></td>
                <td><%=  s.getArtist() %></td>
                <td><%=  s.getInstrument() %></td>
                <td><%=  s.getGenre() %></td>
                <td><%=  s.getDifficulty() %></td>
                <td><%=  s.getOwner() %></td>
            </tr>

       <% } %>             
        </table>
    </body>
</html>
