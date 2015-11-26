using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidatedControlsDemo
{
    public partial class SurveyPage1 : System.Web.UI.Page
    {
        public SurveyData pageData  = new SurveyData();

        protected void Page_Load(object sender, EventArgs e)
        {
            rvDate.MinimumValue = DateTime.Now.ToShortDateString();
            rvDate.MaximumValue = DateTime.Now.AddDays(14).ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txbDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fuProfilePic.HasFile)
            {
                try
                {
                    pageData.Name = TextBox1.Text;
                    pageData.Profession = this.ddlProfession.SelectedValue;
                    pageData.Age = Convert.ToInt16(this.txbAge.Text);
                    pageData.ArrivalDate = Calendar1.SelectedDate;
                    pageData.Email = this.txbEmail.Text;

                    fuProfilePic.SaveAs(Server.MapPath(@"~\Images\" + 
                        fuProfilePic.FileName));
                    pageData.PhotoURL = fuProfilePic.FileName;

                }
                catch (Exception ex)
                {
                    
                }
            }
        }
    }
}