//Alan Himes
//ahimes1@cnm.edu
//RoleManagement.aspx.cs

using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RoleManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            ListBoxDataBind();
    }

    private void ListBoxDataBind()
    {
        lsbDeleteRole.DataSource = Roles.GetAllRoles();
        lsbDeleteRole.DataBind();
    }
    protected void btnAddRole_Click(object sender, EventArgs e)
    {
        Roles.CreateRole(txbAddRole.Text);
        ListBoxDataBind();
        lblDeleteError.Text = "";
    }
    protected void btnDeleteRole_Click(object sender, EventArgs e)
    {
        if (lsbDeleteRole.SelectedValue.Equals("Admin") ||
            lsbDeleteRole.SelectedValue.Equals("User"))
            lblDeleteError.Text = "You may not delete this Role!";
        else
        {

            try
            {
                Roles.DeleteRole(lsbDeleteRole.SelectedValue);
                lblDeleteError.Text = "";

                ListBoxDataBind();
            }
            catch (ProviderException)
            {
                lblDeleteError.Text = "Someone is aready assigned to this role. Go to Users page to remove someone from a role.";
            }
        }
    }


}