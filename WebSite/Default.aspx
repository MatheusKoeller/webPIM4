<%@ Page Title="Language School" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Language School</title>
        <link rel="stylesheet" href="/Content/styleL.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="/Scripts/login.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="py-4">
        <main class="form-container">
            <img src="/img/loginpin.png" class="mb-4">
            <form id="loginForm">
                <div class="form-floating">
                    <input type="text" id="txtCpf" class="form-control mb-4" name="CPF" placeholder="DIGITE SEU CPF" required>
                    <label for="txtCpf">CPF:</label>
                </div>
                <div class="form-floating">
                    <input type="password" id="txtSenha" class="form-control" name="Senha" placeholder="DIGITE SUA SENHA" required>
                    <label for="txtSenha">SENHA:</label>
                </div>
                <div class="form-check text-start my-3">
                    <input type="checkbox" class="form-check-input" id="flexCheckDefault" name="LembrarDados">
                    <label for="flexCheckDefault" class="form-check-label">LEMBRAR DADOS</label>
                </div>
                <input type="button" id="btnLogar" onclick="tentarLogin()" class="btn btn-primary w-100 py-2" value="LOGIN">
                <div class="error-message" style="color: red;"></div>
            </form>
        </main>
    </body>
    </html>
</asp:Content>
