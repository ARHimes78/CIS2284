//Alan Himes
//ahimes1@cnm.edu
//KickOut.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KickOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataBindListBox();
        }
    }
    protected void btnDeleteUser_Click(object sender, EventArgs e)
    {
        if (lsbRemoveUser.SelectedValue.Equals("a"))
        {
            lblError.Text = "You may not delete a!";
        }
        else
        {
            try
            {
                Membership.DeleteUser(lsbRemoveUser.SelectedValue);
                DataBindListBox();
            }
            catch (ArgumentException)
            {
                lblError.Text = "Select someone from the list to kick off the site!";
            }
        }
    }

    private void DataBindListBox()
    {
        lsbRemoveUser.DataSource = Membership.GetAllUsers();
        lsbRemoveUser.DataBind();
        lblError.Text = "";
    }
}