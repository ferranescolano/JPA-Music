<%-- 
    Document   : userPage
    Created on : 07-may-2019, 16:20:29
    Author     : alu2014044
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User Page</h1>
        <form method="POST" action="registrarPartitura.jsp">

            <input type="submit" value="Registrar Partitura">

        </form>
        
        
        <form method="POST" action="modifyPartitura.jsp">
            <input type="submit" value="Modificar Partitura">
        </form>
        
        <form method="POST" action="deletePartitura.jsp">
            <input type="submit" value="Borrar Partitura">
        </form>
        
        <form method="POST" action="listadoPartituras.jsp">
            <input type="submit" value="Listado Partituras">
        </form>
        
        <form method="POST" action="partiturasUsuario.jsp">
            <input type="submit" value="Partituras de Usuario">
        </form>
        
        <form method="POST" action="partiturasdeInstrumento.jsp">
            <input type="submit" value="Partituras por Instrumento favorito">
        </form>
        
        <form method="POST" action="rankingUsuarios.jsp">
            <input type="submit" value="Ranking de Usuarios">
        </form>


 <%
            String status = (String) request.getAttribute("status");
            if (status != null) {
        %> <%= status%>

        <% }%>


    </body>
</html>
