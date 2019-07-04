using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication8
{
    public partial class Demo : System.Web.UI.Page
    {
        string connectionstring = "Data Source=DESKTOP-QMEMF76\\SQLEXPRESS;Initial Catalog=Kitchen_Online;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            show();

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlDataAdapter demo = new SqlDataAdapter("SELECT Name, Age FROM Demo", con);
                DataTable dtb = new DataTable();
                demo.Fill(dtb);
                DataRow dr = dtb.NewRow();
                if (dtb.Rows.Count == 0)
                {
                    Response.Write("Sorry no data exists");
                }
                else
                {
                    Response.Write("Here's your data");
                }
            }
        }

        private void show()
        {
            {
                SqlConnection con = new SqlConnection(connectionstring);
                string strSQL = "Select * from Demo";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds, "Demo");
                con.Close();
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }
            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                TextBoxUserID.Text = GridView2.SelectedRow.Cells[1].Text;
                TextBoxUserName.Text = GridView2.SelectedRow.Cells[2].Text;
            }
    }
}