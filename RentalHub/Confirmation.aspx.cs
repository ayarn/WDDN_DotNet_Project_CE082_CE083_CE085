using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                Response.Redirect("login_page.aspx");
            }

            String pn = Request.QueryString["pn"].ToString();
            Label2.Text = "Product Name = " + pn;

            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");

                con.Open();
                string qry = "select * from [Order] where [product name] ='" + pn + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text += "Id = " + sdr.GetInt32(0);
                    Label3.Text += "Cost = " + sdr.GetString(2);
                    Session["cost"] = sdr.GetString(2);
                    Session["product"] = sdr.GetString(1);
                }
                else
                {
                    Label1.Text = "Error Occured!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("payment_page.aspx");
        }
    }
}