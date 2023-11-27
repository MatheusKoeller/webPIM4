<%@ Page Title="Controle Jornada" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControleJornada.aspx.cs" Inherits="WebSite.ControleJornada" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/Content/style.css" />
        <link rel="stylesheet" href="/Content/styleC.css" />


        <script src="/Scripts/Jornada.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <title>Language School</title>
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
        <div class="container">
            <div id="title">   
                <h1>REGISTRO DE HORAS</h1>
            </div>
            <br />
            <br />
            <div id="table-container">
                <table id="time-table">
                    <thead>
                        <tr>
                            <th>Data</th>
                            <th>Entrada</th>
                            <th>Saída Almoço</th>
                            <th>Volta Almoço</th>
                            <th>Saída</th>
                        </tr>
                    </thead>
                    <tbody id="pontoTableBody">
                         <!-- Aqui serão inseridos os registros de ponto -->
                    </tbody>
                </table>
                <button id="meuBotao" class="button">REGISTRAR PONTO</button>
            </div>
        </div>
        <script src="/Scripts/Jornada.js"></script>
    </main>
</body>
</html>
</asp:Content>
