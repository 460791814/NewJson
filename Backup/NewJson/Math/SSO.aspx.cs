using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewJson.Math
{
    public partial class SSO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])
            {
                case "add":
                    addcookies();
                    break;
                case "get":
                    getcookies();
                    break;
                case "clear":
                    clearcookies();
                    break;
                default:
                    break;
            }
        }
        public void addcookies()
        {
            HttpCookie Cookie = new HttpCookie("newjson");
            Cookie.Domain = "newjson.com";
            Cookie.Expires = DateTime.Now.AddDays(360);
            Cookie.Values.Add("UserName", "newjson");
            Response.Cookies.Add(Cookie);
            Response.Write("cookies写入成功");
            Response.End();
        }
        public void getcookies()
        {
            var username = Request.Cookies["newjson"].Values["UserName"];
            Response.Write(username);
            Response.End();
        }
        public void clearcookies()
        {
            HttpCookie Cookie = new HttpCookie("newjson");
            Cookie.Expires = DateTime.Now.AddDays(-1);
            Cookie.Domain = "newjson.com";
            Response.Cookies.Add(Cookie);
            Response.Write("cookies写入成功");
            Response.End();
        }
    }
}