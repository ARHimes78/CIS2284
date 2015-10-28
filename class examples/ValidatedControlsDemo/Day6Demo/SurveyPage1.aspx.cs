using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day6Demo
{
    public partial class SurveyPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator2.MinimumValue = DateTime.Now.ToShortDateString();
            RangeValidator2.MaximumValue = DateTime.Now.AddDays(14).ToShortDateString();
        }
        protected void Calendar1_Selectionchanged(object sender, EventArgs e)
        {
            TextBoxDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ValidateNumber(object source, ServerValidateEventArgs args)
        {
            try
            {
                int num = int.Parse(args.Value); 
                args.IsValid = ((num % 5) == 0);
            }
            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SurveyPage2.aspx");
        }
    }
}