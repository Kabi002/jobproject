using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class companylogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtlog_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            string str = "select count(1) from companyregtb where username=@username and userpassword=@userpassword";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@userpassword", textpassword.Text.Trim());



            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {



                Session["username"] = txtusername.Text.Trim();
                Session["userpassword"] = textpassword.Text.Trim();




               // Response.Redirect("companydetails.aspx");
                Response.Redirect("cmpyshowdetails.aspx");

            }
            else
            {
                Label1.Text = "error";
            }
        }
    }
}