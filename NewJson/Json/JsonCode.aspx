<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="JsonCode.aspx.cs" Inherits="NewJson.Json.JsonCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <main class="row-fluid">
    <div class="" style="padding:0;">
        <div style="padding:40px 80px;;line-height:30px;">
            <div id="content-body-wrapper">
                <div id="content-body">
                    <div class="line"></div>
                                        <h4>Javascript:</h4><pre class="bg-warning" style="padding:20px;"><code>
1.使用eval
var parse_json_by_eval = function(str){
    return eval('('+str+')');
}
var value = 1;
var jsonstr = '{"name":"jifeng","company":"taobao","value":++value}';
var json1 = parse_json_by_eval(jsonstr);
console.log(json1);
console.log('value: '+ value);    
執行結果： 

{ name: 'jifeng', company: 'taobao', value: 2 }
value: 2
2.使用JSON.parse 
var parse_json_by_JSON_parse = function(str){
    return JSON.parse(str);
}
value = 1;
var jsonstr = '{"name":"jifeng","company":"taobao"}';
var json2 = parse_json_by_JSON_parse(jsonstr);
console.log(json2);
console.log(value);
From：http://www.cnblogs.com/lengyuhong/archive/2012/01/07/2262390.html  
</code></pre>
<div>
以上代码来自博客：<a href="http://www.cnblogs.com/lengyuhong/archive/2012/01/07/2262390.html">http://www.cnblogs.com/lengyuhong/archive/2012/01/07/2262390.html</a></div>
                    <h4>PHP:</h4><pre class="bg-warning" style="padding:20px;"><code>
$json_string='{"id":1,"name":"jb51","email":"admin@jb51.net","interest":["wordpress","php"]} '; 
$obj=json_decode($json_string); 
echo $obj-&gt;name; //prints foo 
echo $obj-&gt;interest[1]; //prints php </code></pre>
                   <h4>Java:</h4><pre class="bg-warning" style="padding:20px;"><code>
JSONObject  dataJson=new JSONObject("你的Json数据“);
JSONObject  response=dataJson.getJSONObject("response");
JSONArray data=response.getJSONArray("data");
JSONObject info=data.getJSONObject(0);
String province=info.getString("province");
String city=info.getString("city");
String district=info.getString("district");
String address=info.getString("address");
 System.out.println(province+city+district+address);</code></pre>
                    <h4>C#:</h4><pre class="bg-warning" style="padding:20px;"><code>
使用开源的类库Newtonsoft.Json(下载地址http://json.codeplex.com/)。下载后加入工程就能用。通常可以使用JObject, JsonReader, JsonWriter处理。这种方式最通用，也最灵活，可以随时修改不爽的地方。
(1)使用JsonReader读Json字符串：
[csharp] view plaincopy
string jsonText =@"{""input"" : ""value"",""output"" : ""result""}";  
JsonReader reader = new JsonTextReader(newStringReader(jsonText));  
while (reader.Read())  
{  
   Console.WriteLine(reader.TokenType + "\t\t" + reader.ValueType+ "\t\t" + reader.Value);  
}  

(2)使用JsonWriter写字符串：
[csharp] view plaincopy
StringWriter sw = new StringWriter();  
JsonWriter writer = new JsonTextWriter(sw);  
   
writer.WriteStartObject();  
writer.WritePropertyName("input");  
writer.WriteValue("value");  
writer.WritePropertyName("output");  
writer.WriteValue("result");  
writer.WriteEndObject();  
writer.Flush();  
   
string jsonText =sw.GetStringBuilder().ToString();  
Console.WriteLine(jsonText);  

(3)使用JObject读写字符串：
[csharp] view plaincopy
JObject jo = JObject.Parse(jsonText);  
string[] values =jo.Properties().Select(item =&gt; item.Value.ToString()).ToArray();  

(4)使用JsonSerializer读写对象(基于JsonWriter与JsonReader):
数组型数据
[csharp] view plaincopy
string jsonArrayText1 ="[{'a':'a1','b':'b1'},{'a':'a2','b':'b2'}]";  
JArray ja =(JArray)JsonConvert.DeserializeObject(jsonArrayText1);  
string ja1a =ja[1]["a"].ToString();  
//或者  
JObject o = (JObject)ja[1];  
string oa = o["a"].ToString();  
 </code></pre>
 <h4>Python:</h4><pre class="bg-warning" style="padding:20px;"><code>
import json
data= json.loads('{"ID": "2", "IP":"12.12.12.12", "Port": "3000", "Sensor_Count":"1", "Control_Count": "1", "Sensors":{"Sensor_Name": "tem", "Type_Count": "1", "Types":{ "types":["temp","C"],"types":["hum","N"],}},"Controls":["LCD","Relay"] }')
print data.ID
输出结果:"2"
data = json.dump(data)
print data
输出结果:{"ID": "2", "IP":"12.12.12.12", "Port": "3000", "Sensor_Count":"1", "Control_Count": "1", "Sensors":{"Sensor_Name": "tem", "Type_Count": "1", "Types":{ "types":["temp","C"],"types":["hum","N"],}},"Controls":["LCD","Relay"] }
</code></pre>
<p>如需更多语言，欢迎联系我们添加，站长邮箱：<a href="mailto:460791814@qq.com">460791814@qq.com</a></p>

                    <div class="clear"></div>

                </div>
            </div>

    
        </div>
    </div>
    <div  style="padding:10px;margin-left:50px">
        
        <div style="padding:30px;margin:10px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
            <div style="padding:10px;">
                <h4>JSON规范: RFC 4627</h4>
                <div class="split"></div>
                <div class="brief">
                    JSON标准(RFC4627)于2006年7月发布，感谢那些为此作出贡献的研究人员。
                </div>
            </div>
        </div>
    </div>
    <br style="clear:both;">
</main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
