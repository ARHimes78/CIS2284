using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPXDemo
{
    public partial class DataBinding : System.Web.UI.Page
    {
        public string GetButtonText()
        {
            return "Button text!";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();
        }
    }
}