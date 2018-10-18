<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  
    // Array de todos os cookies que vieram do cliente
    Cookie[] cks = request.getCookies();
  
    // Coookie que eu desejo encontrar para manipular
    Cookie ck = null;
    
    // Percorrendo o array de cookies para encontrar
    // o Cookie que eu estou procurando
    for (int i = 0; i < cks.length; i++) {
        
        // Se o name do cookie for igual ao name que
        // eu estou procurando
        if(cks[i].getName().equals("nm")) {
            // Atribuo à variável "ck" o Cookie encontrado
            ck = cks[i];
        }
        
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu primeiro projeto</title>
    </head>
    <body>
        <h1>Meu primeiro projeto</h1>
        
        <h2>Login</h2>
        <form action="login.jsp" method="POST">
            <div>
                <label for="email">E-mail:</label> 
                <input type="email" name="email" id="email" />
            </div>
            <div>
                <label for="senha">Senha:</label> 
                <input type="password" name="senha" id="senha" />
            </div>
            <div>
                <button type="submit">Enviar</button>
            </div>
        </form>
        <h2>Meu nome</h2>
        <form method="POST" action="${pageContext.request.contextPath}/manipula_nome.jsp">
            <div>
                <label for="nome">Nome:</label> <input type="text" name="nome" id="nome" />
            </div>
            <div>
                <strong>Nome salvo: </strong>
                <%
                    if(ck != null){
                        out.print(ck.getValue());
                    }
                %>
            </div>
            <div>
                <button type="submit">Enviar</button>
            </div>
            
        </form>
    </body>
</html>
