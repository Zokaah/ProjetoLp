<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
    String usuario = request.getParameter("user");
    
    String senha = request.getParameter("senha");
    
    
    try {
     Cliente C = ClienteBD.procuraSessao(usuario, senha);
     if(C != null){
         //response.sendRedirect(indexLogado.jsp);
     }
     else{
         response.sendRedirect("index.jsp?resposta=fake");
     }   
    } catch (Exception excecao) {

        response.sendRedirect("index.jsp?resposta=" + excecao.getMessage());

    }

    %>
