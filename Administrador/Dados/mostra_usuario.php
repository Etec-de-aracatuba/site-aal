<?php
    include 'conexao.php';

    if(empty($_POST['email']) && empty($_POST['senha'])){
        header('Location: tela_login.php');
        exit;
    }

    $email = $_POST['email'];
    $senha = $_POST['senha'];
    // CRIA A SQL PARA EXECUTAR NO BANCO DE DADOS
    $sql = "SELECT * FROM usuario WHERE email = ? and senha = ?";

    $preparacao = $conexaoBanco->prepare($sql);

     // FALANDO PRO BANCO QUAL SQL VAMOS EXECUTAR
    $preparacao->execute([$email,$senha]);

     // BUSCA OS DADOS E SALVA NA VARIAVEL DADOS
    $usuario = $preparacao->fetch();
    
?>


<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h1><?= $usuario['nome'] ?></h1>
        <p><?= $usuario['email'] ?></p>
        <p>
            <?= $usuario['telefone'] ?>
        </p>
        <p>
            <?= $usuario['senha'] ?>
        </p>

    </body>
</html>