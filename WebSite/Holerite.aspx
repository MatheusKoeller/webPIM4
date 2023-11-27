<%@ Page Title="Holerite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Holerite.aspx.cs" Inherits="WebSite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="/Content/style.css" />
    <link rel="stylesheet" href="/Content/styleF.css"/>
     <script src="/Scripts/GerarPdf.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
    <title>Folha de Pagamento</title>
</head>
<body>
     <nav id="nav-bar">
         <div class="title-menu">
             <img src="/img/loginpin.png" alt="Logo Language School">
         </div>

         <ul id="menu">
             <li class="item-menu">
                 <a href="MenuPrincipal.aspx">
                     <span class="txt-link">TELA PRINCIPAL</span>
                     <i class="bi bi-house-door icon-item"></i>
                 </a>
             </li>

             <li class="item-menu">
                 <a href="Holerite.aspx">
                     <span class="txt-link">HOLERITE</span>
                     <i class="bi bi-cash icon-item"></i>
                 </a>
             </li>

             <li class="item-menu">
                 <a href="ControleJornada.aspx">
                     <span class="txt-link">CONTROLE DE JORNADA</span>
                     <i class="bi bi-clock icon-item"></i>
                 </a>
             </li>

             <li class="item-menu">
                  <a href="Default.aspx" class="btn-sair">SAIR</a>
             </li>
         </ul>
    </nav>
    <main>
        <div id="cont-sup">
            <div class="info-func">
                <h1>HOLERITE</h1>
            </div>
           <form id="dateForm" action="Holerite.aspx" method="post">
                <input type="date" class="mes" id="dataSelecionada" name="dataSelecionada">
               <%-- <input type="button" value="Buscar" id="enviarData">--%>
                <button value="Buscar" id="enviarData" class="botaoBuscar">BUSCAR</button>
          </form>
        <div id="mesSelecionado"></div>
        </div>
        <asp:Panel ID="pnlGridFuncionarios" runat="server" ClientIDMode="Static">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-12">
                    <section class="panel">
                        <div class="panel-body">
                            <div class="form-horizontal">                                                    
                                <section id="unseen">
                                <asp:GridView ID="gridFuncionarios">
                                    <PagerStyle BackColor="#ffff" ForeColor="White" HorizontalAlign="Left" CssClass="paginacaoGrid" />
                                    <Columns>
                                        <asp:BoundField DataField="id_funcionario" HeaderText="id" />
                                        <asp:TemplateField HeaderText="DESCONTO">                                                                      
                                            <ItemStyle Width="90px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="" HeaderText="VALE REFEIÇÃO" ItemStyle-Width="90px" />
                                        <asp:BoundField DataField="" HeaderText="SALÁRIO" />
                                        <asp:BoundField DataField="" HeaderText="VALE TRANSPORTE" />
                                    </Columns>
                                </asp:GridView>
                            </section>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </asp:Panel>
        <div id="imp">
            <button id="btnImprimir">IMPRIMIR</button>
            <!--<a href="/FolhaPag/GerarPDF" class="btn btn-primary">Imprimir</a>-->
        </div>
    </main>
        <script src="/Scripts/GerarPdf.js"></script>
</body>
</html>
</asp:Content>