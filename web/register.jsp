<%-- 
    Document   : register
    Created on : 07-may-2019, 15:45:38
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
        <h1>Registro</h1>
        <h3>Name</h3>
        
        <form action="RegisterUser" method="POST">
        <input type="text" name="usuario" value="username" placeholder="Insert your email"><br>
        <h3>Password</h3>
        <input type="password" name="pass" value="password" placeholder="Insert your password"><br><br>
        Select your favorite instrument
        <select name="instrumento">
  <option value="flauta">Flauta</option>
  <option value="guitarra">Guitarra</option>
  <option value="piano">Piano</option>
  <option value="bateria">Bateria</option>
        </select><br>
        
  <p><input type="submit" value="Register" name="register"></p>

  
  
  </form>
        <form method="POST" action="login.jsp">
      <input type="submit" value="Login">
  </form>
    </body>
</html>
