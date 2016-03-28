using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonTool;
using System.Net;
using Newtonsoft.Json;

namespace NewJson.Change
{
    public partial class ShortUrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            switch (Request["method"])
            {
                case "encode":
                    Encode();
                    break;
                case "decode":
                    Decode();
                    break;
                default:
                    break;
            }
        }

        private void Encode()
        {
            string strUrl = Request["url"];
            if (!strUrl.Contains("http://") && !strUrl.Contains("https://"))
            {
                strUrl = "http://" + strUrl;
            }
            string json = Utils.SendWebRequest("http://api.t.sina.com.cn/short_url/shorten.json?source=1681459862&url_long=" + System.Web.HttpUtility.UrlEncode(strUrl));
            Response.Write(json);
            Response.End();
        }
        private void Decode()
        {
            HttpWebResponse response = HttpTool.GetHttpWebResponse(Request["url"], new System.Net.CookieContainer());
            string result = JsonConvert.SerializeObject(new { content = response.ResponseUri });
            Response.Write(result);
            Response.End();
        }
    }
}