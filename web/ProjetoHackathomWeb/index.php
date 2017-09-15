<?php

      if($con = mysqli_connect('localhost', 'root', 'bcd127')){
            mysqli_select_db($con, 'db_helimaxy');
      }else{
        echo("Erro na conexão com o Banco de Dados");
      }


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
                            <td class="td_nome">Data</td>
                            <td class="td_nome">Partida</td>
                            <td class="td_nome">Corte</td>
                            <td class="td_nome">Modelo</td>
                            <td class="td_nome">Prefixo</td>
                            <td class="td_nome">De</td>
                            <td class="td_nome">Para</td>
                            <td class="td_nome">Pouso</td>
                            <td class="td_nome">Tempo</td>
                            <td class="td_nome">Período</td>
                            <td class="td_nome">Comando</td>
                            <td class="td_nome">Navegação</td>
                            <td class="td_nome">Aluno</td>
                            <td class="td_nome">Instrutor</td>
                            <td class="td_nome">Totais</td>
                          </tr>
                          <tr>
                            <?php
                                $sql="select * from vw_relatorio;";
                                $select=mysqli_query($con,$sql);
                                while($rs=mysqli_fetch_array($select)){
                             ?>
                            <td class="td_resultado"><?php echo($rs['Data']); ?></td>
                            <td class="td_resultado"><?php echo($rs['HS']); ?></td>
                            <td class="td_resultado"><?php echo($rs['HR']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Modelo']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Prefixo']); ?></td>
                            <td class="td_resultado"><?php echo($rs['De']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Para']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Pousos']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Tempo']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Periodo']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Comando']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Navegacao']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Aluno']); ?></td>
                            <td class="td_resultado"><?php echo($rs['Instrutor']); ?></td>
                            <td class="td_resultado"><a href="#"><img src="IMAGENS/lupa.png"></a></td>
                          </tr>
                          <?php } ?>
                      </table>
                  </div>
              </div>

          </div>
      </section>

  </body>
</html>
