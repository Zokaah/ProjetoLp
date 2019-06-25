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
        <title>Cadastro</title>

        <style type="text/css">
            .modal-login {		
                color: #636363;
                width: 350px;
            }
            .modal-login .modal-content {
                padding: 20px;
                border-radius: 5px;
                border: none;
            }
            .modal-login .modal-header {
                margin: -5px;
                border-bottom: none;   
                position: relative;
                justify-content: center;
            }
            .modal-login h4 {
                text-align: center;
                font-size: 26px;
            }
            .modal-login .form-control:focus {
                border-color: #70c5c0;
            }
            .modal-login .form-control, .modal-login .btn {
                min-height: 40px;
                border-radius: 3px; 
            }
            .modal-login .close {
                position: absolute;
                top: -5px;
                right: -5px;
            }	
            .modal-login .modal-footer {
                background: #ecf0f1;
                border-color: #dee4e7;
                text-align: center;
                justify-content: center;
                margin: 0 -20px -20px;
                border-radius: 5px;
                font-size: 13px;
            }
            .modal-login .modal-footer a {
                color: background;
            }		
            .modal-login .btn {
                color: #fff;
                border-radius: 4px;
                background: gray;
                text-decoration: none;
                transition: all 0.4s;
                line-height: normal;
                border: none;
            }
            .modal-login .btn:hover, .modal-login .btn:focus {
                background: black;
                outline: none;
            }
            .trigger-btn {
                display: inline-block;
                margin: 100px auto;
            }
        </style>
        
        <script type="text/javascript">
            $(document).ready(function () {
                $("#formulario").validate({
                    rules: {
                        user: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        senha: {
                            required: true,
                            maxlength: 50
                        },
                        Csenha: {
                             required: true,
                            maxlength: 50,
                            equalTo: "#senha"
                        }
                    }
                });
            }); 
        </script>
    </head>
    <body>
        
                
                    

        <a class="btn btn-primary" data-toggle="modal" href='#teste'>Trigger modal</a>
		<div class="modal fade" id="modal-id">
                    <div class="modal-dialog">
        
        
        
        
     
            <div class="modal-dialog modal-login" id="teste">
                <div class="modal-content">
                    <div class="modal-header">				
                        <h4 class="modal-title">Cadastre-se Gratuitamente!</h4>
                        
                    </div>  
                    <div class="modal-body">
                        <form name="formulario" id="formulario" method="post" action="cadastrar_controlador.jsp"> 
                            <div class="form-group">
                                <input type="text" name="user" id="user" placeholder="Usuário" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" id="email"  placeholder="E-mail" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="senha" id="senha" placeholder="Senha" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="Csenha" id="Csenha" placeholder="Confirmar Senha" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Fazer cadastro" class="btn btn-primary btn-block btn-lg"/>
                            </div>
                        </form>   
                    </div>
                    <div class="modal-footer">
                        Já possui cadastro?<a href="login.jsp"> Clique aqui para fazer login</a>
                    </div>	
                </div>
            </div>
              
            </div>
             </div>
                
    </body>
</html>
