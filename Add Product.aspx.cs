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
    public partial class Add_Product : System.Web.UI.Page
    {
        public string connect = "Data Source=DESKTOP-QMEMF76\\SQLEXPRESS;Initial Catalog=Kitchen_Online;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string edit = "INSERT INTO Products (Product_Name, Sales_Price, Quantity, Brand_Name, Product_Id)values('" + TextBox3.Text.ToString() +"','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + DropDownList2.SelectedItem + "','" + TextBox2.Text.ToString() +"')";
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
            Response.Redirect("Products List");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit Product.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["Password"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}