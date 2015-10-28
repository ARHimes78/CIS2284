using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CacheDemo
{
    public partial class CacheWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Cache["Cache1"]==null))
            {
                Label1.Text = Cache["Cache1"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Cache.Add(key: "Cache1", value: TextBox1.Text, dependencies: null,
                absoluteExpiration: System.Web.Caching.Cache.NoAbsoluteExpiration,
                slidingExpiration: TimeSpan.FromMinutes(30),
                priority: System.Web.Caching.CacheItemPriority.Normal,
                onRemoveCallback: null);
        }
    }
}