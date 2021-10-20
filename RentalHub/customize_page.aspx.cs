using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace RentalHub
{
    public partial class customize_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] == null)
            {
                Response.Redirect("admin_page.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localDb)\MSSQLLocalDB;Initial Catalog=userdb;Integrated Security=True");

                string uname = TextBox3.Text;
                DateTime dt = DateTime.Now;
                String datetoday = dt.ToString("yyyy-MM-dd");
                string times = datetoday;
                string pn = TextBox1.Text;
                string fname = FileUpload1.PostedFile.FileName;
                string fpath = "photo/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/photo/") + fname);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Picture values('" + uname + "', '" + times + "', '" + fpath + "', '" + pn + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            userdbEntities1 db = new userdbEntities1();

            Order o = new Order();

            o.product_name = TextBox1.Text;
            o.cost = TextBox2.Text;
            o.category = DropDownList1.SelectedItem.Value;
            o.availability = DropDownList2.SelectedItem.Value;
            
            db.Orders.Add(o);
            db.SaveChanges();
            Response.Redirect("customize_page.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("home_page.aspx");
        }
    }
}