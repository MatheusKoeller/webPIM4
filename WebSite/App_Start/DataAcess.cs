using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebSite
{
    public class DataAccess
    {
        public static bool ValidarUsuario(string cpf, string senha)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConexaoBanco"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    Console.WriteLine($"teste");
                    string query = "SELECT COUNT(*) FROM funcionarios WHERE cpf = @cpf AND senha = @senha";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@cpf", cpf);
                        cmd.Parameters.AddWithValue("@senha", senha);

                        // Usando ExecuteScalar para obter o número de usuários correspondentes
                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        // Retorna true se exatamente um usuário for encontrado
                        return count == 1;
                    }
                }
            }
            catch (Exception ex)
            {
                // Lidar com a exceção
                Console.WriteLine($"Erro ao validar usuário: {ex.Message}");
                return false; // Retorna false em caso de erro
            }
            //finally
            //{
            //    // Bloco finally para garantir que a conexão seja sempre fechada
            //    if (connection != null && connection.State == ConnectionState.Open)
            //    {
            //        connection.Close();
            //    }
            //}
        }

        public static bool TestarConexao()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConexaoBanco"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    Console.WriteLine($"Teste de conexão bem-sucedido.");
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao testar conexão: {ex.Message}");
                return false;
            }
        }
    }
}
