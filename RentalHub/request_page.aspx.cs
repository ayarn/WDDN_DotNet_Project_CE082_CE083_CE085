using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class request_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                Response.Redirect("login_page.aspx");
            }
            /*else
            {
                Response.Write(Session["Uname"]);
            }*/
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("request_success_page.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            //Session["Uname"] = "";
            Response.Redirect("login_page.aspx");
        }
    }
}