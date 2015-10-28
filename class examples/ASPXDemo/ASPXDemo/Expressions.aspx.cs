using System;
using System.Configuration;
namespace ASPXDemo
{
    public partial class Expressions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Text = ConfigurationManager.AppSettings["ButtonTitle"];
        }
    }
}