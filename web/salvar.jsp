<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cadastro de detentos</title>
    </head>
    <body>
        <%
        String nome = request.getParameter("nome");
        String vulgo = request.getParameter("vulgo");
        String tatu = request.getParameter("tatu");
        int idade = 0;
        try{
            idade = Integer.parseInt(request.getParameter("idade"));           
            %>
            <h1><%=nome%></h1>
            <h2><%=vulgo%></h2>
            <p>Última tatuagem: <%=tatu%></p>
            <p>Idade: <%=idade%></p>
            <%
        }catch(Exception excecao){
            out.println("Deu ruim na idade");
        }
        %>
    </body>
</html>
