using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using CommonTool;

namespace NewJson.EncDec
{
    public partial class MD5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["action"])
            {
                case "md5":
                   // GetMd5();
                    break;
                default:
                    break;
            }
        }

        private void GetMd5()
        {
            string param = Request["str"];
            string result = JsonConvert.SerializeObject(new { m16 = Utils.Md5(param, 16), m32 = Utils.Md5(param) });
            Response.Write(result);
            Response.End();
        }
    }
}