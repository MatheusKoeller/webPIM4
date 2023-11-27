using System;
using System.Web;
using System.Web.Http;

namespace WebSite
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Configuração do roteamento WebForms
            RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes);

            // Configuração do roteamento Web API
            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}
