<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


<div class="w3-container w3-teal">
<h1 w3 class="tex-center">Cadastro Confirmado com Sucesso</h1><br>

<h2>TEste</h2>

<?php
$Nome = $_POST['txtNome'];
$Sobrenome = $_POST['txtSobrenome'];
$email = $_POST['txtEmail'];
$Formação = $_POST['txtFormacao'];
$Descrição = $_POST['txtEmprego'];

echo "Cadastro Realizado com Sucesso";
echo "Nome: $nome<br>";
echo "Sobrenome: $Sobrenome <br>";
echo "email: $email <br>";
echo "Formação: $Formação <br>";
echo "Formação: $Descriçao <br>";
echo "Agradecemos pelo seu interesse!<br>";

?>

</div>
    
</body>
</html>
