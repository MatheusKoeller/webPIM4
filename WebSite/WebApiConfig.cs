// WebApiConfig.cs
using System.Web.Http;

namespace WebSite
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "LoginApi",
                routeTemplate: "api/Login/{action}",
                defaults: new { controller = "Login" }
            );
        }
    }
}
