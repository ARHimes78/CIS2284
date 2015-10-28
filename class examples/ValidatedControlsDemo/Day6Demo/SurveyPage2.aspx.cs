using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day6Demo
{
    public partial class SuveyPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack && PreviousPage.IsValid)
            {
                TextBox pp_TextBox1 = (TextBox)PreviousPage.FindControl("TextBox1");
                Label1.Text = "Hello " + pp_TextBox1.Text + "<br />";
            }
            else
            {
                Response.Redirect("SurveyPage1.aspx");
            }
        }
    }
}