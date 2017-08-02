<?php
$link = mysql_connect('localhost', 'root', '');
if (!$link) {
	die('Not connected : ' . mysql_error());
}

if (! mysql_select_db('dbandrea' ) ) {
	die ('Can\'t use dbandrea : ' . mysql_error());
}
?>