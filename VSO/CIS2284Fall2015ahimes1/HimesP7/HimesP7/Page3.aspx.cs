//Alan Himes
//ahimes1@cnm.edu
//Page3.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPage3_Click(object sender, EventArgs e)
    {
        txbPage3.Text = reverseString(txbPage3.Text);
    }

    private string reverseString(string input)
    {
        char[] charArray = input.ToCharArray();
        Array.Reverse(charArray);
        return new string(charArray);
    }
}