using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

            }
        }

        protected void txtlog_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            string query = "SELECT COUNT(1) FROM Admintb where Admin=@Admin and Password=@Password";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            con.Open();
            sqlcmd.Parameters.AddWithValue("@Admin", adminid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@Password", password.Text.Trim());

            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count == 1)
            {
                Session["Admin"] = adminid.Text.Trim();
                Session["Password"] = password.Text.Trim();

                 Response.Redirect("Adminviewall.aspx");
                Label1.Text = "sucess";
            }
            else
            {
                Label1.Text = "Username or Password incorrect";

            }

        }
    }
}