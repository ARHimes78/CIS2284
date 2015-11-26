using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo
{
    public partial class DataAdapterDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ahimes1\Desktop\DatabaseDemo\DatabaseDemo\DatabaseDemo\App_Data\Database1.mdf;Integrated Security=True";
                SqlConnection Conn = new SqlConnection(connStr);
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblDepartments", Conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ddlDepartments.DataSource = ds;
                ddlDepartments.DataBind();
            }
        }

        protected void ddlDepartments_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDDLResults.Text = "Selected index is: " + ddlDepartments.SelectedIndex + "</br>";
            lblDDLResults.Text += "Selected value is: " + ddlDepartments.SelectedValue + "</br>";
            lblDDLResults.Text += "Selected item text is: " + ddlDepartments.SelectedItem.Text + "</br>";
            lblDDLResults.Text += "Selected item value is: " + ddlDepartments.SelectedItem.Value + "</br>";
        }
    }
}