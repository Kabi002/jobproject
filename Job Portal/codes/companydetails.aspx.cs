using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Mainproject
{
    public partial class companydetails : System.Web.UI.Page
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
                SqlCommand checkroll = new SqlCommand("select * from companyregtb where username = '" + Session["username"] + "'", con);
                SqlDataAdapter sd = new SqlDataAdapter(checkroll);
                DataSet dt = new DataSet();
                sd.Fill(dt);



                cname.Text = dt.Tables[0].Rows[0]["usercompanyname"].ToString();
                caddress.Text = dt.Tables[0].Rows[0]["useraddress"].ToString();
            ccity.Text = dt.Tables[0].Rows[0]["usercity"].ToString();
            cstate.Text = dt.Tables[0].Rows[0]["userstate"].ToString();
            cpincode.Text = dt.Tables[0].Rows[0]["userpincode"].ToString();
            ccontactname.Text = dt.Tables[0].Rows[0]["usercontectname"].ToString();
            cmobileno.Text = dt.Tables[0].Rows[0]["usermobileno"].ToString();
            ccontactno.Text = dt.Tables[0].Rows[0]["usercontectno"].ToString();
            cemailid.Text = dt.Tables[0].Rows[0]["useremailid"].ToString();
            ccompanywebsite.Text = dt.Tables[0].Rows[0]["usercompanywebsite"].ToString();

            cusername.Text = dt.Tables[0].Rows[0]["username"].ToString();
            cpassword.Text = dt.Tables[0].Rows[0]["userpassword"].ToString();
            cconfopassword.Text = dt.Tables[0].Rows[0]["userconpassword"].ToString();
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection sa = new SqlConnection(constr);

            string get = "update  companyregtb set usercompanyname='" + cname.Text + "',useraddress='" + caddress.Text + "'," +
                " usercity='" + ccity.Text + "',userstate='" + cstate.Text + "',userpincode='" + cpincode.Text + "'," +
                "usercontectname='" + ccontactname.Text + "',usermobileno='" + cmobileno.Text + "',usercontectno='" + ccontactno.Text + "'," +
                "useremailid='" + cemailid.Text + "',usercompanywebsite='" + ccompanywebsite.Text + "',username='" + cusername.Text + "'," +
                "userpassword='" + cpassword.Text + "',userconpassword='" + cconfopassword.Text + "' where usercompanyname='" + cname.Text + "' ";
            SqlCommand cmd = new SqlCommand(get, sa);

            sa.Open();



            cmd.ExecuteNonQuery();
            Label1.Text = "Successfully updated...";

            sa.Close();
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