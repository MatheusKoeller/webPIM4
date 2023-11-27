function tentarLogin() {
    var cpf = document.getElementById("txtCpf").value;
    var senha = document.getElementById("txtSenha").value;

    $.ajax({
        type: "POST",
        url: "Default.aspx/FazerLogin",
        data: JSON.stringify({ "cpf": cpf, "senha": senha }),
        contentType: "application/json; charset=utf-8",
        dataType: "json", // Alterar para "json" para analisar corretamente a resposta JSON
        success: function (data) {
            if (data.d === "OK") {
                // Autenticação bem-sucedida
                alert("Login bem-sucedido!");
                // Redirecionar usando JavaScript
                window.location.href = "/MenuPrincipal.aspx";
            } else {
                // Exibir mensagem de erro
                var errorMessage = document.getElementById("errorMessage");
                if (errorMessage) {
                    errorMessage.innerHTML = data.d; // Acessar a propriedade "d" para obter a mensagem
                }
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // Erro na solicitação
            var errorMessage = document.getElementById("errorMessage");
            if (errorMessage) {
                errorMessage.innerHTML = "Credenciais inválidas";
            }
        }
    });
}
