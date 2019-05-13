<%-- 
    Document   : final
    Created on : 07-may-2019, 15:57:17
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
        <%
            String status = (String) request.getAttribute("status");
            if (status != null) {
        %> <%= status%>

        <% }%>
        <a href="login.jsp">Login</a>


    </body>
</html>
