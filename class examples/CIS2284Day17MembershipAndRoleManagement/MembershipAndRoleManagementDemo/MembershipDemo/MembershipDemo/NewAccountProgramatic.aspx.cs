using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembershipDemo
{
    public partial class NewUserProgramatic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Membership.CreateUser(TextBox1.Text, TextBox2.Text);
                Label1.Text = "Successfully created user " + TextBox1.Text;
            }
            catch (MembershipCreateUserException ex)
            {
                switch (ex.StatusCode)
                {
                    case MembershipCreateStatus.DuplicateEmail:
                        Label1.Text = "You have supplied a duplicate email address.";
                        break;
                    case MembershipCreateStatus.DuplicateUserName:
                        Label1.Text = "You have supplied a duplicate username.";
                        break;
                    case MembershipCreateStatus.InvalidEmail:
                        Label1.Text = "You have not supplied a proper email address.";
                        break;
                    default:
                        Label1.Text = "ERROR: " + ex.Message.ToString();
                        break;
                }
            }
        }
    }
}