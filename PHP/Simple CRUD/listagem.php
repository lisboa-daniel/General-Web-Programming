<?php

include('conexao_banco.php');

if((isset($_POST['descricao'])) &&  $_POST['descricao'] != '')
{
	$sql = mysql_query("SELECT * FROM tb_veiculos WHERE descricao_veiculo like  '{$_POST['descricao']}%'  order by descricao_veiculo asc ");
}
else
{
	$sql = mysql_query("SELECT * FROM tb_veiculos  order by descricao_veiculo asc  ");
}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Listagem Usuários</title>
	<meta charset="utf-8">
</head>	
<hr>
<center> <h1> CADASTRO DE VEÍCULOS - MULTIMARCAS </h1>
<hr>

<form name="form_filtrar" method="POST"> 
DIGITE A DESCRIÇÃO DO VEÍCULO: <input type="text" name="descricao"> <input type="submit" name="btn_filtrar" value="FILTRAR" onclick="document.from_filtrar.action= 'listagem.php' ">
&nbsp; <input type="submit" name="btn_voltar" value="VOLTAR" onclick="document.form_filtrar.action='cadastro_veiculos.php'  ">
</center>
</form>
<br>
<center>
		<table border="1" align="center">
			<tr>
				<th colspan="8" bgcolor="orange" > VEICULOS CADASTRADOS </th>
			</tr>
			<tr>
				<th bgcolor="yellow" > RENAVAM</th>
				<th bgcolor="yellow" > DESCRIÇÃO VEÍCULO</th>
				<th bgcolor="yellow" > MONTADORA</th>
				<th bgcolor="yellow" > ANO FRABRICAÇÃO</th>
				<th bgcolor="yellow" > PLACA</th>
				<th bgcolor="yellow" > VALOR VEÍCULO</th>
				<th bgcolor="yellow" > VALOR IPVA</th>
				<th bgcolor="yellow" > APAGAR VEÍCULO</th>
			</tr>

			<?php
			while ($row = mysql_fetch_assoc($sql)){
				echo '
				<th align="center"> ' . $row['renavam']  . ' </th>
				<th align="center"> '  . $row['descricao_veiculo']  . ' </th>
				<th align="center"> '  . $row['montadora']  . ' </th>
				<th align="center"> '  . $row['ano_fabricacao']  . ' </th>
				<th align="center"> '  . $row['placa']  . ' </th>
				<th align="center"> '  . $row['valor_veiculo']  . ' </th>
				<th align="center"> '  . $row['ipva']  . ' </th>
				<th align="center"> 
				<form name="form_deleta" method="post" action="deleta.php">
				<input type="submit" name="btn_deleta" 
				value=" &#10005;">
				<input type="hidden" name="renavam" value="'.$row['renavam'].'">
				</form>

				<tr>
				';

			}

		
			?>

		</table>
</center>

</body>
</html>