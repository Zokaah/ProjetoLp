<%@page import="persistencia.ContatoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liberdade</title>
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-sm-6" id="divA">
                    Div A
                </div>
                <div class="col-12 col-sm-6" id="divB">
                    Div B
                </div>
            </div>
            <div class="row">
                <div class="col-12" id="divC">
                    <h1>Saidinha</h1>
                    <%
                        int codigo = Integer.parseInt(request.getParameter("codigo"));
                        ContatoBD.excluir(codigo);
                    %>
                    <p>Jogador está recuperado!</p>
                    <a href="listar.jsp">Listar</a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-sm-6" id="divD">
                    Div D
                </div>
                <div class="col-12 col-sm-6" id="divE">
                    Div E
                </div>
            </div>
        </div>
    </body>
</html>
