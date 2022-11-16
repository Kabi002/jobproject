using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class cmpyshowdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand checkroll = new SqlCommand("select * from companyregtb where username = '" + Session["username"] + "' and userpassword = '" + Session["userpassword"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);
           // Label1.Text = dt.Tables[0].Rows[0]["CID"].ToString();
            Label1.Text = dt.Tables[0].Rows[0]["usercompanyname"].ToString();
            Label2.Text = dt.Tables[0].Rows[0]["useraddress"].ToString();
            Label3.Text = dt.Tables[0].Rows[0]["usercity"].ToString();
            Label4.Text = dt.Tables[0].Rows[0]["userstate"].ToString();
            Label5.Text = dt.Tables[0].Rows[0]["userpincode"].ToString();
            Label6.Text = dt.Tables[0].Rows[0]["usercontectname"].ToString();
            Label7.Text = dt.Tables[0].Rows[0]["usermobileno"].ToString();
            Label8.Text = dt.Tables[0].Rows[0]["usercontectno"].ToString();
            Label9.Text = dt.Tables[0].Rows[0]["useremailid"].ToString();
            Label10.Text = dt.Tables[0].Rows[0]["usercompanywebsite"].ToString();
            Label11.Text = dt.Tables[0].Rows[0]["username"].ToString();
            Label12.Text = dt.Tables[0].Rows[0]["userpassword"].ToString();
            Label13.Text = dt.Tables[0].Rows[0]["userconpassword"].ToString();

     

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("companydetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addjob.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("companysearchdetails.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Editcmpypostjob.aspx");

        }
    }
}