<?php

include ("conexao_banco.php");

	$id = $_POST['renavam'];
	$sql = mysql_query("DELETE FROM tb_veiculos WHERE renavam = '$id' " );
	header("location: listagem.php");



?>