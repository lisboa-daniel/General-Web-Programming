<?php

include 'conexao_banco.php';

$renavam = $_POST["txt_renavam"];
$descricao = $_POST["txt_desc"];
$montadora = $_POST["lst_montadora"];
$ano = $_POST["ano"];
$placa = $_POST["txt_placa"];
$valor = $_POST["txt_valor"];
$alicota;

if (intval($ano) >  1999) $alicota = 4; else $alicota = 0; 
if ($alicota > 0)
{
 	$ipva = ( floatval($valor) * $alicota) / 100;
}
else $ipva = 0;


$sql = mysql_query("select * from tb_veiculos where renavam='$renavam' ");

if (mysql_num_rows($sql) > 0) {

	echo "<center>";
	echo "<hr>";
	echo "VEICULO JA CADASTRADO";
	echo "<hr>";
	echo "<br>";
	echo "<a href='cadastro_veiculo.php'> Voltar </a>";
}

else {

	$sql = mysql_query ("insert into tb_veiculos (renavam,descricao_veiculo,montadora,ano_fabricacao,placa,valor_veiculo,ipva) values ('$renavam', '$descricao', '$montadora', '$ano', '$placa', '$valor', '$ipva'  )");
	echo "<center>";
	echo "<hr>";
	echo "VEICULO CADASTRADA COM SUCESSO !!!";
	echo "<hr>";
	echo "<br>";
	echo "<a href='listagem.php'> VER VEICULO CADASTRADO </a>";
}

?>