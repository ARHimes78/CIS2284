using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPXDemo
{
    public partial class GettingResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetText1()
        {
            
            return @"<h1>Hello from Akkijdhs Fljasjia.</h1><script>
document.getElementById(""demo"").innerHTML = ""Hello Javascript"";</script>";
             
            //return Server.HtmlEncode(TextBox1.Text);
        }
    }
}