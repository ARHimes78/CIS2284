using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormDemo
{
    public partial class ShowMeetingRooms : System.Web.UI.Page
    {
        
        public string SelectedMeetingRoom
        {
            get { return ddlMeetingRooms.SelectedItem.Value; }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlMeetingRooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectedRoom.Text = ddlMeetingRooms.SelectedItem.Value;
        }

    }
}