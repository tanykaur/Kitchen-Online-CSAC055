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
    public partial class Add_Brand : System.Web.UI.Page
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
                string insert = "INSERT INTO Brand_Table(Brand_Name, Brand_Id)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Brand.aspx");
            }
            else
            {
                Response.Write("Please enter all the details");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}