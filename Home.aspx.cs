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
            if(Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
           

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["Password"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }
}