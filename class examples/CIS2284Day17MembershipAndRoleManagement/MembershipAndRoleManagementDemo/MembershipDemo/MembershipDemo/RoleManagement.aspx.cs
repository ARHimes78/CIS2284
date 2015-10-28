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
        
        protected void Button1_Click(object sender, EventArgs e)  
        {
            Roles.CreateRole(TextBox1.Text);
            ListBoxDataBind();
        }
        
        protected void ListBoxDataBind()  
        {
            ListBox1.DataSource = Roles.GetAllRoles();
            ListBox1.DataBind(); 
        }

        protected void ButtonDelete_Click(object sender, EventArgs e) 
        {
            foreach (ListItem li in ListBox1.Items) 
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