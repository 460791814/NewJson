using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonTool;
using Newtonsoft.Json;
using System.Net;
using System.IO;
using System.Text;

namespace NewJson.WebTools
{
    public partial class HttpTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])
            {
                case "send":
                    Send();
                    break;
                default:
                    break;
            }
        }

        private void Send()
        {
            try
            {


                string param = Request["param"];
                string type = Request["type"];
                string url = Request["url"];
                var data = param.Replace("|", "&");
                string responseHtml = "";
                HttpWebResponse response = null;
                switch (type)
                {
                    case "get":
                       
                        response = HttpTool.GetHttpWebResponse(url + "?" + data);
                        break;
                    case "post":
                        response = HttpTool.GetHttpWebResponse(url, data);
                        break;
                    default:
                        break;
                }


                string header = response.Headers.ToString();

                Stream getStream = response.GetResponseStream();

                responseHtml = new StreamReader(getStream, Encoding.UTF8).ReadToEnd();

                string result = JsonConvert.SerializeObject(new { content = responseHtml, header = response.Headers.ToString() });
                Response.Write(result);
                Response.End();
            }
            catch (Exception e)
            {

                string result = JsonConvert.SerializeObject(new { content = e.Message, header = "" });
                Response.Write(result);
                Response.End();
            }
        }
    }
}