using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonTool;
using System.Text.RegularExpressions;
using System.Text;

namespace NewJson.WebTools
{
    public partial class Ips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])    
            {
                case "address":
                    GetAddress();
                    break;
                default:
                    break;
            }
        }

        private void GetAddress()
        {
            string ip = Request["ip"];
            string htm = HttpHelper.SendGet("http://www.ip138.com/ips138.asp?ip="+ip+"&action=2");
            htm = htm.Replace("\t", "");

            string reg = "(<h1>(.*?)</h1>)";
            string reg1 = "(<ul class=\"ul1\">(.*?)</ul>)";
            StringBuilder result = new StringBuilder();
            result.Append(GetByReg(htm,reg,0));
            result.Append(GetByReg(htm, reg1, 0));
            Response.Write(result);
            Response.End();
           
        }
        public string GetByReg(string html, string reg, int i)
        {

            string result = "";
            Regex r = new Regex(reg);
            if (r.IsMatch(html))
            {
                Match m = r.Match(html);
                result = m.Groups[i].Value;
            }
            return result;
        }
    }
}