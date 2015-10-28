using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembershipDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e) 
        {
            UserProfile pc = new UserProfile(); 
            pc.Initialize(CreateUserWizard1.UserName.ToString(), true); 
            pc.FirstName = Firstname.Text;  
            pc.LastName = Lastname.Text; 
            pc.Age = Age.Text; pc.Save();  
        }

        string GeneratePassword()
        {
            string returnPassword; returnPassword = Membership.GeneratePassword(10, 3);
            return returnPassword;
        }

    }
}