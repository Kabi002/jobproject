using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class companyreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            string str = "insert into companyregtb values('" + cname.Text + "','" + caddress.Text + "'," +
                "'" + ccity.Text + "','" + cstate.Text + "'," +
                "'" + cpincode.Text + "','" + ccontactname.Text + "','" + cmobileno.Text + "'," +
                "'" + ccontactno.Text + "','" + cemailid.Text + "','" + ccompanywebsite.Text + "'" +
                ",'" + cusername.Text + "','" + cpassword.Text + "','" + cconfopassword.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            Label1.Text = "Your Data Successfully Stored..";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cname.Text = "";
            caddress.Text = "";
            ccity.Text = "";
            cstate.Text = "";
            cpincode.Text = "";
            ccontactname.Text = "";
            cmobileno.Text = "";
            ccontactno.Text = "";
            cemailid.Text = "";
            ccompanywebsite.Text = "";
            cusername.Text = "";
            cpassword.Text = "";
            cconfopassword.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cname.Text = "";
            caddress.Text = "";
            ccity.Text = "";
            cstate.Text = "";
            cpincode.Text = "";
            ccontactname.Text = "";
            cmobileno.Text = "";
            ccontactno.Text = "";
            cemailid.Text = "";
            ccompanywebsite.Text = "";
            cusername.Text = "";
            cpassword.Text = "";
            cconfopassword.Text = "";
        }
    }
}