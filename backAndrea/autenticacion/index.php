<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html lang="en"> 
  <!--<![endif]-->
  <head>  
    <meta charset="utf-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
    <title>Administrador
    </title>  
    <link rel="stylesheet" href="css/style.css">  
    <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  </head>
  <body>  
    <form  method="post" action="login.php" class="login">     <h1> Pruebas</h1>	 
      <input type="email" name="email"  class="login-input" placeholder="email">       
      <input type="password" name="pss"  class="login-input" placeholder="Password">       
      <input type="submit" value="Ingresar" class="login-submit">	  
      <input type="button" value="Registrate" onclick="document.location.href='registro.php'">     
    </form>
  </body>
</html>
<?php
session_start() ;
print_r($_SESSION);
if(isset($_SESSION['id_usuarioAdm']) && $_SESSION['id_usuarioAdm']!=''){
?>	 
<script>
		window.location.href = "users/index.php";
 </script> 	  
<?php	
}
?>