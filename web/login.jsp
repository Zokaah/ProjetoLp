<%-- 
    Document   : login
    Created on : 18/06/2019, 11:27:00
    Author     : Programaçao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap-notify.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.js" type="text/javascript"></script>
        <script src="js/messages_pt_BR.js" type="text/javascript"></script>
        <title>Login</title>
         <style type="text/css">
            
        </style>
    </head>
    <body>
        
        
        <a class="btn btn-primary" data-toggle="modal" href='#teste'>Trigger modal</a>
		
        <div id="teste" class="modal fade">
           <div class="modal-dialog modal-login" >
                <div class="modal-content">
                    <div class="modal-header">				
                        <h4 class="modal-title">Entre com sua conta</h4>
                        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>  
                    <div class="modal-body">
                        <form name="formulario" id="formulario" method="post" action="logar_controlador.jsp" > 
                               
                            
                            <div class="form-group">
                                <input type="text" name="user" id="user" placeholder="Usuário" class="form-control"/>
                            </div>
                          
                            <div class="form-group">
                                <input type="text" name="senha" id="senha" placeholder="Senha" class="form-control"/>
                            </div>
                           
                            <div class="form-group">
                                <input type="submit" value="Login" class="btn btn-primary btn-block btn-lg"/>
                            </div>
                            <div class="clearfix">
         
            <a href="#" class="center-block">Esqueceu a senha?</a>
        </div> 
                            
                        </form>   
                    </div>
                    <div class="modal-footer">
                        Não possui conta?<a href="cadastro.jsp"> Cadastre-se agora!</a>
                    </div>	
                </div>
               
            </div>
             </div>
                
    </body>
</html>
