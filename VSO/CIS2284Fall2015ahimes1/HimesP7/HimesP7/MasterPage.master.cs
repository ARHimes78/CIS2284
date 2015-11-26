//Alan Himes
//ahimes1@cnm.edu
//MasterPage.master.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLucky.Text = new Random().Next(1, 99).ToString();

        string roles = "";

        foreach (string rl in Roles.GetRolesForUser())
        {
            roles += rl + " ";
        }

        lblRoles.Text = roles;
        
    }

    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
