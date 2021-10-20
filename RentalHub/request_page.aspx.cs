using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");
            con.Open();
            DateTime dt = DateTime.Now;
            String datetoday = dt.ToString("yyyy-MM-dd");
            SqlCommand cmd = new SqlCommand("insert into Requests values('" + TextBox1.Text + "', '" + DropDownList1.Text + "', '" + datetoday + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("request_success_page.aspx");
        }
    }
}
