<%@ Page Title="Testar Conexão" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestarConexao.aspx.cs" Inherits="WebSite.TestarConexao" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Testar Conexão</title>
        <link rel="stylesheet" href="/Content/styleL.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="/Scripts/login.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="py-4">
        <main class="form-container">
            <img src="/img/loginpin.png" class="mb-4">
            <form id="loginForm">
                <!-- O controle de tabela deve estar aqui -->
                <asp:Table ID="table" runat="server" CssClass="table">
                </asp:Table>
            </form>
        </main>
    </body>
    </html>
</asp:Content>
