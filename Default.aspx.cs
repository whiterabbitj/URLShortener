using System;
using System.Drawing;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using MainWebsite.DA;

namespace MainWebsite
{

    public partial class Default : System.Web.UI.Page
    {
        private const string Endpoint = "https://whiraj.me/nodeapi/postURL";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TXTUrlOutput.Text = "";
                ccButton.Visible = false;    
            }
            
        }

        protected void SubmitUrl_OnClick(object sender, EventArgs e)
        {
            var da = new DataAccess();            
            //get entered value
            var urlResult = Request.Form["TxtSubmitUrl"];

            //check if proper URL 
            if (GetResponseBody(urlResult) && !string.IsNullOrEmpty(urlResult))
            {
                //post Data
                da.AsyncApiCall(urlResult, Endpoint).Wait();
            
                //Post result to ui 
                TXTUrlOutput.Text = "Your New URL - " + da.SUrl;
                TXTUrlOutput.ForeColor = Color.FromArgb(176, 202, 199);
                ccButton.Visible = true;
                clipboard.Visible = true;
            }
            else
            {
                TXTUrlOutput.Text = "You have Entered a Wrong URL";
                TXTUrlOutput.ForeColor = Color.FromArgb(255, 82, 28);
                ccButton.Visible = true;
                clipboard.Visible = false;
            }

        }

        private bool GetResponseBody(string url)
        {   
               if (!url.StartsWith("https") && !url.StartsWith("http"))
                   url = "http://" + url;
               var request = WebRequest.Create(url);
               try
               {
                   request.GetResponse();
               }
               catch //If exception thrown then couldn't get response from address
               {
                   return false;
               }

               return true;

        }

    }
}
