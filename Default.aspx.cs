using System;
using System.Drawing;
using MainWebsite.DA;

namespace MainWebsite
{

    public partial class Default : System.Web.UI.Page
    {
        private const string Endpoint = "https://whiraj.me/nodeapi/postURL";

        protected void Page_Load(object sender, EventArgs e)
        {
            TXTUrlOutput.Text = "";
            ccButton.Visible = false;
        }

        protected void SubmitUrl_OnClick(object sender, EventArgs e)
        {
            var da = new DataAccess();            
            //get entered value
            var urlResult = Request.Form["TxtSubmitUrl"];

            //check if proper URL 
            if (Uri.IsWellFormedUriString(urlResult, UriKind.RelativeOrAbsolute) && !string.IsNullOrEmpty(urlResult))
            {
                //post Data
                da.AsyncApiCall(urlResult, Endpoint).Wait();
            
                //Post result to ui 
                TXTUrlOutput.Text = "Your New URL - " + da.SUrl;
                TXTUrlOutput.ForeColor = Color.FromArgb(176, 202, 199);
                ccButton.Visible = true;
            }
            else
            {
                TXTUrlOutput.Text = "You have Entered a Wrong URL";
                TXTUrlOutput.ForeColor = Color.FromArgb(255, 82, 28);
                ccButton.Visible = false;
            }

        }
        
    }
}
