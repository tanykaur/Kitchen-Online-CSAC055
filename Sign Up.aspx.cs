using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BotDetect;
using BotDetect.Web;
using BotDetect.Web.UI;


namespace WebApplication8
{
    public partial class Sign_Up : System.Web.UI.Page
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
                string insert = "INSERT INTO Register_Table(First_name, Last_name, Username, Password)values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.ExecuteNonQuery();

                Response.Write("You have successfully registered to the database");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Please enter all the details");
            }
        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}