//Alan Himes
//ahimes1@cnm.edu
//Page6.aspx.cs

using HimesP6; //for SurveyInput
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page6 : System.Web.UI.Page
{
    public SurveyInput survey;

    protected void Page_Load(object sender, EventArgs e)
    {
        survey = new SurveyInput();

        rvCalendar.MinimumValue = DateTime.Now.AddDays(1).ToShortDateString();
        rvCalendar.MaximumValue = DateTime.Now.AddDays(10).ToShortDateString();


    }

    protected void chkYesNo_CheckedChanged(object sender, EventArgs e)
    {
        string yesNo;
        if (chkYesNo.Checked)
            yesNo = "Yes";
        else
            yesNo = "No";

        lblYesNo.Text = yesNo;
    }

    protected void cxbListColors_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] colors = new string[3];
        string selectedColors = "";

        for (int i = 0; i < cxbListColors.Items.Count; i++)
        {
            if (cxbListColors.Items[i].Selected)
            {
                colors[i] = cxbListColors.Items[i].Value;
            }
            else
                colors[i] = "";
        }

        foreach (string color in colors)
        {
            selectedColors += color + " ";
        }

        txbColors.Text = selectedColors;
    }

    protected void rbListMatter_SelectedIndexChanged(object sender, EventArgs e)
    {
        txbMatter.Text = rbListMatter.SelectedValue;
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        txbDisplayDate.Text = calendar.SelectedDate.ToShortDateString();
    }

    protected void imbBtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        PopulateData();
    }

    protected void btnSeeDB_Click(object sender, EventArgs e)
    {
        PopulateData();
    }

    private void PopulateData()
    {
        survey.Name = txbName1.Text;
        survey.Band = ddlFavoriteBand.SelectedValue;
        survey.Season = lbxFavoriteSeason.SelectedValue;
        survey.YesNo = lblYesNo.Text;
        survey.Colors = txbColors.Text;
        survey.Matter = txbMatter.Text;
        survey.Date = calendar.SelectedDate;
        survey.ImgUrl = fuImage.FileName;
        fuImage.SaveAs(Server.MapPath(@"~\Images\" + fuImage.FileName));
    }  
}