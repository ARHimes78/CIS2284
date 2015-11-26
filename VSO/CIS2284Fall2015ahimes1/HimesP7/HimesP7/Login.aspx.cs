//Alan Himes
//ahimes1@cnm.edu
//Login.aspx.cs

using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            Login1.Enabled = true;
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
 
    protected void btnLoginAnon_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");

    }
}