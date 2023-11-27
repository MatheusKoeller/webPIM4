using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class TestarConexao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Chame a função para preencher a tabela
            PreencherTabela();
        }

        private void PreencherTabela()
        {
            // Substitua 'SuaConnectionString' pela sua string de conexão real
            string connectionString = "Server=tcp:bd-pim.database.windows.net,1433;Initial Catalog=Language_school_pim;Persist Security Info=False;User ID=Guilherme;Password=13042002.Gui;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            // Consulta SQL para obter dados dos funcionários
            string query = "SELECT * FROM funcionarios";

            // Use um DataTable para armazenar os resultados da consulta
            DataTable dataTable = new DataTable();

            // Crie uma conexão SQL
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Abra a conexão e execute a consulta
                    connection.Open();

                    // Use um SqlDataAdapter para preencher o DataTable
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(dataTable);
                    }
                }
            }

            // Crie uma nova linha de cabeçalho
            TableHeaderRow tableHeaderRow = new TableHeaderRow();

            // Preencha o cabeçalho da tabela dinamicamente
            foreach (DataColumn column in dataTable.Columns)
            {
                // Adicione a célula do cabeçalho à linha de cabeçalho
                tableHeaderRow.Cells.Add(new TableHeaderCell { Text = column.ColumnName });
            }

            // Adicione a linha de cabeçalho à tabela
            table.Rows.Add(tableHeaderRow);

            // Preencha os dados da tabela dinamicamente
            foreach (DataRow row in dataTable.Rows)
            {
                // Crie uma nova linha de dados
                TableRow dataRow = new TableRow();

                foreach (DataColumn column in dataTable.Columns)
                {
                    // Adicione a célula de dados à linha de dados
                    dataRow.Cells.Add(new TableCell { Text = row[column].ToString() });
                }

                // Adicione a linha de dados à tabela
                table.Rows.Add(dataRow);
            }
        }
    }
}
