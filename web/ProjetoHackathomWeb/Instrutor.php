<?php

      if($con = mysqli_connect('localhost', 'root', 'bcd127')){
            mysqli_select_db($con, 'db_helimaxy');
      }else{
        echo("Erro na conexão com o Banco de Dados");
      }

      if(isset($_GET['btn_inserir'])){

          $codigo_anac=$_GET['codigo_anac'];
          $txt_nome=$_GET['txt_nome'];
          $dt_nasc=$_GET['dt_nasc'];
          $rdo_sexo=$_GET['rdo_sexo'];
          $cb_nacionalidade=$_GET['cb_nacionalidade'];
          $txt_naturalidade=$_GET['txt_naturalidade'];
          $cb_sangue=$_GET['cb_sangue'];
          $txt_alergia=$_GET['txt_alergia'];
          $cb_estado_civil=$_GET['cb_estado_civil'];
          $txt_nome_pai=$_GET['txt_nome_pai'];
          $txt_nome_mae=$_GET['txt_nome_mae'];
          $txt_rg=$_GET['txt_rg'];
          $txt_cpf=$_GET['txt_cpf'];
          $cb_escolaridade=$_GET['cb_escolaridade'];
          $txt_rua=$_GET['txt_rua'];
          $txt_numero=$_GET['txt_numero'];
          $txt_cidade=$_GET['txt_cidade'];
          $cb_estado=$_GET['cb_estado'];
          $txt_cep=$_GET['txt_cep'];
          $txt_telefone=$_GET['txt_telefone'];
          $txt_celular=$_GET['txt_celular'];
          $txt_email=$_GET['txt_email'];
          $txt_contatar=$_GET['txt_contatar'];
          $cb_parentesco=$_GET['cb_parentesco'];
          $txt_endereco_emergencia=$_GET['txt_endereco_emergencia'];
          $txt_bairro_emergencia=$_GET['txt_bairro_emergencia'];
          $txt_cidade_emergencia=$_GET['txt_cidade_emergencia'];
          $cb_uf_emergencia=$_GET['cb_uf_emergencia'];
          $txt_cep_emergencia=$_GET['txt_cep_emergencia'];
          $txt_telefone_emergencia=$_GET['txt_telefone_emergencia'];
          $txt_celular_emergencia=$_GET['txt_celular_emergencia'];
          $txt_recado_emergencia=$_GET['txt_recado_emergencia'];


          $sql="insert into tbl_instrutor_tudao(codigo_anac, nome, dt_nasc, sexo, nacionalidade, naturalidade, sangue, alergia, estado_civil, nome_pai, nome_mae, rg, cpf, escolaridade, rua, numero, cidade, estado, cep, telefone, celular, email, contatar, parentesco, endereco_emergencia, bairro_emergencia, cidade_emergencia, uf_emergencia,cep_emergencia, telefone_emergencia, celular_emergencia, recado_emergencia)VALUES
                ('".$codigo_anac."','".$txt_nome."','".$dt_nasc."','".$rdo_sexo."','".$cb_nacionalidade."','".$txt_naturalidade."','".$cb_sangue."',
                '".$txt_alergia."','".$cb_estado_civil."','".$txt_nome_pai."','".$txt_nome_mae."','".$txt_rg."','".$txt_cpf."',
                '".$cb_escolaridade."','".$txt_rua."','".$txt_numero."','".$txt_cidade."','".$cb_estado."','".$txt_cep."','".$txt_telefone."',
                '".$txt_celular."','".$txt_email."','".$txt_contatar."','".$cb_parentesco."','".$txt_endereco_emergencia."','".$txt_bairro_emergencia."','".$txt_cidade_emergencia."',
                '".$cb_uf_emergencia."','".$txt_cep_emergencia."','".$txt_telefone_emergencia."','".$txt_celular_emergencia."','".$txt_recado_emergencia."')";

                if(mysqli_query($con,$sql)){

                    header('location:Instrutor.php');
                }

      }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Instrutor</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style_instrutor.css">
    </head>

    <body>
        <header id="header">

            <div id="container_menu">
                <div id="logo">
                    <img src="IMAGENS/helimaxy-logo.jpg" alt="Logo da empresa">
                </div>

                <nav id="menu">
                    <ul>
                        <li>
                            <a href="Aluno.php">Aluno</a>
                        </li>

                        <li>
                            <a href="Instrutor.php">Instrutor</a>
                        </li>

                        <li>
                            <a href="Matricula.php">Matrícula</a>
                        </li>

                        <li>
                            <a href="Aeronaves.php">Aeronaves</a>
                        </li>

                        <li>
                            <a href="Cursos.php">Cursos</a>
                        </li>

                        <li>
                            <a href="Milhas.php">Milhas</a>
                        </li>

                        <li>
                            <a href="Licenca.php">Licença</a>
                        </li>
                    </ul>
                </nav>
            </div>

        </header>

        <section>

            <div id="container_aluno">
                <div id="titulo_aluno">
                    <h2>Declaração de Instrutor</h2>
                </div>

              <form action="Instrutor.php" method="get">


                <div id="primeira_linha">
                    <div id="container_linha1">

                        <div class="lado_esquerdo"><!--Código Anac-->
                            <a>Código Anac</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="codigo_anac" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Nome-->
                            <a>Nome</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_nome" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Nascimento-->
                            <a>Nascimento</a>
                        </div>

                        <div class="lado_direito">
                            <input type="date" name="dt_nasc" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Sexo-->
                            <a>Sexo</a>
                        </div>

                        <div id="container_sexo">

                                <input type="radio" name="rdo_sexo" value="M">M
                                <input type="radio" name="rdo_sexo" value="F">F

                        </div>

                        <div class="lado_esquerdo"><!--Nacionalidade-->
                            <a>Nacionalidade</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_nacionalidade">
                                <option value="brasileira">brasileira</option>
                            </select>
                        </div>

                        <div class="lado_esquerdo"><!--Naturalidade-->
                            <a>Naturalidade</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_naturalidade" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Tipo Sanguineo-->
                            <a>Tipo Sanguineo</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_sangue">
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="O">O</option>
                                <option value="-">Outro</option>
                            </select>
                        </div>

                        <div class="lado_esquerdo"><!--Alergia-->
                            <a>Alergia</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_alergia" value="">
                        </div>


                    </div>

                </div>

                <div id="segunda_linha">
                    <div id="container_linha2">
                        <div class="lado_esquerdo"><!--Estado Civil-->
                            <a>Estado Civil</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_estado_civil">
                                <option value="Casado">Casado</option>
                                <option value="Solteiro">Solteiro</option>

                                <option value="Viuvo">Viuvo</option>

                                <option value="-">Outro</option>
                            </select>
                        </div>

                        <div class="lado_esquerdo"><!--Nome do pai-->
                            <a>Nome do Pai</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_nome_pai" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Nome de mãe-->
                            <a>Nome da Mãe</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_nome_mae" value="">
                        </div>
                    </div>
                </div>

                <div id="terceira_linha">
                    <div id="container_linha3">

                        <div class="lado_esquerdo"><!--RG-->
                            <a>RG</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_rg" value="">
                        </div>

                        <div class="lado_esquerdo"><!--CPF-->
                            <a>CPF</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_cpf" value="">
                        </div>

                    </div>

                </div>

                <div id="quarta_linha">
                    <div id="container_linha4">
                        <div class="lado_esquerdo"><!--Escolaridade-->
                            <a>Escolaridade</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_escolaridade">
<<<<<<< HEAD
                                <option value="">1º</option>
                                <option value="">2°</option>
                                <option value="">3°</option>
=======
                                <option value="1">1º</option>
                                <option value="2">2°</option>
                                <option value="3">3°</option>
>>>>>>> 6582d535ece966ce10f09f84404d4fd0ac9dc58c
                            </select>
                        </div>
                    </div>
                </div>

                <div id="quinta_linha">
                    <div id="container_linha5">
                        <div class="lado_esquerdo"><!--CMA-->
                            <a>Rua</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_rua" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Alergia-->
                            <a>Número</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_numero" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Cidade-->
                            <a>Cidade</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_cidade" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Estado-->
                            <a>Estado</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_estado">
                                <option value="SP">SP</option>
                            </select>
                        </div>

                        <div class="lado_esquerdo"><!--Cep-->
                            <a>Cep</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_cep" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Telefone-->
                            <a>Telefone</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_telefone" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Celular-->
                            <a>Celular</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_celular" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Cep-->
                            <a>Email</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_email" value="">
                        </div>
                    </div>
                </div>

                <div id="sexta_linha">
                    <div id="container_linha6">
                        <div class="lado_esquerdo"><!--Caso de Emergência-->
                            <a>Contatar</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_contatar" value="">
                        </div>

                        <div class="lado_esquerdo">
                            <a>Parentesco</a>
                        </div>
                        <div class="lado_direito">
                          <select name="cb_parentesco">
                              <option value="Mãe">Mãe</option>
                              <option value="Pai">Pai</option>
                              <option value="Avó">Avó</option>
                              <option value="Avô">Avô</option>
                              <option value="-">Outro</option>
                          </select>
                        </div>
                          <div class="lado_esquerdo">
                              <a>Endereço</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_endereco_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>Bairro</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_bairro_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>Cidade</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_cidade_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>UF</a>
                          </div>
                          <div class="lado_direito">
                            <select name="cb_uf_emergencia">
                                <option value="SP">SP</option>
                            </select>
                          </div>

                          <div class="lado_esquerdo">
                              <a>CEP</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_cep_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>Telefone</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_telefone_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>Celular</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_celular_emergencia" value="">
                          </div>

                          <div class="lado_esquerdo">
                              <a>Recado</a>
                          </div>
                          <div class="lado_direito">
                              <input type="text" name="txt_recado_emergencia" value="">
                          </div>

                        </div>
                    </div>
                    <div id="container_buttons">
                        <input type="submit" name="btn_inserir" value="Preencher">
                        <input type="submit" name="btn_deletar" value="Relatório">
                    </div>
                </div>




            </div>

          </form>

        </section>


    </body>

</html>
