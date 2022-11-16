using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net;
using System.Reflection.Emit;
using System.Security.Policy;
using System.Xml.Linq;
using System.Net.NetworkInformation;

namespace Mainproject
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.bindgri();
            }
        }



        private void bindgri()
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
           // string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);
            SqlCommand checkroll = new SqlCommand("select * from students1regtb where username = '" + Session["username"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);



            sname.Text = dt.Tables[0].Rows[0]["name"].ToString();
            ssname.Text = dt.Tables[0].Rows[0]["surname"].ToString();
            saddress.Text = dt.Tables[0].Rows[0]["address"].ToString();
            scity.Text = dt.Tables[0].Rows[0]["city"].ToString();
            sstate.Text = dt.Tables[0].Rows[0]["state"].ToString();
            spincode.Text = dt.Tables[0].Rows[0]["pincode"].ToString();
            sbirthdate.Text = dt.Tables[0].Rows[0]["dob"].ToString();
            sgender.Text = dt.Tables[0].Rows[0]["gender"].ToString();
            smobileno.Text = dt.Tables[0].Rows[0]["mobileno"].ToString();
            semailid.Text = dt.Tables[0].Rows[0]["emailid"].ToString();
            senrollno.Text = dt.Tables[0].Rows[0]["enrollno"].ToString();
            susername.Text = dt.Tables[0].Rows[0]["username"].ToString();
            spassword.Text = dt.Tables[0].Rows[0]["password"].ToString();
            sconfopassword.Text = dt.Tables[0].Rows[0]["confopassword"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection sa = new SqlConnection(constr);

            string get = "update  students1regtb set name='" + sname.Text + "',surname='" + ssname.Text + "'," +
                " address='" + saddress.Text + "',city='" + scity.Text + "',state='" + sstate.Text + "'," +
                "pincode='" + spincode.Text + "',dob='" + sbirthdate.Text + "',gender='" + sgender.Text + "'," +
                "mobileno='" + smobileno.Text + "',emailId='" + semailid.Text + "',enrollno='"+senrollno.Text+"',username='" + susername.Text + "'," +
                "password='" + spassword.Text + "',confopassword='"+ sconfopassword.Text+"' where enrollno='" + senrollno.Text + "' ";
            SqlCommand cmd = new SqlCommand(get, sa);

            sa.Open();



            cmd.ExecuteNonQuery();

            sa.Close();


            Label1.Text = "Updated Successfully..";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatestudetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchjob.aspx");

        }
    }
}