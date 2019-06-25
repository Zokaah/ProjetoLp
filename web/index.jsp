<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap-notify.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.js" type="text/javascript"></script>
        <script src="js/messages_pt_BR.js" type="text/javascript"></script>
                <link href="MyCss.css" rel="stylesheet" type="text/css"/>
                
        <link rel="shortcut icon" href="image/Icon.jpg">
        <style>
            .navbar-brand{
                font-size: 14px;
            }
        </style>
        
        <script type="text/javascript">
            $(document).ready(function() {
                $('#Cf').validate({
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
        
          
            <div class="container">
            <div class="row">
              
                <div class="col-lg-12 col-md-12">
            <img class="imagetop img-fluid" src="image/ML1.png" alt=""/>       
            </div>
              
            </div>
            </div>
           
       <div class="container-fluid">
       <nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Home</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">Playlists</a></li>
            <li><a href="Contato.jsp">Contato</a></li>
          </ul>
          <form class="navbar-form navbar-left" id="search" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="">
            </div>
            <button type="submit" class="btn">Pesquisar</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
              
            <li><a data-toggle="modal" href='#login'>Login</a></li>
            	
        <div id="login" class="modal fade">
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
                                <input type="text" name="Lsenha" id="Lsenha" placeholder="senha" class="form-control"/>
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
                        Não possui conta?<a data-dismiss="modal" data-toggle="modal" href='#cadastro'> Cadastre-se agora!</a>
                    </div>	
                </div>
               
            </div>
             </div>
            <li><a data-toggle="modal" href='#cadastro'>Cadastro</a></li>
           <div class="modal fade" id="cadastro">
                    <div class="modal-dialog">
        
        
        
        
     
            <div class="modal-dialog modal-login">
                <div class="modal-content">
                    <div class="modal-header">				
                        <h4 class="modal-title">Cadastre-se Gratuitamente!</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>  
                    <div class="modal-body">
                        <form name="Cf" id="Cf" method="post" action="cadastrar_controlador.jsp"> 
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
                        Já possui cadastro?<a data-dismiss="modal" data-toggle="modal" href="#login"> Clique aqui para fazer login</a>
                    </div>	
                </div>
            </div>
              
            </div>
             </div>
            
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
        
           <div id="carousel-id" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-id" data-slide-to="0" class=""></li>
				<li data-target="#carousel-id" data-slide-to="1" class=""></li>
				<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item">
					<img  alt="First slide" src="image/g1.jpg">
                                       
                                        <div class="container">
						<div class="carousel-caption">
							<h1>Jazz.</h1>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba mais</a></p>
						</div>
					</div>
				</div>
				<div class="item">
                                    <img  alt="Second slide" src="image/g2.jpg">
					<div class="container">
						<div class="carousel-caption">
							<h1>hip hop.</h1>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba mais</a></p>
						</div>
					</div>
				</div>
				<div class="item active">
					<img  alt="Third slide" src="image/g3.jpg">
					<div class="container">
						<div class="carousel-caption">
							<h1>Eletrônica.</h1>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba mais</a></p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class=" glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
           
           
        
           <div class="row">
            <div class="col-lg-3">
                <ul class="list-group" id="playlist">
                    <li class="list-group-item">
                        <h3>Fucc day</h3>
                        <audio controls id="audio">
                    <source src="audio/11 - Fucc Day (prod by Ricky P).mp3" type="audio/mpeg">
                
                        </audio>
                    
                    </li>
                    <li class="list-group-item">
                         <h3>Respect</h3>
                        <audio controls id="audio">
                            <audio controls>
                                <source src="audio/01 - Respect ft Juicy J & K Camp   Juicy J speaks (prod by TM88).mp3" type="audio/mpeg">
                                Your browser does not support the <code>audio</code> tag.
                            </audio>
                    <source src="audio/01 - Respect ft Juicy J & K Camp   Juicy J speaks (prod by TM88).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                    <li class="list-group-item">
                         <h3>Prequel</h3>
                        <audio controls id="audio">
                    
                   <source src="audio/03 - Prequel ft Curreny (prod by Sonny Digital).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                </ul>
                
            </div>
            
             <div class="col-lg-3">
                <ul class="list-group" id="playlist">
                    <li class="list-group-item">
                        <h3>Call Again</h3>
                        <audio controls id="audio">
                    
                    <source src="audio/08 - Call Again ft Problem   Juicy J speaks (prod by Easy Mo Bee).mp3" type="audio/mpeg">
                
                        </audio>
                    
                    </li>
                    <li class="list-group-item">
                         <h3>Gangster</h3>
                        <audio controls id="audio">
                    
                      <source src="audio/09 - Gangster 101 ft King Los (prod by Sonny Digital).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                    <li class="list-group-item">
                         <h3>Celebrate</h3>
                        <audio controls id="audio">
                    
                  <source src="audio/02 Celebrate (feat. Rico Love).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                </ul>
                
            </div>
               
                <div class="col-lg-3">
                <ul class="list-group" id="playlist">
                    <li class="list-group-item">
                        <h3>Call Again</h3>
                        <audio controls id="audio">
                    
                    <source src="audio/08 - Call Again ft Problem   Juicy J speaks (prod by Easy Mo Bee).mp3" type="audio/mpeg">
                
                        </audio>
                    
                    </li>
                    <li class="list-group-item">
                         <h3>Gangster</h3>
                        <audio controls id="audio">
                    
                      <source src="audio/09 - Gangster 101 ft King Los (prod by Sonny Digital).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                    <li class="list-group-item">
                         <h3>Celebrate</h3>
                        <audio controls id="audio">
                    
                  <source src="audio/02 Celebrate (feat. Rico Love).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                </ul>
                
            </div>
               
                <div class="col-lg-3">
                <ul class="list-group" id="playlist">
                    <li class="list-group-item">
                        <h3>Call Again</h3>
                        <audio controls id="audio">
                    
                    <source src="audio/08 - Call Again ft Problem   Juicy J speaks (prod by Easy Mo Bee).mp3" type="audio/mpeg">
                
                        </audio>
                    
                    </li>
                    <li class="list-group-item">
                         <h3>Gangster</h3>
                        <audio controls id="audio">
                    
                      <source src="audio/09 - Gangster 101 ft King Los (prod by Sonny Digital).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                    <li class="list-group-item">
                         <h3>Celebrate</h3>
                        <audio controls id="audio">
                    
                  <source src="audio/02 Celebrate (feat. Rico Love).mp3" type="audio/mpeg">
                        </audio>
                    </li>
                </ul>
                
            </div>
            
        </div>
            <div class="row jumbotron">
            <div class="col-lg-12 col-md-6" id="rodape">

                <h1 class="nome1">My Listener</h1>
                <h3 class="nome1">Fatec Guaratinguetá</h3>
                <br/>
            </div>
        </div>
        </div>
           
        <style>
            .carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img {
    display: block;
    height:auto;
    max-height: 650px;
    width: 100%;
    
    
}

        </style>
           
        </div>
        
    </body>
</html>
