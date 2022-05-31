<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela De Login</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: url(wanda-wanda.jpg)
        }
        div{background-color: rgba(0, 0,0,0.6 );
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            padding: 80px;
            border-radius: 15px;
            color: white;

        }
    
        input{
            padding: 15px;
            border-radius: 15px;
            outline: none;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.1);
            color:white;
            
           
           
           
           
        }
        .inputSubmit{
            background-image: linear-gradient(to right,rgb(0, 92, 197), rgb(90, 20, 220));
            border:none;
            padding: 15px;
            width: 100%;
            border-radius:10px;
            color: white;
            font-size: 15px; 
            
        }
        .inputSubmit:hover{
            background-image: linear-gradient(to right,rgb(0, 80, 172), rgb(80, 19, 195));
            cursor: pointer;
        }
        

    </style>
</head>
<body>
       <div>
        <h1>Login</h1>
    <form action="AcessoLogin.php" method="POST">
        <input  type="text" name="email" placeholder="Email">
        <br><br>
        <input type="password" name="senha" placeholder="Senha">
        <br><br>
        <input class="inputSubmit" type="submit" name="submit" value="Entrar">
       </div>
    </form>
</body>
</html>