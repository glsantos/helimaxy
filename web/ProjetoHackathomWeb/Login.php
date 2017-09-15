<?php

    require_once('conexao.php');

    if(isset($_GET['btn_logar'])){

          /**$usuario=$_GET['txt_login'];
          $senha=$_GET['txt_senha'];

          $sql="select * from tbl_administrador
                  where usuario = '".$usuario."'
                  and senha = '".$senha."';";

            $select = mysqli_query($con, $sql);

            if($rs=mysqli_fetch_array($select)){

                $id_instrutor=$rs['id_instrutor'];
                $num=rand(100000,900000);
                session_start();
                $_SESSION['id_instrutor']=$id_instrutor;
                $_SESSION['num_sessao']=$num;**/

                header('location:index.php');
          //  }


    }

 ?>

<!DOCTYPE html>

<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style_login.css">
    </head>

    <body>

        <div id="container_login">
            <div id="container_titulo">
                <div id="img_titulo">
                    <img src="IMAGENS/helimaxy-logo.jpg" alt="Logo da empresa">
                </div>
            </div>

            <div id="img_login">
                <img src="IMAGENS/User-blue-icon.png" alt="Logo usuário">
            </div>
            <form name="frmLogin" action="Login.php" method="get">
              <div id="container_login_senha">
                  <div id="login_senha">
                      <a>Nome</a><br>
                      <input type="text" name="txt_login" value="" maxlength="10"><br>
                      <a>Senha</a><br>
                      <input type="password" name="txt_senha" value="" maxlength="10">
                  </div>

              </div>

              <div id="container_button">
                  <input type="submit" name="btn_logar">
              </div>
            </form>
        </div>
    </body>
</html>
