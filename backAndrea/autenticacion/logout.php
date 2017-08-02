<?php
session_start();
session_destroy();
unset($_SESSION["id_usuarioAdm"]);
session_unset();
echo "<script>document.location.href='index.php';</script>";

?>