using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxDemo
{
    public partial class NormalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!Page.IsPostBack)
            {
                lblPostBack.Text = "Post back at " + DateTime.Now.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblButton1.Text = "Button 1 click at " + DateTime.Now.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblButton2.Text = "Button 2 click at " + DateTime.Now.ToString();
        }
    }
}