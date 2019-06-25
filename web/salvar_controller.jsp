<%@page import="persistencia.ContatoBD"%>
<%@page import="dominio.Contato"%>
<%
    String email = request.getParameter("email");
    String menssagem = request.getParameter("menssagem");
    
    
    try {
        Contato mano = new Contato();
        mano.setEmail(email);
        mano.setMenssagem(menssagem);
        
        response.sendRedirect("Contato.jsp?resposta=OK");
    } catch (Exception excecao) {
        response.sendRedirect("Contato.jsp?resposta=" + excecao.getMessage());
    }
    
%>