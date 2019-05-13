<%-- 
    Document   : registrarPartitura
    Created on : 08-may-2019, 19:57:36
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
        <h1>Registrar Partitura!</h1>
        <form action="RegisterSheetmusic" method="POST">
            <h3>Title</h3>
            <input type="text" name="title">
            <h3>Artist</h3>
            <input type="text" name="artist">
            <h3>Instrument</h3>
            <select name="instrument">
              <option value="flauta">Flauta</option>
  <option value="guitarra">Guitarra</option>
  <option value="piano">Piano</option>
  <option value="bateria">Bateria</option>
            
            </select>
            <h3>Genre</h3>
            <input type="text" name="genre">
            <h3>Difficulty</h3>
            <input type="text" name="diffulty"><br><br>
            <input type="submit" name="registerSheet" value="Register">
        
        </form> 
    </body>
</html>
