using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewStateDemo
{
    public partial class ViewStateDemoPage : System.Web.UI.Page
    {
        string myVariable = "Not initialized";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = String.Format("TextBox.text: {0}", TextBox1.Text);
            Label2.Text = String.Format("ViewState[\"state1\"] {0}", ViewState["state1"]);
            myVariable = TextBox1.Text;
            Label3.Text = myVariable;
            ViewState["state1"] = TextBox1.Text;
            
        }
    }
}