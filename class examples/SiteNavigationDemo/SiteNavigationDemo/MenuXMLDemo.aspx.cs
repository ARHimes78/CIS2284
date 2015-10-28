using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteNavigationDemo
{
    public partial class MenuXMLDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            ListBox1.Items.Add(e.Item.Parent.Value + " : " + e.Item.Value);
        }
    }
}