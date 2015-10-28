using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPDemo
{
    public partial class MyGuestBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                sdsMessages.Insert();
            }
            catch (Exception exc)
            {
                lblError.Text = "Error: " + exc.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txbComment.Text = "";
            txbEmail.Text = "";
            txbName.Text = "";
        }
    }
}