<?php 
/*
 *  Lista de Funciones
 */
require_once('conexion.php');
/*
 * funcion que permite el listado de usuarios
 */

function  users(){
	$listado=  mysql_query("select us.name as name, us.email as email , co.name as pais
	from users us
	join country co on co.Code=us.countryCode");
	
	$i = 1;
	
	while ($reg = mysql_fetch_array($listado)) {
		echo '<tr>';
		echo '<td >' . $i . '</td>';
		echo '<td >' . mb_convert_encoding($reg['name'], "UTF-8") . '</td>';
		echo '<td >' . mb_convert_encoding($reg['email'], "UTF-8") . '</td>';
		echo '<td >' . mb_convert_encoding($reg['pais'], "UTF-8") . '</td>';
		echo '</tr>';
		$i++;
	}
}

/*
 * funcion que permite el listado de paises
 */

function selectpais(){

	$listado= mysql_query( 'SELECT * FROM country');
	 
	while ($key = mysql_fetch_array($listado)) {
			echo'<option value="'.mb_convert_encoding($key['Code'], "UTF-8").'">'.mb_convert_encoding($key['Name'], "UTF-8").'</option>';
		}
	
}

/*
 * funcion para registrar usuario
 */


function regusuario(){
	
	
	$buscarUsuario = "SELECT * FROM  users WHERE email = '$_POST[email]' ";
	
	$result =  mysql_query($buscarUsuario);
	
	 
	
	$count = mysql_num_rows($result);
	
	if ($count == 1) {
		echo "<br />". "El email ya a sido tomado." . "<br />";
	
		echo "<a href='registro.php'>Por favor escoja otro Email</a>";
	}
	else{
	
		$query = "INSERT INTO users (`password`, `name`, `countryCode`, `email`)
		VALUES (md5('$_POST[password]'),'$_POST[username]','$_POST[pais]','$_POST[email]' )";
	
		if ( mysql_query($query) === TRUE) {
	
			echo "<br />" . "<h2>" . "Usuario Creado Exitosamente!" . "</h2>";
			echo "<h4>" . "Bienvenido: " . $_POST['username'] . "</h4>" . "\n\n";
			echo "<h5>" . "Ingresar al sitio: " . "<a href='index.php'>Login</a>" . "</h5>";
		}
	
	
}
}
?>

