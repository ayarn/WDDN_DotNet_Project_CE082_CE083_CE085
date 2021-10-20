using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_page.aspx");

        }

        

        
    }
}