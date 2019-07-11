using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Products_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Product.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["Password"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}