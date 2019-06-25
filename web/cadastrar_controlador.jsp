<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
    String usuario = request.getParameter("user");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
    
    try {
        Cliente C = new Cliente();
        C.setEmail(email);
        C.setSenha(senha);
        C.setUsuario(usuario);
       boolean v = ClienteBD.inserir(C);
        if (v == true){
                response.sendRedirect("index.jsp?resposta=OK");
        }else{
     response.sendRedirect("index.jsp?resposta=Erro");
    }


     
       
    } catch (Exception excecao) {

        response.sendRedirect("index.jsp?resposta=" + excecao.getMessage());

    }

    %>
