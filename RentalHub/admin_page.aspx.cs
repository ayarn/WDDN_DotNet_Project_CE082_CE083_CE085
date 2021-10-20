using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class admin_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("customize_page.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string name = "Rentalhub@Admin";

            args.IsValid = false;
            string password = args.Value;
            string admin_pass = "Admin@Rentalhub_666";

            if (password == admin_pass && name == "Rentalhub@Admin")
            {
                args.IsValid = true;
            }

        }
    }
}