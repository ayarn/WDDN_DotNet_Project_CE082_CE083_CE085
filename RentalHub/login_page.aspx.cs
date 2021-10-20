using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string qry = "select * from [User] where [User Name] ='" + uid + "' and Password ='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    string usname = sdr.GetString(1);
                    Session["Uname"] = usname;
                    Response.Redirect("order_page.aspx");
                }
                else
                {
                    Label1.Text = "User Name & Password Is not correct Try again..!!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_page.aspx");
        }
    }
}