<?php
    //Conexao com o banco
    $conexao = mysql_connect('localhost', 'root', 'bcd127');
    mysql_select_db('db_helimaxy');
	mysql_set_charset('utf-8');
    
        $nome = "";
        $dt_nasc = "";
        $sexo = "";
        $nacionalidade = "";
        $naturalidade = "";
        $tipo_sangue = "";
        $cma = "";
        $alergia = "";
        $phh = "";
        $estado_civil = "";
        $nome_pai = ""; 
        $nome_mae = "";
        $rg = "";
        $cpf = "";
        $reservista = "";
        $orgao = "";
        $titulo_eleitor = "";
        $escolaridade = "";
        $rua = "";
        $numero = "";
        $cidade = "";
        $estado = "";
        $cep = "";
        $telefone = "";
        $celular = "";
        $email = "";
        $emergencia = "";
        $btn_inserir = "";
    
    //Verifica se o botão existe
    if(isset($_POST['btn_inserir'])){
        $nome = $_POST["txt_nome"];
        $sexo = $_POST["rdo_sexo"];
        $estado_civil=$_POST["cb_estado_civil"];
        $rg = $_POST["txt_rg"];
        $cpf = $_POST["txt_cpf"];
        $escolaridade = $_POST["cb_escolaridade"];
        $naturalidade = $_POST["txt_naturalidade"];
        $nacionalidade = $_POST["cb_nacionalidade"];
        $dt_nasc = $_POST["dt_nasc"];
        $nome_pai = $_POST["txt_nome_pai"]; 
        $nome_mae = $_POST["txt_nome_mae"];
        $tipo_sangue = $_POST["cb_tipo_sangue"];
        $alergia = $_POST["txt_alergia"];
//        $cma = $_POST["txt_cma"];
        
//        $phh = $_POST["txt_phh"];
        
        
        
//        $reservista = $_POST["txt_reservista"];
//        $orgao = $_POST["txt_orgao"];
//        $titulo_eleitor = $_POST["txt_titulo_eleitor"];
        
//        $rua = $_POST["txt_rua"];
//        $numero = $_POST["txt_numero"];
//        $cidade = $_POST["cb_cidade"];
//        $estado = $_POST["cb_estado"];
//        $cep = $_POST["txt_cep"];
//        $telefone = $_POST["txt_telefone"];
//        $celular = $_POST["txt_celular"];
//        $email = $_POST["txt_email"];
//        $emergencia = $_POST["txt_emergencia"];
//        $btn_inserir = $_POST["btn_inserir"];
        
        $sql= "INSERT INTO tbl_aluno(nome,sexo,estado_civil,rg,cpf,escolaridade,naturalidade,nacionalidade,nascimento,nome_pai,nome_mae,tipo_sangue,alergias) VALUES ('".$nome."','".$sexo."','".$estado_civil."','".$rg."','".$cpf."','".$escolaridade."','".$naturalidade."','".$nacionalidade."','".$dt_nasc."','".$nome_pai."','".$nome_mae."','".$tipo_sangue."','".$alergia."');";
        
        $inserir = mysql_query($sql);
        
        if($inserir){
            echo("inserido com Sucesso");
        }else{
            echo("Deu ruim amigao");
        }
     echo($sql);   
    }

    //botão editar
    if(isset($_POST['btn_editar'])){
        $id = $_POST["id_aluno"];
        $nome = $_POST["txt_nome"];
        $sexo = $_POST["rdo_sexo"];
        $estado_civil=$_POST["cb_estado_civil"];
        $rg = $_POST["txt_rg"];
        $cpf = $_POST["txt_cpf"];
        $escolaridade = $_POST["cb_escolaridade"];
        $naturalidade = $_POST["txt_naturalidade"];
        $nacionalidade = $_POST["cb_nacionalidade"];
        $dt_nasc = $_POST["dt_nasc"];
        $nome_pai = $_POST["txt_nome_pai"]; 
        $nome_mae = $_POST["txt_nome_mae"];
        $tipo_sangue = $_POST["cb_tipo_sangue"];
        $alergia = $_POST["txt_alergia"];  
        
        $sql= "UPDATE tbl_aluno SET nome='$nome',sexo='$sexo',estado_civil='$estado_civil',rg='$rg',cpf='$cpf',escolaridade='$escolaridade',naturalidade='$naturalidade',nacionalidade='$nacionalidade',nascimento='$dt_nasc',nome_pai='$nome_pai',nome_mae='$nome_mae',tipo_sangue='$tipo_sangue',alergias='$alergia' WHERE id_aluno='$id';";
        
        $editar = mysql_query($sql);
        
        if($editar){
            echo("Editado com sucesso");
        }else{
            echo("Deu Ruim Amigão");
        }
        echo($sql);
    }
    
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Aluno</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style_aluno.css">
    </head>
    
    <body>
           
        <form action="Aluno.php" method="post" enctype="multipart/form-data">
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
                        <h2>Cadastro de Aluno</h2>
                        
                    </div>

                    <div id="primeira_linha">
                        <div id="upload_img">
                            <input type="file" name="fileImagem"/>
                        </div>
                        <div id="container_linha1">

                            <div class="lado_esquerdo"><!--Código Anac-->
                                <a>Id Aluno</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="id_aluno" value="">
                            </div>

                            <div class="button_pesquisar">
                                <input type="submit" name="btn_pusquisar_aluno" value="pesquisar">
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
                                    <option value="b">brasileira</option>
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
                                <select name="cb_tipo_sangue">
                                    <option value="A">A</option>
                                    <option value="b">B</option>
                                    <option value="O">O</option>
                                    <option value="-">Outro</option>
                                </select>
                            </div>

                            <div class="lado_esquerdo"><!--CMA-->
                                <a>CMA</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_cma" value="">
                            </div>

                            <div class="lado_esquerdo"><!--Alergia-->
                                <a>Alergia</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_alergia" value="">
                            </div>

                            <div class="lado_esquerdo"><!--PPH-->
                                <a>PHH</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_phh" value="">
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
                                    <option value="C">Casado</option>
                                    <option value="S">Solteiro</option>

                                    <option value="V">Viuvo</option>

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

                            <div class="lado_esquerdo"><!--Reservista-->
                                <a>Reservista</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_reservista" value="">
                            </div>

                        </div>

                        <div id="container2_linha3">
                            <div class="lado_esquerdo"><!--Orgao-->
                                <a>Orgão Expedidor</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_orgao" value="">
                            </div>

                            <div class="lado_esquerdo"><!--Titulo de eleitor-->
                                <a>Título de Eleitor</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_titulo_eleitor" value="">
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
                                    <option value="1">1º</option>
                                    <option value="2">2°</option>
                                    <option value="3">3°</option>
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
                                <select name="cb_cidade">
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="O">O</option>
                                    <option value="-">Outro</option>
                                </select>
                            </div>

                            <div class="lado_esquerdo"><!--Estado-->
                                <a>Estado</a>
                            </div>

                            <div class="lado_direito">
                                <select name="cb_estado">
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="O">O</option>
                                    <option value="-">Outro</option>
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
                                <a>Caso de Emergência</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="txt_emergencia" value="">
                            </div>
                        </div>
                    </div>

                    <div id="container_buttons">
                        <input type="submit" name="btn_inserir" value="Inserir">
                        <input type="submit" name="btn_editar" value="Editard">
                    </div>


                </div>



            </section>
        </form>
    </body>
    
</html>