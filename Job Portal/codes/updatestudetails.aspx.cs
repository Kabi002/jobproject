using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Mainproject
{
    public partial class updatestudetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand checkroll = new SqlCommand("select * from students1regtb where username = '" + Session["username"] + "' and password = '" + Session["password"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);
            //  Label1.Text = dt.Tables[0].Rows[0]["CID"].ToString();
            Label2.Text = dt.Tables[0].Rows[0]["name"].ToString();
            Label3.Text = dt.Tables[0].Rows[0]["surname"].ToString();
            Label4.Text = dt.Tables[0].Rows[0]["address"].ToString();
            Label5.Text = dt.Tables[0].Rows[0]["city"].ToString();
            Label15.Text = dt.Tables[0].Rows[0]["state"].ToString();
            Label6.Text = dt.Tables[0].Rows[0]["pincode"].ToString();
            Label7.Text = dt.Tables[0].Rows[0]["dob"].ToString();
            Label8.Text = dt.Tables[0].Rows[0]["gender"].ToString();
            Label9.Text = dt.Tables[0].Rows[0]["mobileno"].ToString();
            Label10.Text = dt.Tables[0].Rows[0]["emailid"].ToString();
            Label11.Text = dt.Tables[0].Rows[0]["enrollno"].ToString();
            Label12.Text = dt.Tables[0].Rows[0]["username"].ToString();
            Label13.Text = dt.Tables[0].Rows[0]["password"].ToString();
            Label14.Text = dt.Tables[0].Rows[0]["confopassword"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("StudentDetails.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentDetails.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchjob.aspx");

        }
    }
}