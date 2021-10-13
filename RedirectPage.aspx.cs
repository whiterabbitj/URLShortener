using System;
using System.Web;
using MainWebsite.DA;

namespace MainWebsite
{
    public partial class RedirectPage :  System.Web.UI.Page
    {
        private const string EndpointTarget = "https://whiraj.me/nodeapi/getTarget";
       

        protected  void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            var da = new DataAccess();
            da.AsyncApiCall(HttpContext.Current.Request.Url.AbsolutePath.Remove(0, 1), EndpointTarget).Wait();
            RedirectUrl(da.SUrl);
        }
        
        private void RedirectUrl(string redirectUrl)
        {
            if (redirectUrl == "NA") return;
            if (redirectUrl.StartsWith("https") || redirectUrl.StartsWith("http"))
                Response.Redirect(redirectUrl);
            else
                Response.Redirect("http://" + redirectUrl);
        }

    }
   
}