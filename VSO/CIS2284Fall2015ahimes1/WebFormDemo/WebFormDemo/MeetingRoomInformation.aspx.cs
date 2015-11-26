using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormDemo
{
    public partial class MeetingRoomInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if (PreviousPage != null)
            {
                DropDownList ddl = (DropDownList)PreviousPage.FindControl("ddlMeetingRooms");
                if (ddl != null)
                {
                    Label1.Text = ddl.SelectedItem.Value;
                }

            }
             */

            Label1.Text = PreviousPage.SelectedMeetingRoom;
        }
    }
}