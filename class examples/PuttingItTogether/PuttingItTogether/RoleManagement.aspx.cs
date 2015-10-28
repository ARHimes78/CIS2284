using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuttingItTogether
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListBoxDataBind();
            }
        }

        protected void ListBoxDataBind()
        {
            ListBoxRoles.DataSource = Roles.GetAllRoles();
            ListBoxRoles.DataBind();
        }

        protected void ButtonAddRole_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(TextBoxRole.Text);
            ListBoxDataBind();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in ListBoxRoles.Items)
            {
                if (li.Selected == true)
                {
                    Roles.DeleteRole(li.ToString());
                }
            }
            ListBoxDataBind();
        }
    }
}