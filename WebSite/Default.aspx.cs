using System;
using System.Web.UI;

namespace WebSite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [System.Web.Services.WebMethod]
        public static string FazerLogin(string cpf, string senha)
        {
            try
            {
                if (UsuarioValido(cpf, senha))
                {
                    // Autenticação bem-sucedida
                    return "OK";
                }
                else
                {
                    // Exibir mensagem de erro
                    return "Credenciais inválidas";
                }
            }
            catch (Exception ex)
            {
                // Lidar com exceções
                Console.WriteLine($"Erro no método FazerLogin: {ex.Message}");
                return "Erro";
            }
        }

        private static bool UsuarioValido(string cpf, string senha)
        {
            return DataAccess.ValidarUsuario(cpf, senha);
        }
    }
}
