using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Newtonsoft.Json;

namespace NewJson
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
           doc.LoadXml(xml);
           // string json4444 = Newtonsoft.Json.JsonConvert.SerializeXmlNode(doc);
           //  XmlDocument doc = JsonConvert.DeserializeXmlNode(json_str, "root");
         //    XmlDocument doc1 = JsonConvert.DeserializeXmlNode(json_str);

        //    Console.WriteLine("XML -> JSON: {0}", json);
         //   Console.ReadLine();
             Response.Write(doc);
        }


    }
}