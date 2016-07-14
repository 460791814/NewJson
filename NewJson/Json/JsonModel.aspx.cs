using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Xamasoft.JsonClassGenerator;
using Xamasoft.JsonClassGenerator.CodeWriters;
using CommonTool;
using Newtonsoft.Json;

namespace NewJson.Json
{
    public partial class JsonModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["method"])
            {
                case "model":
                    CreateModel();
                    break;
                default:
                    break;
            }
           
        }
        private void CreateModel()
        {
           var gen = Prepare();
            if (gen == null) return;
            try
            {
                gen.TargetFolder = null;
                gen.SingleFile = true;
                using (var sw = new StringWriter())
                {
                    gen.OutputStream = sw;
                    gen.GenerateClasses();
                    sw.Flush();
                  string  lastGeneratedString = sw.ToString();
                  string result = JsonConvert.SerializeObject(new { content = lastGeneratedString });
                  Response.Write(result);
                  Response.End();
                }

            }
            catch (Exception ex)
            {
              //  MessageBox.Show(this, "Unable to generate the code: " + ex.Message, this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
              //  string result = JsonConvert.SerializeObject(new { content = ex.Message });
             //   Response.Write(result);
              //  Response.End();
            }
        }
        private JsonClassGenerator Prepare()
        {
            string namespacestr = Request["namespacestr"];
            string mainclass = Request["mainclass"];
            int type = Utils.GetInt(Request["type"]);
            string jsonstr = Request["jsonstr"];

            int internalVis = Utils.GetInt(Request["xsf"]);
            int useField = Utils.GetInt(Request["pf"]);
            int usePascalCase = 1;// Utils.GetInt(Request["mm"]);
            var gen = new JsonClassGenerator();
            //json字符串
            gen.Example = jsonstr;
            //类修饰符 internal=true,public =false
            gen.InternalVisibility = internalVis==0?false:true;
            //具体的处理类 c# vb.net typescript
            switch (type)
            {
                case 1:
                    gen.CodeWriter = new VisualBasicCodeWriter();
                    break;
                case 2:
                    gen.CodeWriter = new TypeScriptCodeWriter();
                    break;
                case 3:
                    //java
                    gen.CodeWriter = new JavaCodeWriter();
                    break;
                default:
                    gen.CodeWriter = new CSharpCodeWriter();
                    break;
            }
           

            //明确饭序列化
            gen.ExplicitDeserialization =false;
            //命名空间
            gen.Namespace = namespacestr;
            //ExplicitDeserialization=true才能使用
            gen.NoHelperClass = false;
            gen.SecondaryNamespace = null;
            gen.TargetFolder =null;
            //使用属性写法 false=字段写法
            gen.UseProperties = useField==0?true:false;

            gen.MainClass = string.IsNullOrEmpty(mainclass) ? "Root" : mainclass;
            //首字母大写Code   false=骆驼式命名 首字母小写 后面首字母大写twoFeet
            gen.UsePascalCase = usePascalCase==0?true:false;
            //使用嵌套类
            gen.UseNestedClasses =false;
            //使用模糊属性
            gen.ApplyObfuscationAttributes = false;
            gen.SingleFile = true;
            //生成文档范例
            gen.ExamplesInDocumentation = false;
            
            return gen;
        }
    }
}