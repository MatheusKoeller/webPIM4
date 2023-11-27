using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Http;

namespace WebSite.Controllers
{
    public class LoginController : ApiController
    {
        [HttpPost]
        public string Login([FromBody] LoginModel model)
        {
            try
            {
                string cpf = model.CPF;
                string senha = model.Senha;

                if (DataAccess.ValidarUsuario(cpf, senha))
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
                Console.WriteLine($"Erro no método Login: {ex.Message}");
                return "Erro";
            }
        }
    }

    public class LoginModel
    {
        public string CPF { get; set; }
        public string Senha { get; set; }
    }
}
