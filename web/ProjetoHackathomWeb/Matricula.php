<?php

    $conexao = mysql_connect('localhost', 'root', 'bcd127');
    mysql_select_db('db_helimaxy');
	mysql_set_charset('utf-8');
    
    $Aluno = "";
    $Curso = "";
    $Dt_matricula = "";

    if(isset($_GET["btn_inserir"])){
        $Aluno = $_GET["txt_cpf_aluno"];
        $Curso = $_GET["cb_cursos"];
        $Dt_matricula = $_GET["dt_matricula"];
        
        //echo($Curso);
        
        $sqlAluno = "SELECT id_aluno FROM tbl_aluno WHERE cpf='".$Aluno."'";
        $selectAluno=mysql_query($sqlAluno);
        
        if($rsAluno=mysql_fetch_array($selectAluno)){
            $idAluno=$rsAluno["id_aluno"];
        }
          
        $sqlCurso = "SELECT id_curso FROM tbl_curso WHERE curso='".$Curso."'";
        
        $selectCurso=mysql_query($sqlCurso);
        
        if($rsCurso=mysql_fetch_array($selectCurso)){
            $idCurso=$rsCurso["id_curso"];
        }
        echo($idAluno);
        echo($idCurso);
        
        
       // echo("->>".$idCurso);
        
       $sql = "INSERT INTO tbl_matricula(id_aluno,id_curso,dt_matricula) VALUES ('".$idAluno."','".$idCurso."','".$Dt_matricula."');";
        
        $inserir = mysql_query($sql);
        
       if($inserir){
            echo('Matricula cadastrada com sucesso');
        }else{
            echo("erro");
        }
    }

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Instrutor</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/style_matricula.css">
    </head>
    
    <body>
        <form action="Matricula.php" method="get" enctype="multipart/form-data">
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
                
                <div id="primeira_linha">
                    <div id="container_linha1">
                        
                        <div class="lado_esquerdo"><!--Código Anac-->
                            <a>Cpf Aluno</a>
                        </div>

                        <div class="lado_direito">
                            <input type="text" name="txt_cpf_aluno" value="">
                        </div>

                        <div class="lado_esquerdo"><!--Nome-->
                            <a>Curso</a>
                        </div>

                        <div class="lado_direito">
                            <select name="cb_cursos">
                                <option value="Piloto Privado">Piloto Privado</option>
                                <option value="Piloto Comercial">Piloto Comercial</option>
                                <option value="Instrutor de Voo">Instrutor de Voo</option>
                                <option value="Inclusão Classe">Inclusão Classe</option>
                                <option value="Sob-Capota">Sob-Capota</option>
                            </select>
                        </div>

                        <div class="lado_esquerdo"><!--Nascimento-->
                            <a>Data Matricula</a>
                        </div>

                        <div class="lado_direito">
                            <input type="date" name="dt_matricula" value="">
                        </div>
    
                    </div>
                    
                </div>
                
                <div id="container_buttons">
                    <input type="submit" name="btn_inserir" value="Preencher">
                    <input type="submit" name="btn_deletar" value="Deletar">
                </div>
                
                
            </div>
            
            
            
        </section>
        </form>
    </body>
    
</html>