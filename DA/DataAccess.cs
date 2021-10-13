using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using Newtonsoft.Json;

namespace MainWebsite.DA
{
    public class DataAccess
    {

        public string SUrl = "";
        
        public async Task AsyncApiCall(string url, string endpoint)
        {
            var jsonValues = ReturnJsonVariables(url);
            string returnUrl; 
            var content = new StringContent(jsonValues, Encoding.UTF8, "application/json");
            try
            {
                using (var client = new HttpClient())
                {
                    using (var response = await client.PostAsync(endpoint, content))
                    {
                        var jsonReturn = await response.Content.ReadAsStringAsync();
                        returnUrl = JsonConvert.DeserializeObject<string>(jsonReturn);
                    }
                }
            }
            catch (Exception exception)
            {
                Console.Write(exception);
                throw;
            }
            SUrl = returnUrl;
        }
        
        private string ReturnJsonVariables(string url)
        {
            url = WebUtility.HtmlEncode(url);
            var values = new Dictionary<string, string> { { "URL", url  } };
            return JsonConvert.SerializeObject(values);
        }

        
        

    }
}