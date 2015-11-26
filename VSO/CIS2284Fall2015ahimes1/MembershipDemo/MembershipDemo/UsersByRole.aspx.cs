using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembershipDemo
{
    public partial class UsersByRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlRoles.DataSource = Roles.GetAllRoles();
                ddlRoles.DataBind();
                ddlUsers.DataSource = Membership.GetAllUsers();
                ddlUsers.DataBind();
                lbUsersInRole.DataSource = Roles.GetUsersInRole(ddlRoles.SelectedValue);
                lbUsersInRole.DataBind();
            }
        }

        protected void ddlRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbUsersInRole.DataSource = Roles.GetUsersInRole(ddlRoles.SelectedValue);
            lbUsersInRole.DataBind();
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(ddlUsers.SelectedValue, ddlRoles.SelectedValue);
            lbUsersInRole.DataSource = Roles.GetUsersInRole(ddlRoles.SelectedValue);
            lbUsersInRole.DataBind();
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbUsersInRole.Items)
            {
                if (li.Selected)
                {
                    Roles.RemoveUserFromRole(li.ToString(), ddlRoles.SelectedValue);
                }
            }
            lbUsersInRole.DataSource = Roles.GetUsersInRole(ddlRoles.SelectedValue);
            lbUsersInRole.DataBind();
        }
    }
}