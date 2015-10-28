using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembershipDemo
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //if (Membership.ValidateUser(TextBoxUserID.Text, TextBoxPassword.Text)) 
            //{
            //FormsAuthentication.RedirectFromLoginPage(TextBoxUserID.Text, false);  
            //}
            //else
            //{ 
            //LabelResults.Text = "You are not registered with the site.";  
            //}  
            if (CheckBoxUnlock.Checked == true)
            {
                MembershipUser user = Membership.GetUser(TextBoxUserID.Text);
                user.UnlockUser();
            }
            if (Membership.ValidateUser(TextBoxUserID.Text, TextBoxPassword.Text))
            {
                LabelResults.Text = "You are logged on!";
            }
            else
            {
                MembershipUser user = Membership.GetUser(TextBoxUserID.Text);
                LabelResults.Text = "Locked out value: " + user.IsLockedOut.ToString();
            }           
        }
    }
}