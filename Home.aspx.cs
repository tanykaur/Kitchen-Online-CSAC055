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
    public partial class Home : System.Web.UI.Page
    {
        string connectionstring = "Data Source=DESKTOP-QMEMF76\\SQLEXPRESS;Initial Catalog=Kitchen_Online;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlDataAdapter brand = new SqlDataAdapter("SELECT Brand_Name, No_of_Products FROM Brand_Table", con);
                DataTable dtb = new DataTable();
                brand.Fill(dtb);
                Brand.DataSource = dtb;
                Brand.DataBind();
            }

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlDataAdapter prod = new SqlDataAdapter("SELECT Brand_Name,Product_Name, Quantity FROM Products", con);
                DataTable dtb = new DataTable();
                prod.Fill(dtb);
                Product.DataSource = dtb;
                Product.DataBind();
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}