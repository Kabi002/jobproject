using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Mainproject
{
    public partial class studentreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            string str = "insert into students1regtb values('" + sname.Text + "','" + ssname.Text + "'," +
                "'" + saddress.Text + "','" + scity.Text + "'," +
                "'" + ssate.Text + "','" + spincode.Text + "','" + sbirthdate.Text + "'," +
                "'" + sgender.Text + "','" + smobileno.Text + "','" + semailid.Text + "'" +
                ",'" + senrollno.Text + "','" + susername.Text + "','" + spassword.Text + "','" + sconfopassword.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            Label1.Text = "Your Data Successfully stored..";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("educationreg.aspx");
            sname.Text = "";
            ssname.Text = "";
            saddress.Text = "";
            scity.Text = "";
            ssate.Text = "";
            spincode.Text = "";
            sbirthdate.Text = "";
            sgender.Text = "";
            smobileno.Text = "";
            semailid.Text = "";
            senrollno.Text = "";
            susername.Text = "";
            spassword.Text = "";
            sconfopassword.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sname.Text = "";
            ssname.Text = "";
            saddress.Text = "";
            scity.Text = "";
            ssate.Text = "";
            spincode.Text = "";
            sbirthdate.Text = "";
            sgender.Text = "";
            smobileno.Text = "";
            semailid.Text = "";
            senrollno.Text = "";
            susername.Text = "";
            spassword.Text = "";
            sconfopassword.Text = "";


        }
    }
}