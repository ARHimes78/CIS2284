using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProfileDemoDB
{
    public partial class ProfileDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HttpContext context = this.Context;
                lblColor.Text = context.Profile["Color"].ToString();
                lblUserName.Text = context.Profile.UserName;

                //save profile data
                context.Profile["Color"] = "Blue";
            }
            catch (Exception ex) { }
        }
    }
}