using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class ContentPageDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Page.Title = "Page Title from Code Behind";
        }

        protected void Page_LoadComplete(object Sender, EventArgs e)
        {
            lblContentGUID.Text = (Master.FindControl("lblGUID") as Label).Text;
            lblContentGUID.Text = ((Label)Master.FindControl("lblGUID")).Text;
        }

        protected void ButtonName_Click(object sender, EventArgs e)
        {
            LabelWelcome.Text = "Welcome " + TextBoxName.Text;
        }
    }
}