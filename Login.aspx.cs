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
    public partial class Login : System.Web.UI.Page
    {
        public string connect = "Data Source=DESKTOP-QMEMF76\\SQLEXPRESS;Initial Catalog=Kitchen_Online;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            string username = TextBox1.Text;
            string pwd = TextBox2.Text;
            con.Open();
            string qry = "Select * from Register_Table where Username='" + username + "' and Password='" + pwd + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Username"] = TextBox1.Text;
                Session["Password"] = TextBox2.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Sorry you are not registered in the database");
            }
            con.Close();
        }
    }
}