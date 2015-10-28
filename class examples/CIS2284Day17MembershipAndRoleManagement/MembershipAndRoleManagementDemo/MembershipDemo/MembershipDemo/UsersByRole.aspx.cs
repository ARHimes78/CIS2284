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
                DropDownListRoles.DataSource = Roles.GetAllRoles();
                DropDownListRoles.DataBind();
                DropDownListUsers.DataSource = Membership.GetAllUsers();
                DropDownListUsers.DataBind();
                ListBoxUsersInRole.DataSource = Roles.GetUsersInRole(DropDownListRoles.SelectedValue);
                ListBoxUsersInRole.DataBind();
            }            
        }


        protected void ButtonAddUser_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(DropDownListUsers.SelectedValue, DropDownListRoles.SelectedValue);
            ListBoxUsersInRole.DataSource = Roles.GetUsersInRole(DropDownListRoles.SelectedValue);
            ListBoxUsersInRole.DataBind();
        }

        protected void DropDownListRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBoxUsersInRole.DataSource = Roles.GetUsersInRole(DropDownListRoles.SelectedValue);
            ListBoxUsersInRole.DataBind();
        }

        protected void ButtonRemove_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in ListBoxUsersInRole.Items)
            {
                if (li.Selected == true)
                {
                    Roles.RemoveUserFromRole(li.ToString(),DropDownListRoles.SelectedValue);
                }
            }
            ListBoxUsersInRole.DataSource = Roles.GetUsersInRole(DropDownListRoles.SelectedValue);
            ListBoxUsersInRole.DataBind(); 
        }
    }
}