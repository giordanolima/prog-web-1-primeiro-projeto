<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
  
    if( email.equals("admin@ifsul.edu.br") && senha.equals("123abc")) {
        session.setAttribute("usuario", email);
        response.sendRedirect("admin.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }

%>