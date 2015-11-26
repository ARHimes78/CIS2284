using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembershipDemo
{
    public partial class RoleManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListBoxDataBind();
            }
        }

        private void ListBoxDataBind()
        {
            lbRoles.DataSource = Roles.GetAllRoles();
            lbRoles.DataBind();
        }

        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(txbRole.Text);
            ListBoxDataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lbRoles.Items)
            {
                if (li.Selected)
                {
                    Roles.DeleteRole(li.ToString());
                }
            }
            ListBoxDataBind();
        }
    }
}