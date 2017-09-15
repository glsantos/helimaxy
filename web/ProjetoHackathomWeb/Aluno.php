
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
                        <div id="container_linha1">

                            <div class="lado_esquerdo"><!--Código Anac-->
                                <a>Código Anac</a>
                            </div>

                            <div class="lado_direito">
                                <input type="text" name="codigo_anac" value="">
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
                                <input type="date" name="txt_nasc" value="">
                            </div>

                            <div class="lado_esquerdo"><!--Sexo-->
                                <a>Sexo</a>
                            </div>

                            <div id="container_sexo">

                                    <input type="radio" name="rdo_sexo" value="">M
                                    <input type="radio" name="rdo_sexo" value="">F

                            </div>

                            <div class="lado_esquerdo"><!--Nacionalidade-->
                                <a>Nacionalidade</a>
                            </div>

                            <div class="lado_direito">
                                <select name="cb_nacionalidade">
                                    <option value="">brasileira</option>
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
                                <select name="tipo_sanguineo">
                                    <option value="">A</option>
                                    <option value="">B</option>
                                    <option value="">O</option>
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
                                <select name="estado_civil">
                                    <option value="">Casado</option>
                                    <option value="">Solteiro</option>

                                    <option value="">Viuvo</option>

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
                                <input type="text" name="txt_escolaridade" value="">
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
                                <select name="cidade">
                                    <option value="">A</option>
                                    <option value="">B</option>
                                    <option value="">O</option>
                                    <option value="-">Outro</option>
                                </select>
                            </div>

                            <div class="lado_esquerdo"><!--Estado-->
                                <a>Estado</a>
                            </div>

                            <div class="lado_direito">
                                <select name="estado">
                                    <option value="">A</option>
                                    <option value="">B</option>
                                    <option value="">O</option>
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
                        <input type="submit" name="btn_deletar" value="Deletar">
                    </div>


                </div>



            </section>
        </form>
    </body>
    
</html>