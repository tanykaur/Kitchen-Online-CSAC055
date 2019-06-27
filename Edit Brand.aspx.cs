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
    public partial class Edit_Category : System.Web.UI.Page
    {
        public string connect = "Data Source=DESKTOP-QMEMF76\\SQLEXPRESS;Initial Catalog=Kitchen_Online;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string edit = "UPDATE Brand_Table SET Brand_Name='" + TextBox2.Text.ToString() + "'WHERE Brand_Id='" + DropDownList1.SelectedItem + "'";
                SqlCommand cmd = new SqlCommand(edit, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Brand.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Brand.aspx");
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit Brand.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}