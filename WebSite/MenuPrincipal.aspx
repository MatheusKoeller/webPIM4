<%@ Page Title="Menu Principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="WebSite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/Content/style.css" />
    <link rel="stylesheet" href="/Content/styleP.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>Language School</title>
    <style>
    </style>
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
                <h1>BEM VINDO!</h1>
            </div>
        </div>

        <div id="cont-inf">

            <div class="item-main">
                 <a href="Holerite.aspx" title="HOLERITE">
                    <img src="/img/pagamento.png" alt="Folha de pagamento" class="icon-item">
                </a>
            </div>

            <div class="item-main">
                <a href="ControleJornada.aspx" title="CONTROLE DE JORNADA">
                    <img src="/img/wall-clock_709511.png" alt="CONTROLE DE JORNADA" class="icon-item">
                </a>
            </div>
        </div>
    </main>
    <script src="scripts.js"></script>
    </body>
</html>
</asp:Content>
    

