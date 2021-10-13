using System.Web;
using System.Web.Routing;

namespace MainWebsite
{
    public class Global : HttpApplication
    {
        protected void Application_Start()
        {

            RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "HomeRoute",
                  "Home",
                "~/Default.aspx"
            );
             routes.MapPageRoute(
                "Redirect",
                  "{url}",
                "~/RedirectPage.aspx"
            );
    
        }
    }
}
