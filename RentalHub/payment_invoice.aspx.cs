using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class payment_invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                Response.Redirect("login_page.aspx");
            }

            Label1.Text = (string)Session["name"];
            Label2.Text = (string)Session["Uname"];
            Label3.Text = (string)Session["product"];
            Label4.Text = (string)Session["cost"];
            Label5.Text = (string)Session["accno"];
            Label6.Text = (string)Session["bank"];
            Label10.Text = (string)Session["datepay"];

            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");

                con.Open();
                string qry = "select * from [User] where [User Name] ='" + Session["Uname"] + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label7.Text = sdr.GetString(4);
                    Label8.Text = sdr.GetString(5);
                    Label9.Text = sdr.GetString(6);
                }
                
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        
    }
}