<?php



      if($con = mysqli_connect('localhost', 'root', 'bcd127')){
            mysqli_select_db($con, 'db_helimaxy');
      }else{
        echo("Erro na conexão com o Banco de Dados");
      }

 ?>
