<?php
      include 'conexao.php';

      $var_nome     = $_POST['nome'];
      $var_email    = $_POST['email'];
      $var_telefone = $_POST['telefone'];
      $var_senha    = $_POST['senha'];
      $var_csenha   = $_POST['csenha'];

      if($var_senha != $var_csenha){
            header("Location: formulario.php?msg=Senhas não conferem&nome={$var_nome}");
            exit();
      }

      $sql = "INSERT INTO usuario (nome, email, telefone, senha) values (?, ?, ?, ?)";

      $preparacao = $conexaoBanco->prepare($sql); 
      $resultado = $preparacao->execute(
            [
                  $var_nome, 
                  $var_email, 
                  $var_telefone, 
                  $var_senha
            ]
      );

      $id_usuario = $conexaoBanco->lastInsertId(); // Pega o id do ultimo cadastro feito no banco de dados

      if($id_usuario > 0){
            header("Location: mostra_usuario.php?id_usuario={$id_usuario}&msg=Usuario cadastrado  com sucesso");
      
      }else{
            header("Location: formulario.php?msg=Usuario não cadastrado");

      }

      header("Location: tela_login.php");
?>