using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ApplicationStateDemo
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UserCount"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            try
            {
                Application.Lock();
                int userCount = (int)Application["UserCount"];
                Application["UserCount"] = ++userCount;
            }
            finally
            {
                Application.UnLock();
            }
        }
    }
}