<%
    String usuario = (String) session.getAttribute("usuario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu primeiro projeto</title>
    </head>
    <body>
        <h1>Meu primeiro projeto</h1>
        
        <h2>Painel administrativo</h2>
        <p>
            <strong>Usuário logado: </strong>
            <%= usuario %>
        </p>
    </body>
</html>
