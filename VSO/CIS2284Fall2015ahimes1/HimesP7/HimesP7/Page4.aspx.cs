//Alan Himes
//ahimes1@cnm.edu
//Page4.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Context.Profile["NameTest"] = txbToProfile.Text;
        lblUserName.Text = Context.Profile.UserName;
        lblStringTest.Text = Context.Profile["ProfileTest"].ToString();
        lblInput.Text = Context.Profile["NameTest"].ToString();
    }
}