using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo2
{
    public partial class GridViewDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewEmployees_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.DataItem != null)
            {
                System.Data.DataRowView drv = (System.Data.DataRowView)e.Row.DataItem;

                if (drv["fkDepartmentHeadID"] != System.DBNull.Value)
                {
                    e.Row.BackColor = System.Drawing.Color.Red;
                    e.Row.ForeColor = System.Drawing.Color.White;
                }
            }
        }

        protected void GridViewDepartments_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Check for a row in edit mode.
            if ((e.Row.RowState == DataControlRowState.Edit) ||
                 (e.Row.RowState == (DataControlRowState.Alternate |
                                    DataControlRowState.Edit)))
            {
                System.Data.DataRowView drv = (System.Data.DataRowView)e.Row.DataItem;

                DropDownList ddl =
                    (DropDownList)e.Row.Cells[2].FindControl("DropDownList1");
                ListItem li = ddl.Items.FindByValue(drv["fkDepartmentHeadID"].ToString());
                if (li == null)
                {
                    li = ddl.Items[0];
                }
                li.Selected = true;
            }
        }

        protected void gridviewdepartments_rowupdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow gvr = this.GridViewDepartments.Rows[this.GridViewDepartments.EditIndex];
            DropDownList ddl = (DropDownList)gvr.Cells[1].FindControl("dropdownlist1");
            e.NewValues["fkdepartmentheadid"] = ddl.SelectedValue;
        }
    }
}