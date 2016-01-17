using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Xamasoft.JsonClassGenerator;
using Xamasoft.JsonClassGenerator.CodeWriters;

namespace NewJson.Json
{
    public partial class JsonModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateModel();
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
               
                }

            }
            catch (Exception ex)
            {
              //  MessageBox.Show(this, "Unable to generate the code: " + ex.Message, this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private JsonClassGenerator Prepare()
        {
            //if (edtJson.Text == string.Empty)
            //{
            //    MessageBox.Show(this, "Please insert some sample JSON.", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    edtJson.Focus();
            //    return null;
            //}


            //if (edtMainClass.Text == string.Empty)
            //{
            //    MessageBox.Show(this, "Please specify a main class name.", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return null;
            //}
            string jsonss="{\"animals\":{\"dog\":[{\"name\":\"Rufus\",\"breed\":\"labrador\",\"count\":1,\"twoFeet\":false},{\"name\":\"Marty\",\"breed\":\"whippet\",\"count\":1,\"twoFeet\":false}],\"cat\":{\"name\":\"Matilda\"}}}";
            var gen = new JsonClassGenerator();
            gen.Example = jsonss;
            gen.InternalVisibility = false;
            gen.CodeWriter = new CSharpCodeWriter() ;
            gen.ExplicitDeserialization =false;
            gen.Namespace = "test";
            gen.NoHelperClass = false;
            gen.SecondaryNamespace = null;
            gen.TargetFolder =null;
            gen.UseProperties =true;
            gen.MainClass = "test1";
            gen.UsePascalCase = true;
            gen.UseNestedClasses =false;
            gen.ApplyObfuscationAttributes = false;
            gen.SingleFile = true;
            gen.ExamplesInDocumentation = false;
            return gen;
        }
    }
}