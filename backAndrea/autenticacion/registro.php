<?php require_once('functions.php');?> 
<!DOCTYPE html> 
  <head> 
    <title>Registrar Usuario
    </title> 
    <meta charset = "utf-8"> 
    <link href="css/bootstrap.css" rel="stylesheet"> 
    <link rel="stylesheet" type="text/css" href="css/encuestas.css">
    <link href="css/bootstrap-select.css" rel="stylesheet" type="text/css"> 
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  </head> 
  <body> 
    <header> <h1>Registrate</h1> 
    </header> 
    <div align="center">
    <form action="regusuario.php" method="post"> 
      <hr /> <h3>Crea una cuenta</h3> 
      <!--Nombre Usuario--> 
      <label for="nombre">Nombre de Usuario:
      </label>
      <br> 
      <input type="text" name="username" minlength="3" maxlength="100" required> 
      <br/>
      <br/> 
      <!--Email--> 
      <label for="nombre">Email:
      </label>
      <br> 
      <input type="email" name="email" required>
      <br/>
      <br/> 
       <!--Pais--> 
      <label for="nombre">Pais:
      </label>
      <br> 
      <select name="pais" class="selectpicker" data-live-search="true" title="Seleccione el pais asociado" required>
 		 	<?php selectpais();?>
 	</select>
      <br/>
      <br/> 
      <!--Password--> 
      <label for="pass">Password:
      </label>
      <br> 
      <input type="password" name="password" minlength="1"  required> 
      <br/>
      <br/> 
      <input type="submit" name="submit" value="Registrarme"> 
      <input type="reset" name="clear" value="Borrar"> 
    </form> 
    </div>
    <hr /><br /> 
    
 <script src="js/bootstrap-select.js"></script> 
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
  </body> 
</html> 