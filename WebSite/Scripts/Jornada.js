window.onload = function () {
    let clickCount = 0;
    const meuBotao = document.getElementById("meuBotao");
    const pontoTableBody = document.getElementById("pontoTableBody");

    // Recupera os dados armazenados no localStorage, se existirem
    const storedData = JSON.parse(localStorage.getItem('pontos')) || [];

    // Função para atualizar a tabela com os dados armazenados
    function updateTable() {
        pontoTableBody.innerHTML = ""; // Limpa a tabela antes de atualizar

        for (const rowData of storedData) {
            const newRow = pontoTableBody.insertRow(0);
            for (const cellData of rowData) {
                const newCell = newRow.insertCell();
                newCell.innerHTML = cellData;
            }
        }
    }
    // Preenche a tabela com os dados recuperados ao carregar a página
    updateTable();

    if (meuBotao) {
        meuBotao.addEventListener("click", function (event) {
            event.preventDefault();  // Prevenção da ação padrão do botão

            clickCount++;
            const data = new Date();
            const dataFormatada = `${data.getDate()}/${data.getMonth() + 1}/${data.getFullYear()}`;
            const horas = data.getHours();
            const minutos = data.getMinutes();
            const horaFormatada = `${horas < 10 ? '0' : ''}${horas}:${minutos < 10 ? '0' : ''}${minutos}`;

            const pontoTableBody = document.getElementById("pontoTableBody");
            const lastRow = pontoTableBody.rows[0];

            // Verifica se já existem 4 registros na tabela para o dia atual
            const registrosDoDia = storedData.find(entry => entry[0] === dataFormatada);
            if (registrosDoDia && registrosDoDia[4] !== "" && registrosDoDia[0] === dataFormatada) {
                alert("Você realizou 4 registros no dia. Por favor, entre em contato com o RH.");
                return;
            }

            if (!lastRow || clickCount % 4 === 1) {
                // Cria uma nova linha se ainda não houver uma ou se for a primeira coluna da sequência
                const newRow = pontoTableBody.insertRow(0);
                const dataCell = newRow.insertCell(0);
                const entrada1Cell = newRow.insertCell(1);
                const saida1Cell = newRow.insertCell(2);
                const entrada2Cell = newRow.insertCell(3);
                const saida2Cell = newRow.insertCell(4);

                dataCell.innerHTML = dataFormatada;
                entrada1Cell.innerHTML = horaFormatada;

                // Adiciona os dados à array e armazena no localStorage
                const newRowData = [
                    dataFormatada,
                    horaFormatada,
                    '', // Saída Almoço
                    '', // Volta Almoço
                    ''  // Saída
                ];

                storedData.unshift(newRowData); // Insere no início da array
                localStorage.setItem('pontos', JSON.stringify(storedData));
            } else {
                // Preenche a coluna correspondente com base no clique
                switch (clickCount % 4) {
                    case 2:
                        lastRow.cells[2].innerHTML = horaFormatada; // Preenche "Saída Almoço"
                        storedData[0][2] = horaFormatada; // Atualiza os dados armazenados
                        break;
                    case 3:
                        lastRow.cells[3].innerHTML = horaFormatada; // Preenche "Volta Almoço"
                        storedData[0][3] = horaFormatada; // Atualiza os dados armazenados
                        break;
                    case 0:
                        lastRow.cells[4].innerHTML = horaFormatada; // Preenche "Saída"
                        storedData[0][4] = horaFormatada; // Atualiza os dados armazenados

                        // Adicionando a chamada AJAX para enviar os dados para o servidor
                        const xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function () {
                            if (xhr.readyState == 4 && xhr.status == 200) {
                                // Aqui você pode lidar com a resposta do servidor, se necessário
                                console.log(xhr.responseText);
                            }
                        };

                        // Construa a string de parâmetros para enviar para o servidor
                        const parametros = `data=${dataFormatada}&entrada=${lastRow.cells[1].innerHTML}&saidaAlmoco=${lastRow.cells[2].innerHTML}&voltaAlmoco=${lastRow.cells[3].innerHTML}&saida=${lastRow.cells[4].innerHTML}`;

                        // Abre uma solicitação POST para o método no código C#
                        xhr.open("POST", "ControleJornada.aspx/RegistrarPonto", true);
                        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                        xhr.send(parametros);

                        // Armazena os dados no localStorage ao completar todas as operações
                        localStorage.setItem('pontos', JSON.stringify(storedData));

                        // Atualiza a tabela com os dados armazenados
                        updateTable();
                        break;
                }
            }

            // Alterna entre os estados do botão
            if (meuBotao.classList.contains("button")) {
                meuBotao.textContent = "PARAR PONTO";
                meuBotao.classList.remove("button");
                meuBotao.classList.add("estado2");
            } else {
                meuBotao.textContent = "INICIAR PONTO";
                meuBotao.classList.remove("estado2");
                meuBotao.classList.add("button");
            }
        });
    }
};