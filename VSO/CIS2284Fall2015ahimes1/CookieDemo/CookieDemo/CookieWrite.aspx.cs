using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieDemo
{
    public partial class CookieWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("cookieState", TextBox1.Text);
            Label1.Text = cookie.Value;
            if (CheckBox1.Checked)
            {
                cookie.Expires = DateTime.Now.AddYears(1);
            }
            
            Response.SetCookie(cookie);
        }
    }
}