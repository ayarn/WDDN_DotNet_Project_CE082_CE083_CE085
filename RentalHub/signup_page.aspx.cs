using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalHub
{
    public partial class signup_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string str = args.Value;
            bool islen = false, isup = false, islow = false, isnum = false;

            foreach (char ch in str)
            {
                if (ch >= 'a' && ch <= 'z')
                {
                    islow = true;
                }

                if (ch >= 'A' && ch <= 'Z')
                {
                    isup = true;
                }

                if (ch >= '0' && ch <= '1')
                {
                    isnum = true;
                }
            }

            if (args.Value.Length >= 6 && args.Value.Length <= 14)
            {
                islen = true;
            }

            if (isnum == true && islow == true && isup == true && islen == true)
            {
                args.IsValid = true;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            userdbEntities db = new userdbEntities();

            User usr = new User { User_Name = TextBox1.Text, Password = TextBox3.Text, Confirm_Password = TextBox4.Text, Email = TextBox2.Text, Mobile_Number = TextBox5.Text, Address = TextBox6.Text };

            db.Users.Add(usr);
            db.SaveChanges();
            Response.Redirect("login_page.aspx");
        }

       
    }
}

       