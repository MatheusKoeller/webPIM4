document.getElementById("btnImprimir").addEventListener("click", function () {
    var dataSelecionada = new Date(document.querySelector(".mes").value);
    var mesSelecionado = dataSelecionada.toLocaleDateString('pt-BR'); // 'pt-BR' para o formato brasileiro

    var tabelaHolerite = document.getElementById("cont-table");

    var janelaDeImpressao = window.open('', '', 'width=900,height=900');

    var conteudoParaImpressao = `
        <html>
        <head>
            <title>Holerite</title>
        </head>
        <body>
            <h3>Holerite - ${mesSelecionado}</h3>
            ${tabelaHolerite.outerHTML}
        </body>
        </html>
    `;

    janelaDeImpressao.document.write(conteudoParaImpressao);
    janelaDeImpressao.print();
    janelaDeImpressao.close();
});

$(document).ready(function () {
    $("#enviarData").click(function () {
        var dataSelecionada = $("#dataSelecionada").val();
        // Enviar a data para o servidor
        $.post("Holerite.aspx", { dataSelecionada: dataSelecionada }, function (response) {
            // Manipular a resposta do servidor, se necessário
            $("#mesSelecionado").html(response);
            // Atualizar o grid com os dados do servidor
            atualizarGrid();
        });
    });

    function atualizarGrid() {
        // Coloque aqui o código para atualizar o grid com os dados do servidor
        __doPostBack('<%= gridFuncionarios.ClientID %>', '');
    }
});


