<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evento.aspx.cs"
    Inherits="MaisCultura.Site.EventoEspecifico" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>

    <!DOCTYPE html>


    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <link href="Styles/EventoEspecifico.css" rel="stylesheet" type="text/css" />

        <title> +Cultura | Evento Específico</title>
    </head>

    <body>
        <div id="shade" class="shade"></div>

        <form id="form1" runat="server">
           <header class="header-primaria">
            <figure class="figure-header">
                <img src="Images/logoNomeMenor.png" class="logo-header"/>
            </figure>

            <article class="buttons">
                <asp:Button ID="btnLog" runat="server" Text="Entrar" class="button button-log" OnClick="btnLog_Click" />
                <asp:Button ID="btnCad" runat="server" Text="Cadastrar" class="button button-log" OnClick="btnCad_Click" />
            </article>

            <article class="usuario">
                <div class="menuUsuario">
                    <asp:Button CssClass="dropbtn" ID="dropbtnUsuario" runat="server" Text="Nome" />
                    <div class="dropdown-content">
                    <asp:Literal ID="litDropDownHome" runat="server"></asp:Literal>  <%--Possível aplicar databinder--%>
                    <asp:Literal ID="litDropDownPerfil" runat="server"></asp:Literal>
                     <a href="eventos.aspx">Sair</a>
                    </div>
                </div>
               
                <%--<img src="Images/perfil526ace.png" class="imgPerfil">--%>
                <asp:Literal ID="litImgPerfil" runat="server"></asp:Literal>
                
            </article>
        </header>

            <section class="sectionBack">
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar"
                    OnClientClick="JavaScript:window.history.back(1); return false;" />
            </section>

            <main class="principal">

                <div class="corpo">
                    <section class="header-corpo">
                        <div class="tituloSave">
                            <asp:Label ID="lblTituloEvento" runat="server" Text="Interclasse Ablas FIlho x Etecaf"
                                CssClass="titulo"></asp:Label>

                            <asp:UpdatePanel ID="updBtnSave" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btnSave" runat="server" Text="" cssClass="save naoSalvo" OnClick="btnSave_Click" AutoPostBack="False"/>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <figure class="save">

                                <img class="save" src="Images/save.png" />

                            </figure>
                        </div>
                        <article class="tags">
                            <h2 class="categorias">
                                CATEGORIAS
                            </h2>
                            <asp:Literal ID="litCategorias" runat="server"></asp:Literal>


                        </article>
                    </section>

                    <section id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="Images/interclasse.jpg" alt="Primeiro Slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="Images/interclasse.jpg" alt="Segundo Slide">
                            </div>

                            <div class="carousel-item">
                                <img class="d-block w-100" src="Images/interclasse.jpg" alt="Terceiro Slide">
                            </div>
                        </div>

                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                            data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>

                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                            data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Próximo</span>
                        </a>
                    </section>

                    <section class="sec-local">
                        <h2>LOCAL</h2>
                        <asp:Label ID="lblLocalEvento" runat="server"
                            Text="Rua do Capeta vulgo Enzo Albuquerque, nº666"></asp:Label>
                    </section>

                    <section class="descricao">
                        <div class="txtDescricao">
                            <h3 class="tituloDesc">DESCRIÇÃO</h3>
                            <asp:Label ID="lblDescEvento" runat="server"
                                Text="Nesta semana do dia 02/09 até o dia 05/09, venha participar de diversas aulas gratuitas no período da manhã sobre o básico do Karatê e do Judô, com o mestre Lucas César, professor de diversas artes marciais a mais de 20 anos na região, e cinco vezes campeão nacional de Karatê. A importância do esporte na vida da população é indiscutível, e, por isso, a prefeitura de Santos patrocina este evento, que será completamente gratuito para todos os seus participantes. 
Acontecerão aulas de Karatê e Judô em dias intercalados. Nos dias 2 e 4 haverão aulas de Karatê. Nos dias 3 e 5 haverão aulas de Judô. Não é necessário trazer nenhum equipamento prévio, pois todos os necessários serão cedidos para uso durante a semana pelo Sesc Santos.">
                            </asp:Label>
                        </div>
                    </section>

                    <section class="avaliacaodoCriador">
                        <h2 class="h2"> Avaliações do Evento </h2>
                        <section class="avaliacoes">
                            <asp:Literal ID="litAvaliacoes" runat="server"></asp:Literal>
                            <section class="suaAvaliacao">
                                <div class="suaNota">
                                    <h4> Deixe uma nota sobre esse criador... </h4>
                                    <asp:DropDownList ID="ddlEstrelas" runat="server">
                                        <asp:ListItem Text="Uma estrela" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Duas estrelas" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Três estrelas" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Quatro estrelas" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Cinco estrelas" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="seuTexto">
                                    <asp:TextBox ID="txtBoxAvaliacao" runat="server" mode="multiline"
                                        placeholder="Deixe aqui sua avaliação sobre esse criador..."></asp:TextBox>
                                </div>
                                <asp:Button ID="btnAvaliar" runat="server" Text="Enviar Avaliação" />
                            </section>
                        </section>
                    </section>

                </div>

                <div class="lateral">
                    <section class="responsavel">
                        <div class="titleResp">
                            <p>Responsável</p>
                        </div>
                        <figure>
                            <img class="perfilResp" src="Images/perfil526ace.png" />
                        </figure>
                        <div class="nmMedia">
                            <a href="PerfilOutroUsuario.aspx">
                                <asp:Label ID="titleResponsavel" runat="server" Text="Fulano de Tal"
                                    CssClass="titleResponsavel"></asp:Label>
                            </a>
                            <div class="notas">
                                <asp:Label ID="lblNotaResp" runat="server" Text="4,8" CssClass="notaResp"></asp:Label>
                                <figure>
                                    <img class="starResp" src="Images/star.png" />
                                </figure>
                            </div>
                        </div>
                        <asp:Label ID="lblArroba" runat="server" Text="@fulaninho" CssClass="arrobaResp"></asp:Label>
                    </section>

                    <section class="interesses">
                        <h4 class="nmrInteresse">
                            <asp:Label ID="lblNmrInteresse" runat="server" Text="580"></asp:Label>
                            pessoas já demonstraram interesse em participar
                        </h4>

                        <asp:UpdatePanel ID="updBtnInteresse" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Button ID="btnInteresse" runat="server" Text="Demonstrar Interesse" OnClick="btnInteresse_Click" CssClass="naoInt" AutoPostBack="False"/>
                            </ContentTemplate>
                        </asp:UpdatePanel> 
                    </section>

                    <section class="dtHr">
                        <table id="listBoxDtHr" class="listBox">
                            <tr>
                                <th>Data</th>
                                <th>Hora de Início</th>
                                <th>Hora do Fim</th>
                            </tr>
                            <tr class="dadosTable">
                                <td>
                                    <asp:Literal ID="litData" runat="server">00/00/0000</asp:Literal>

                                </td>
                                <td>
                                    <asp:Literal ID="litHrInicio" runat="server">00:00</asp:Literal>

                                </td>
                                <td>
                                    <asp:Literal ID="litHrFim" runat="server">00:00</asp:Literal>

                                </td>
                            </tr>
                        </table>

                    </section>
                    <asp:Button ID="btnDenuncia" runat="server" Text="Tenho um problema" />

                </div>
            </main>

            <div class="login pop" id="log">
                <section class="headerLogin">
                    <h4 class="titleLogin">Entrar</h4>
                </section>
                <asp:TextBox ID="txtBoxUser" runat="server" placeholder="Seu nome de usuário" CssClass="txtLog">
                </asp:TextBox>
                <asp:TextBox ID="txtBoxSenha" runat="server" placeholder="Sua senha" CssClass="txtLog"></asp:TextBox>
                <asp:Button ID="btnLogar" runat="server" Text="Entrar" />
                <asp:Button ID="btnSairLogin" runat="server" Text="Fechar" />
            </div>
            <div class="cadastrar pop" id="cad">

            <section class="headerCad">
                <h4 class="titleCad">Cadastrar</h4>
            </section>

            <div class="nms">
                <asp:TextBox ID="txtBoxNome" runat="server" placeholder="Seu nome" CssClass="txtCadNm"></asp:TextBox>
                <asp:TextBox ID="txtBoxSobrenome" runat="server" placeholder="Seu sobrenome" CssClass="txtCadNm"></asp:TextBox>
            </div>

            <asp:TextBox ID="txtBoxEmail" runat="server" placeholder="Seu email" CssClass="txtCad"></asp:TextBox>

            <asp:TextBox ID="txtBoxNmUsuario" runat="server" placeholder="Seu nome de usuário" CssClass="txtCad"></asp:TextBox>

            <asp:TextBox ID="txtBoxSenhaCad" runat="server" placeholder="Sua senha" CssClass="txtCad"></asp:TextBox>

            <asp:DropDownList ID="ddlTipoUser" runat="server" CssClass="txtCad">
                <asp:ListItem runat="server" CssClass="listDdl" Value="Usuário Comum">
                    Usuário Comum
                </asp:ListItem>

                <asp:ListItem runat="server" CssClass="listDdl" Value="Criador de Eventos">
                    Criador de Eventos
                </asp:ListItem>

                <asp:ListItem runat="server" CssClass="listDdl" Value="Empresa">
                    Empresa
                </asp:ListItem> 
            </asp:DropDownList> 

            <div class="dtNasc">
                <asp:Label ID="lblNasc" runat="server" Text="Data de Nascimento"></asp:Label>

                <div class="ddlsDtNasc">

                    <asp:TextBox ID="txtData" runat="server" type="date"> CssClass="txtCadDt" ID="dia"</asp:TextBox>
                </div>          
            </div>
            
            <div class="sexo">
                <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>

                <asp:DropDownList ID="ddlSexo" runat="server">
                    <asp:ListItem runat="server" CssClass="listDdl" Value="M">
                        Masculino
                    </asp:ListItem>

                    <asp:ListItem runat="server" CssClass="listDdl" Value="F">
                        Feminino
                    </asp:ListItem>

                    <asp:ListItem runat="server" CssClass="listDdl" Value="NO">
                        Desejo não informar
                    </asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click"/>
            <asp:Button ID="btnSairCad" runat="server" Text="Fechar"/>
        </div>

            <div class="denuncia pop" id="denuncia">
                <div class="headerDenuncia">
                    <h4>Relatar problema com o evento</h4>
                </div>
                <asp:Label ID="lblMotivo" runat="server" Text="Motivação"></asp:Label>
                <asp:DropDownList ID="ddlMotivos" runat="server">
                    <asp:ListItem runat="server">Má organização</asp:ListItem>
                    <asp:ListItem runat="server">Má localização</asp:ListItem>
                    <asp:ListItem runat="server">Local inapropriado</asp:ListItem>
                    <asp:ListItem runat="server">Promessa não cumprida</asp:ListItem>
                    <asp:ListItem runat="server">Falta de segurança</asp:ListItem>
                    <asp:ListItem runat="server">Fraude</asp:ListItem>
                    <asp:ListItem runat="server">Outros</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblDesc" runat="server" Text="Descrição do problema"></asp:Label>
                <asp:TextBox ID="txtBoxDescProb" runat="server" mode="multiline"
                    placeholder="Escreva aqui a descrição do problema que você encontrou."></asp:TextBox>
                <asp:Button ID="btnDenunciar" runat="server" Text="Enviar reclamação" />
                <asp:Button ID="btnSairDenuncia" runat="server" Text="Fechar" />

            </div>

            <div class="error pop" id="error">
                <p> Entre ou Cadastre-se para interagir com os eventos! </p>
            </div>
        </form>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 

    <script type="text/javascript" src="js/CadastroLogin.js"></script>
    <script type="text/javascript" src="js/save.js"></script>
</body>

</html>