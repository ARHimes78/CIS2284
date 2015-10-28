using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionDemo
{
    public partial class SessionDemoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object state1 = Session["state1"];
            if (state1 != null)
            {
                Label1.Text = state1.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["state1"] = TextBox1.Text;
        }
    }
}