<?php  session_start();?>
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Administrador Zinobe
    </title>
    <link rel="stylesheet type=""text/css" href="css/encuestas.css">   
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script> 
  </head>
  <body>
<?php 
include('conexion.php');
	$pass = (isset($_POST['pss'])?$_POST['pss']:NULL);
	$usr = (isset($_POST['email'])?$_POST['email']:NULL);
 
	$login = mysql_query("select id_usuario from users where  email='$usr' and password= md5('$pass')");

	
if(mysql_num_rows($login)<=0){
     ?> 
<script>
		window.location.href = "index.php";
 </script>
<?php 
}
	   
else{  
	
	 $user = mysql_result($login,0,'id_usuario');
     $_SESSION['id_usuarioAdm'] = $user."RAND";
 
     
    ?>  
<script>
		window.location.href = "users/index.php";
 </script>	  	  
<?php  
	 }
    ?>

  </body>
</html>