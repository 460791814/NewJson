using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonTool;
using Newtonsoft.Json;

namespace NewJson.Json
{
    public partial class JsonCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])
            {
                case "url":
                    GetJson();
                    break;
                default:
                    break;
            }
        }

        private void GetJson()
        {
            string url = Request["url"];
            string htmlcontent = HttpHelper.SendGet(url);//HttpTool.SendWebRequest(url, new System.Net.CookieContainer());
            string result = JsonConvert.SerializeObject(new { content = htmlcontent });
            Response.Write(result);
            Response.End();
        }
    }
}