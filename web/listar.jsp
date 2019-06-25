<%@page import="persistencia.ContatoBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Contatos</title>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width; initial-scale=1" />
    </head>
    <body>
       
            <div class="row">
                <div class="col-12" id="divC">
                    <h1>Lista de contatos</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>E-mail</th>
                                <th>Menssagem</th>
                                <
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Contato> lista = ContatoBD.listar();
                                for (Contato contato : lista) {
                            %>
                            <tr>
                                <td><%=contato.getCodigo()%></td>
                                <td><%=contato.getEmail()%></td>
                                <td><%=contato.getMenssagem()%></td>
                                
                                <td>
                                    <a href="excluir.jsp?codigo=<%=contato.getCodigo()%>">Excluir</a>
                                </td>
                            </tr>   
                            <% }%>
                        </tbody>
                    </table>
                    <a href="Contato.jsp"></a>
                </div>
            </div>
            
        </div>
    </body>
</html>
