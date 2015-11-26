using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidatedControlsDemo
{
    public partial class SurveyPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack && PreviousPage.IsValid)
            {
                SurveyData ppData = PreviousPage.pageData;
                //TextBox ppTextBox1 = (TextBox)PreviousPage.FindControl("TextBox1");
                Label1.Text = "Hello " + ppData.Name + "<br />";
                //FileUpload ppFileUpload = (FileUpload)PreviousPage.FindControl("fuProfilePic");
                Image1.ImageUrl = "/Images/" + ppData.PhotoURL;
            }
            else
            {
                //Un-comment (if commented) to allow this page only to be accessible via validation from SurveyPage1.
                Response.Redirect("SurveyPage1.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        
    }
}