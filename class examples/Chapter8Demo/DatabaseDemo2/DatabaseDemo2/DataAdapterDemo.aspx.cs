using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo2
{
    public partial class DataAdapterDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(
                    "Data Source=(LocalDB)\\v11.0;AttachDbFilename=\"C:\\Users\\user\\Dropbox\\CNM\\CIS2284\\Lesson Plans By Day\\Chapter 8\\Chapter8Demo\\DatabaseDemo2\\DatabaseDemo2\\App_Data\\DemoDB.mdf\";Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblDepartments", Conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownListDepartments.DataSource = ds;
                DropDownListDepartments.DataBind();
            }
        }

        protected void DropDownListDepartments_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelDDLResults.Text = "<br>You selected department " + DropDownListDepartments.SelectedValue.ToString() +
                " which is the " + DropDownListDepartments.SelectedItem.Text + " department!";
            foreach (ListItem item in DropDownListDepartments.Items)
            {
                LabelDDLResults.Text += "<br/> Item " + item.Value + " is " + item.Text;
            }
            LabelDDLResults.Text += "<br/><br/> Selected item index is " + DropDownListDepartments.SelectedIndex +
                " which is the " + DropDownListDepartments.Items[DropDownListDepartments.SelectedIndex].Text + " department";
            LabelDDLResults.Text += "Item 2 is " + DropDownListDepartments.Items[2];
        }        
    }
}