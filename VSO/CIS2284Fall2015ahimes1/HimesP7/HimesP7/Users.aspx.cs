//Alan Himes
//ahimes1@cnm.edu
//Users.aspx.cs

using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lsbRoles.DataSource = Roles.GetAllRoles();
            lsbRoles.DataBind();
            lsbUsers.DataSource = Membership.GetAllUsers();
            lsbUsers.DataBind();
        }
    }

    protected void lsbRoles_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataBindListBox();
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        try
        {
            Roles.RemoveUserFromRole(lsbUsersByRole.SelectedValue, lsbRoles.SelectedValue);
            DataBindListBox();
        }
        catch (ArgumentException)
        {
            lblRemoveError.Text = "Select someone from the Users by Role list!";
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            Roles.AddUserToRole(lsbUsers.SelectedValue, lsbRoles.SelectedValue);
            DataBindListBox();  
        }
        catch (ProviderException pe)
        {
            lblAddError.Text = pe.Message;
        }
        catch (ArgumentException)
        {
            lblAddError.Text = "Make sure both a Role and User are selected.";
        }
    }

    private void DataBindListBox()
    {
        lsbUsersByRole.DataSource = Roles.GetUsersInRole(lsbRoles.SelectedValue);
        lsbUsersByRole.DataBind();
        lblRemoveError.Text = "";
        lblAddError.Text = "";
    }
}