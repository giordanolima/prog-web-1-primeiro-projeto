<%
String usuario = (String) session.getAttribute("usuario");
if(usuario == null) {
        response.sendRedirect("index.jsp");
        return;
    }

%>