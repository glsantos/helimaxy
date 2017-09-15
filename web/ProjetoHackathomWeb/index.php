<?php

      require_once('conexao.php');


      /**if($_SESSION['num_sessao']!=null){

          session_start();
          echo($_SESSION['id_instrutor']);


      }else{
          header('location:Login.php?');
          session_destroy();
      }**/


 ?>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Página Principal</title>
    <link rel="stylesheet" type="text/css" href="CSS/style_principal.css">
  </head>
  <body>
      <?php require_once('cabecalho.php');?>
      <section>

          <div id="container_aluno">
              <div id="titulo_aluno">
                  <h2>RELATÓRIO DE VOOS</h2>
              </div>

              <div class="area_relatorio">
                  <div class="area_filtro">

                  </div>
                  <div class="area_resultado">
                      <table class="tbl_resultado">
                          <tr>
                            <td>Data</td>
                            <td>Horário</td>
                            <td>Modelo</td>
                            <td>Prefixo</td>
                            <td>De</td>
                            <td>Para</td>
                            <td>Pouso</td>
                            <td>Tempo</td>
                            <td>Período</td>
                            <td>Controlador</td>
                            <td>Navegação</td>
                            <td>Aluno</td>
                            <td>Instrutor</td>
                            <td>Totais</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="#"><img src="IMAGENS/lupa.png"></a></td>
                          </tr>
                      </table>
                  </div>
              </div>

          </div>
      </section>

  </body>
</html>
