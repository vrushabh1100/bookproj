using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace BookShop
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var st = (from t in db.BookLogintbls
                      where t.username == tx_usrnm.Text && t.password == tx_pswd.Text
                      select t).FirstOrDefault();
            Session["user"] = tx_usrnm.Text;
            Session["pass"] = tx_pswd.Text;

            if (st != null)
            {

                if (Session["user"] != null && Session["pass"] != null)
                {
                    //To use messagebox, 1st we have added references with name System.Windows.Forms
                    System.Windows.Forms.MessageBox.Show("login successfully");
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter Valid Details ');</script>");
            }
        }
    }
}