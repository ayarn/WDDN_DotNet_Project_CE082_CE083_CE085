using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class order_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Uname"] == null)
            {
                Response.Redirect("login_page.aspx");
            }
            /*else
            {
                Response.Write(Session["Uname"]);
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("Confirmation.aspx?pn=" + gr.Cells[1].Text);
        }

    }
}