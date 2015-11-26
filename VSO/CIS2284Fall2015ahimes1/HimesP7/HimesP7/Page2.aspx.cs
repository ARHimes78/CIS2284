//Alan Himes
//ahimes1@cnm.edu
//Page2.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cxbPage2_CheckedChanged(object sender, EventArgs e)
    {
        if (cxbPage2.Checked)
            cxbPage2.Text = ":)";
        else
            cxbPage2.Text = ":(";
    }  
}