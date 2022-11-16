using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class Studentslogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtlog_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            string str = "select count(1) from students1regtb where username=@username and password=@password";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", textpassword.Text.Trim());



            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {



                Session["username"] = txtusername.Text.Trim();
                Session["password"] = textpassword.Text.Trim();




                Response.Redirect("updatestudetails.aspx");
            }
            else
            {
                Label1.Text = "error";
            }
        }
    }
}