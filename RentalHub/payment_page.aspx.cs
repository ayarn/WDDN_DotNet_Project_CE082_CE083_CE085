using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class payment_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                Response.Redirect("login_page.aspx");
            }

            string un = (string)Session["Uname"];
            string ct = (string)Session["cost"];
            Label3.Text = ct;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");
            DateTime dt = DateTime.Now;
            String datetoday = dt.ToString("yyyy-MM-dd");
            string un = (string)Session["Uname"];
            string ct = (string)Session["cost"];
            string pn = (string)Session["product"];
            Session["name"] = TextBox2.Text;
            Session["bank"] = DropDownList1.Text;
            Session["accno"] = TextBox1.Text;
            Session["datepay"] = datetoday;

            con.Open();
            string qry = "insert into [payment] values('" + DropDownList1.Text + "', '" + TextBox1.Text +"', '" + un + "', '" + ct + "', '" + pn + "', '" + TextBox2.Text + "', '" + datetoday + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            Response.Redirect("payment_invoice.aspx");
        }
    }
}