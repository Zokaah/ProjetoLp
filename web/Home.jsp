<%-- 
    Document   : Home
    Created on : 17/06/2019, 22:15:56
    Author     : Zokah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" > <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
        <link href="MyCss.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="image/Icon.jpg">
    </head>
    <body>
        
          
            <div class="container">
            <div class="row">
                 <div class="col-lg-6">
            <img class="imagetop1 img-fluid" src="image/cat.png" alt=""/>
                 </div>
                <div class="col-lg-6">
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
            <li class="active"><a href="#">Playlists</a></li>
            <li><a href="#">Contato</a></li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn">Submit</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Musicas</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Minha conta <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
        
           <div class="row">
               <div class="col-lg-12">
                   <img class="imgCorpo" src="image/ML3.jpg" alt=""/>
               </div>
           </div>
           
           
        <div class="row">
            <div class="col-lg-4">
              
                <h1 class="texto1">Escute de tudo !
                    <br>
                    em um só lugar !</h1>
                <p class="pa">
                  Somos uma plataforma de compartilhamento de musicas online, simples e gratuita! 
                </p>
                <p class="pa">
                    Basta criar sua conta para começar desfrutar das vantagens do MyListener !!
                </p>
            </div>
            <div class="col-lg-7">
                
              <img class="imgCorpo2 img-fluid" src="image/Genero.png" alt=""/>
            </div>
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
           
           
           
        </div>
    </body>
</html>
