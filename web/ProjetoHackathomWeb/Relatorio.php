<?php

    $conexao = mysql_connect('localhost', 'root', 'bcd127');
    mysql_select_db('db_helimaxy');
    mysql_set_charset('utf-8');


      /**if($_SESSION['num_sessao']!=null){

          session_start();
          echo($_SESSION['id_instrutor']);


      }else{
          header('location:Login.php?');
          session_destroy();
      }**/

    if(isset($_POST['lupa'])){
        
    }


 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Página Principal</title>
    <link rel="stylesheet" type="text/css" href="CSS/style_principal.css">
  </head>
  <body>
      <form action="Aluno.php" method="post" enctype="multipart/form-data">
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
                                <td>Data
                                    <select name="Data">
                                        <option value="0">--</option>
                                        <option value="1">15/09</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Horário
                                    <select name="Horario">
                                        <option value="0">--</option>
                                        <option value="1">13:00</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Modelo
                                    <select name="Modelo">
                                        <option value="0">--</option>
                                        <option value="1">RH-22</option>
                                        <option value="2">RH-22</option>
                                        <option value="3">RH-22</option>
                                        <option value="4">RH-22</option>
                                        <option value="5">RH-22</option>
                                        <option value="6">RH-22</option>
                                        <option value="7">RH-44</option>
                                        <option value="8">SIM</option>
                                        <option value="9">RH-22</option>
                                        <option value="10">RH-22</option>
                                        <option value="11">SIM</option>
                                        <option value="12">SIM</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Prefixo
                                    <select name="Prefixo">
                                        <option value="0">--</option>
                                        <option value="1">PT-YBC</option>
                                        <option value="2">PT-HXY</option>
                                        <option value="3">PT-YLO</option>
                                        <option value="4">PT-YBF</option>
                                        <option value="5">PT-YDB</option>
                                        <option value="6">PT-YCV</option>
                                        <option value="7">PP-ABC</option>
                                        <option value="8">SIMULADOR</option>
                                        <option value="9">PT-YBF-I</option>
                                        <option value="10">PT-HXY-I</option>
                                        <option value="11">GA-30</option>
                                        <option value="12">GH-59</option>
                                        <option value="-">Outro</option>

                                    </select>
                                </td>
                                <td>De
                                    <select name="De">
                                        <option value="0">--</option>
                                        <option value="1">SP</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Para
                                    <select name="Para">
                                        <option value="0">--</option>
                                        <option value="1">RJ</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Pouso
                                    <select name="Pouso">
                                        <option value="0">--</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Tempo
                                    <select name="Tempo">
                                        <option value="0">--</option>
                                        <option value="1">2:00</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Período
                                    <select name="Periodo">
                                        <option value="0">--</option>
                                        <option value="1">D</option>
                                        <option value="2">N</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Controlador
                                    <select name="Controlador">
                                        <option value="0">--</option>
                                        <option value="1">Vinicius</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Navegação
                                    <select name="Navegacao">
                                        <option value="0">--</option>
                                        <option value="1">Vinicius</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Aluno
                                    <select name="Aluno">
                                        <option value="0">--</option>
                                        <option value="1">Vinicius</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Instrutor
                                    <select name="Instrutor">
                                        <option value="0">--</option>
                                        <option value="1">Vinicius</option>
                                        <option value="2">Gabriel</option>
                                        <option value="-">Outro</option>
                                    </select>
                                </td>
                                <td>Totais 

                                </td>
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
                                <td><a href="#" name="lupa"><img src="IMAGENS/lupa.png"></a></td>
                              </tr>
                          </table>
                      </div>
                  </div>

              </div>
          </section>
      </form>
  </body>
</html>
