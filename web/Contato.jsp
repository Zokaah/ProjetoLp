<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <title>Contato</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/MyCss.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="shortcut icon" href="image/Icon.jpg">
        <script>

            jQuery.validator.addMethod("emaill", function (value, element) {
                if (value.indexOf("@") < value.indexOf(".")) {
                    return true
                } else {
                    return false
                }
            }, "Tem que ser o email valido"),
                    $("#contato").validate({
                rules: {
                    email: {
                        required: true,
                        email: true,
                        emaill: true
                    },

                    mesagem: {
                        required: true,
                        minlength: 20,
                        maxlength: 500,
                        minWords: 10
                    }

                },
                messages: {

                    email:
                            {
                                required: "É obrigatorio fornecer um email valido."
                            },
                    mesagem: {
                        required: "É obrigatorio adicionar uma mensagem"
                    }
                },
            })
        </script> 
    </head>
            <body> <div class="row">
                    <div class="col-md-6 col-12" id="divC">
                        <h1>Contato</h1>
                    <p>Somos o MyListener para melhor atender nossos usuários disponibilizamos este espaço para criticas, elogios e denuncias.</p>
<p>Deixe seu e-mail e seu comentário sobre o assunto desejado e lhe atenderemos o mais rápido possível suas solicitações.</p>
        </div>   
                
        <div class="col-md-6 col-12" id="divC">
                    
<%
                        String resposta = request.getParameter("resposta");
                        if (resposta != null) {
                            if (resposta.equalsIgnoreCase("OK")) {
                                out.println("Enviado");
                            } else {
                                out.println(resposta);
                            }
                        }
                    %>
 <form name="contato" id="contato" method="post">

                <div class="row">
                    <label>E-mail</label>
                    <input type="email" name="email" id="email" placeholder=E-mail style= "width:75%" class="form-control"/>
                </div>	
                
                <div class="row">
                    <label>Mensagem</label>
                    <textarea rows="15" cols="30" name="mensagem" id="mensagem" class="form-control"> </textarea> 
                </div>
                <div class="row">
                  <input type="submit" value="Enviar" />
                </div>     
            </form>
        </div></div>
    </body>
</html>











