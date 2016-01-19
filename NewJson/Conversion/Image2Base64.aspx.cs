using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;

namespace NewJson.Conversion
{
    public partial class Image2Base64 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])
            {
                case "base64":
                    GetBase64();
                    break;
                default:
                    break;
            }
        }

        private void GetBase64()
        {
          
            HttpPostedFile oFile = Request.Files["files[]"];

            Stream stream = oFile.InputStream;
        
            string result = JsonConvert.SerializeObject(new { content = ImgToBase64String(stream) });
            Response.Write(result);
            Response.End();
          
        }


        //图片 转为    base64编码的文本
        private string ImgToBase64String(Stream ms)
        {
            try
            {


                byte[] arr = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arr, 0, (int)ms.Length);
                ms.Close();
           
                String strbaser64 = Convert.ToBase64String(arr);

                return strbaser64;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}