using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Newtonsoft.Json;
using CommonTool;
using System.Net;
using System.Text;
using System.IO;

namespace NewJson
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //SendGW(23095740, "124.1.1.16");
            return;
              var body = "我是中文的";
            var base64 = Convert.ToBase64String(Encoding.UTF8.GetBytes(body));
 string url = HttpGetUrl("http://www.ip138.com/ips138.asp?ip=124.207.33.6") ;//body中包含中文



string str=  Utils.SendWebRequest("http://www.ip138.com/ips138.asp?ip=124.207.33.6");

            string str1 = HttpTool.SendWebRequest("http://www.ip138.com/ips138.asp?ip=124.207.33.6", new System.Net.CookieContainer());


            return;

            string xml = @"<?xml version=""1.0"" encoding=""UTF-8"" ?>
	<layout>3</layout>
	<cls>qypage-1680</cls>
	<range>
		<min>1680</min>
		<max>20000</max>
	</range>
	<extraInfo>
		<digitalSlide>11</digitalSlide>
		<playListViewCount>6</playListViewCount>
		<actorTotal>5</actorTotal>
		<actorHideNum>2</actorHideNum>
		<rightWrapHeight>631</rightWrapHeight>
	</extraInfo>
	<viewHeight>240</viewHeight>
	
	";
            string json_str = "{\"a\":\"a\",\"b\":\"b\"}";
            string json = "{\"cnf\": [         {             \"layout\": 0,             \"cls\": \"qypage-980\",             \"range\": {                 \"min\": 0,                 \"max\": 1179             },             \"extraInfo\": {                 \"digitalSlide\": 7,                 \"playListViewCount\": 4,                 \"actorTotal\": 5,                 \"actorHideNum\": 4,                 \"rightWrapHeight\": 417             },             \"viewHeight\": 160         },         {             \"layout\": 1,             \"cls\": \"qypage-1180\",             \"range\": {                 \"min\": 1180,                 \"max\": 1439             },             \"extraInfo\": {                 \"digitalSlide\": 9,                 \"playListViewCount\": 5,                 \"actorTotal\": 5,                 \"actorHideNum\": 3,                 \"rightWrapHeight\": 530},             \"viewHeight\": 200         },         { \"layout\": 2,             \"cls\": \"qypage-1440\",             \"range\": {                 \"min\": 1440,                 \"max\": 1679             },             \"extraInfo\": {                 \"digitalSlide\": 9,                 \"playListViewCount\": 5,                 \"actorTotal\": 5,                 \"actorHideNum\": 3,                 \"rightWrapHeight\": 530             },             \"viewHeight\": 240         },         {             \"layout\": 3,             \"cls\": \"qypage-1680\",             \"range\": {                 \"min\": 1680,                 \"max\": 20000             },             \"extraInfo\": {                 \"digitalSlide\": 11,                 \"playListViewCount\": 6,                 \"actorTotal\": 5,                 \"actorHideNum\": 2,                 \"rightWrapHeight\": 631             },             \"viewHeight\": 240         }     ],     \"curLayout\": 0 }";
//             xml1 = @"<?xml version=""1.0"" standalone=""no""?>
//                            <root>
//                              <person id=""1"">
//                              <name>Alan</name>
//                              <url>http://www.jb51.net</url>
//                              </person>
//                              <person id=""2"">
//                              <name>Louis</name>
//                              <url>http://www.jb51.net</url>
//                              </person>
//                            </root>";
          XmlDocument doc = new XmlDocument();
         //  doc.LoadXml(xml);
           // string json4444 = Newtonsoft.Json.JsonConvert.SerializeXmlNode(doc);
           //  XmlDocument doc = JsonConvert.DeserializeXmlNode(json_str, "root");
         //    XmlDocument doc1 = JsonConvert.DeserializeXmlNode(json_str);

        //    Console.WriteLine("XML -> JSON: {0}", json);
         //   Console.ReadLine();
    //         Response.Write(doc);
        }
        /// <summary>
        /// 增加用户抽奖次数接口
        /// </summary>
        /// <param name="useId"></param>
        /// <param name="ip"></param>
        private void SendGW(int useId, string ip)
        {
            string url = "http://gw.open.zxxk.com/router?$method=xk.usersharelottery.usersharelottery.AddLotteryTimes&$app_key=xop_temp_key&$format=json&userid=" + useId + "&ip=" + ip;
            try
            {
                Utils.SendWebRequest(url);
            }
            catch (Exception e)
            {
              //  new SendEmail().Send("712300408", "用户抽奖", "地址：" + url + "\r\n" + e.Message);
            }
        }
        public static String HttpGetUrl(String url)
        {
            string strReturn = string.Empty;
            String urlEsc = url;
            HttpWebRequest req = (HttpWebRequest)HttpWebRequest.Create(urlEsc);
            req.Method = "GET";
            try
            {
                using (WebResponse wr = req.GetResponse())
                {
                    Stream stream = wr.GetResponseStream();
                    byte[] buf = new byte[1024];
                    while (true)
                    {
                        int len = stream.Read(buf, 0, buf.Length);
                        if (len <= 0)//[2011-8-22]  修改len < 0 =》 len <= 0 解决死循环
                            break;
                        strReturn += System.Text.Encoding.GetEncoding("utf-8").GetString(buf, 0, len);

                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
                //LogFile.WriteLine("HttpSend.HttpGetUrl exception url=" + url);
                //LogFile.WriteLine("HttpSend.HttpGetUrl exception " + ex.Message);
            }
            return strReturn;
        }

    }
}