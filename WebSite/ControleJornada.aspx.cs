    using System;
    using System.Web.Services;

    namespace WebSite
    {
        public partial class ControleJornada : System.Web.UI.Page
        {
            // Método para ser chamado via AJAX
            [WebMethod]
            public static void RegistrarPonto(string data, string entrada, string saidaAlmoco, string voltaAlmoco, string saida)
            {
                // Aqui você pode processar os dados recebidos do JavaScript
                // Exemplo: salvar os dados em um banco de dados, fazer cálculos, etc.

                // Exemplo simples de impressão dos dados no console
                Console.WriteLine($"Data: {data}, Entrada: {entrada}, Saída Almoço: {saidaAlmoco}, Volta Almoço: {voltaAlmoco}, Saída: {saida}");
            }
        }
    }
