<%
  
// Buscando o "nome" que vem do formulário
String nome = request.getParameter("nome");

//Manipulando Cookie
Cookie ck = new Cookie("nm", nome);
ck.setPath("/");
response.addCookie(ck);

// Redirecionando o usuário devolta para o arquivo index.jsp
response.sendRedirect("index.jsp");

%>