<!DOCTYPE html>
<html>
<head>
	<title>Cadastro de Veículos</title>
	<meta charset="utf-8">
</head>
<body>
<hr>
<center> <h1> CADASTRO DE VEÍCULOS - MULTIMARCAS</center>
<hr>
<fieldset>	
	<legend>DADOS DO VEÍCULOS</legend>
	<form name="form_veiculo" method="POST">
	<b>RENAVAM: </b><br>
	<input type="text" name="txt_renavam"><br>
	<br>
	<b>DESCRIÇÃO DO VEÍCULO: </b><br>
	<input type="text" name="txt_desc" maxlength="120"><br>
<br>
	<b>MONTADORA: </b><br>
	<select name="lst_montadora">
		<option  >Nissan</option>
		<option >Chevrolet</option>
		<option >Ford</option>
		<option >Honda</option>
		<option >Hyundai</option>
		<option >Fiat</option>
		<option >Volkswagen</option>

</select>
	<br>
<br>
	<b>ANO FABRICAÇÃO </b><br>
	<select  name="ano">
   <?php
   for ($ano = (int)date('Y'); 1900 <= $ano; $ano--): ?>
     <option ><?=$ano;?></option>
   <?php endfor; ?>
  </select><br>
<br>
	<b>PLACA </b><br>
	<input type="text" name="txt_placa" maxlength="15"><br>
<br>
	<b>VALOR VEÍCULO </b><br>
	<input type="text" name="txt_valor" maxlength="20"><br>
<br>
</fieldset>
<br>
<center> <input type="submit" value="CADASTRAR VEÍCULO" onclick="document.form_veiculo.action='gravar.php' "> &nbsp; <input type="submit" value="LISTAGEM DE VEÍCULOS" onclick="document.form_veiculo.action='listagem.php' ">
</center>


</form>




</body>
</html>