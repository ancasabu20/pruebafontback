<?php session_start();
include('../conexion.php');
if(isset($_SESSION['id_usuarioAdm'])){
?>
<!DOCTYPE html>
<html>
  <link rel="stylesheet" type="text/css" href="../css/demo.css">  
  <div id='cssmenu'>
    <ul>   
      <li>
      <a href='index.php'>Usuarios</a>
      </li>   
      <li>
      <a href='../logout.php'>Cerrar Sesi&oacute;n</a>
      </li>
    </ul>
  </div>        
  <head>             
    <title>Listados de Usuarios     
    </title>             
    <meta charset="utf-8">                      
    <link type="text/css" href="css/style.css" rel="stylesheet" />             
	<script type="text/javascript" src="js/jquery.js"></script>          
	<script type="text/javascript" language="javascript" src="js/funciones.js"></script>                        
    <link type="text/css" href="css/demo_table.css" rel="stylesheet" />         
	<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>                   
  </head>       
  <body>         
    <header id="titulo"><h3>LISTADO DE USUARIOS</h3>         
    </header>         
    <br/>    
    <br/>                                    
    <article id="contenido">    
    </article>         
    <footer>                
      <?php  echo date('Y');?>          
    </footer>  
  </body>
</html>
<?php }else{  ?>
<link rel="stylesheet type=""text/css" href="../../css/encuestas.css">   
<?php echo "Usted no tiene acceso a esta opcion";?>   
<?php }?>