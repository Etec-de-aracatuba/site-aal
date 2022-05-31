<?php
    include 'conexao.php';
    
    // CRIA A SQL PARA EXECUTAR NO BANCO DE DADOS
    $sql = "SELECT * FROM usuario";

    // FALANDO PRO BANCO QUAL SQL VAMOS EXECUTAR
    $preparacao = $conexaoBanco->prepare($sql);

    // MANDO INFORMAÇÕES E EXECUTA A SQL NO BANCO DE DADOS
    $preparacao->execute();

    // BUSCA OS DADOS E SALVA NA VARIAVEL DADOS
    $usuarios = $preparacao->fetchAll();
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
        <table>
            <tr>
                <td>Id</td>
                <td>Nome</td>
                <td>email</td>
                <td>telefone</td>
                <td>senha</td>
                <td></td>
            </tr>

            <?php
            
                foreach ($usuarios as $usuario) {
                    echo "<tr>
                            <td>{$usuario['id']}</td>
                            <td>{$usuario['nome']}</td>
                            <td>{$usuario['email']}</td>
                            <td>{$usuario['telefone']}</td>
                            <td>{$usuario['senha']}</td>
                            <td><a href='mostra_usuario.php?id_usuario={$usuario['id']}'>Ver</a></td>
                        </tr>";
                }
            ?>
        </table>
    </body>
</html>