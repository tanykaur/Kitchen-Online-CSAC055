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
    public partial class Edit_Product : System.Web.UI.Page
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
                string edit = "UPDATE Products SET Product_Name='" + TextBox3.Text.ToString() + "', Sales_Price='" + TextBox4.Text.ToString() + "',Quantity='" + DropDownList1.SelectedItem + "',Brand_Name='" + DropDownList2.SelectedItem + "'WHERE Product_Id='" + DropDownList3.SelectedItem + "'";
                SqlCommand cmd = new SqlCommand(edit, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Products List.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products List.aspx");
        }
    }
}