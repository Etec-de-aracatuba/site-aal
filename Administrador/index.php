<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADM</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: url(wanda-wanda.jpg);
            text-align: center;
            color:white;

        }
        .box{
            position:absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.6);
            padding:30px;
            border-radius:15px;

        }
        a{
            text-decoration:none;
            color:white;
            border: 3px solid dodgerblue;
            border-radius:10px;
            padding:10px;
        }
        a:hover{
            background-color:dodgerblue;
        }
    </style>
    
</head>
<body>
    <div class="box">
      <a href="tela_login.php">Login</a>
       <a href="formulario.php">Cadastre-se</a> 
    </div>
</body>
</html>