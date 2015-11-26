//Alan Himes
//ahimes1@cnm.edu
//ValidationPassed.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimesP6
{
    public partial class ValidationPassed : System.Web.UI.Page
    {
        private SurveyInput ppSurvey;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage!=null && PreviousPage.IsValid)
            {
                try
                {
                    ppSurvey = PreviousPage.survey;
                    populateTable(ppSurvey);
                    lblSummary.Text = ppSurvey.ToString();
                    imgUploaded.ImageUrl = "/Images/" + ppSurvey.ImgUrl;
                    
                }
                catch (NullReferenceException)
                {
                    lblSummary.Text = "WARNING: Table not updated from survey data.";
                    imgUploaded.ImageUrl = "/Images/no_image.png";
                }
            }
            else
            {
                if (!Page.IsPostBack)
                    Response.Redirect("Page6.aspx");
            }
        }

        

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue = txbName.Text;
            SqlDataSource1.InsertParameters["band"].DefaultValue = txbBand.Text;
            SqlDataSource1.InsertParameters["season"].DefaultValue = txbSeason.Text;

            if (rbListYesNo.SelectedIndex == 0)
            {
                SqlDataSource1.InsertParameters["yesno"].DefaultValue = "Yes";
            }
            else
            {
                SqlDataSource1.InsertParameters["yesno"].DefaultValue = "No";
            }

            SqlDataSource1.InsertParameters["colors"].DefaultValue = txbColors.Text;
            SqlDataSource1.InsertParameters["matter"].DefaultValue = txbMatter.Text;
            SqlDataSource1.InsertParameters["date"].DefaultValue = txbDate.Text;

            try
            {
                SqlDataSource1.Insert();
            }
            catch (FormatException)
            {
                lblInputError.Text = "Please enter the correct format for the date!";
            }
        }

        private void populateTable(SurveyInput si)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue = si.Name;
            SqlDataSource1.InsertParameters["band"].DefaultValue = si.Band;
            SqlDataSource1.InsertParameters["season"].DefaultValue = ppSurvey.Season;
            SqlDataSource1.InsertParameters["yesno"].DefaultValue = ppSurvey.YesNo;
            SqlDataSource1.InsertParameters["colors"].DefaultValue = ppSurvey.Colors;
            SqlDataSource1.InsertParameters["matter"].DefaultValue = ppSurvey.Matter;
            SqlDataSource1.InsertParameters["date"].DefaultValue = ppSurvey.Date.ToShortDateString();

            SqlDataSource1.Insert();
        }

    }
}