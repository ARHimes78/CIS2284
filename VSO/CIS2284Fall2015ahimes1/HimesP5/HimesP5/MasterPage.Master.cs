using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimesP5
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int luckyNum = new Random().Next(1, 99);
            txtLucky.Text = new Random().Next(1, 99).ToString();
        }
    }
}