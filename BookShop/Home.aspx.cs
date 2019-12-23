using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookShop
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //to show how many products u hav in cart using label1
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label1.Text = "0";

            }

            //For Login Logout
            if (Session["user"] != null && Session["pass"] != null)
            {
                //Response.Write("welcome to BookForest ");

                Response.Write("Hello " + Session["user"]);
            }

            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //this is for ViewAll books Linkbutton
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                //
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            }
        }


    }
}