//Alan Himes
//ahimes1@cnm.edu
//Page1.aspx.cs

using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    private Color[] colorArray;

    protected void Page_Load(object sender, EventArgs e)
    {
        colorArray = new Color[] { Color.Red, Color.Blue, Color.Green, Color.Yellow, Color.Purple, Color.Orange };
    }

    protected void btnPage1_Click(object sender, EventArgs e)
    {
        btnPage1.BackColor = colorArray[new Random().Next(0, 5)];
    }
}