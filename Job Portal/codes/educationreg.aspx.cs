using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

namespace Mainproject
{
    public partial class educationreg : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            /* string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
             SqlConnection con = new SqlConnection(constr);
             con.Open();
             string query1 = "SELECT * FROM students1regtb where enrollno='"+eenrollno.Text+"'";
             SqlCommand sqlcmd1 = new SqlCommand(query1, con);
                         sqlcmd1.Parameters.Add("@san", SqlDbType.NVarChar).Value = eenrollno.Text;

             sqlcmd1.ExecuteNonQuery();
             SqlDataReader reader = sqlcmd1.ExecuteReader();
             reader.Read();
             Label3.Text = reader["enrollno"].ToString();

             con.Close();*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);

            con.Open();

            SqlCommand checkroll = new SqlCommand("select enrollno from students1regtb where enrollno='"+eenrollno.Text+"'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataTable dt = new DataTable();
            sd.Fill(dt);

            SqlCommand checkreg = new SqlCommand("select enrollno from educationtb where enrollno='" + eenrollno.Text + "'", con);
            SqlDataAdapter sd1 = new SqlDataAdapter(checkreg);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);


            if (dt.Rows.Count > 0 && dt1.Rows.Count ==0)
            {
                string str = "insert into educationtb values ('" + eclgname.Text + "','" + eenrollno.Text + "','" + esem.Text + "','" + eeducation.Text + "','" + ebranch.Text + "','" + epassyear.Text + "','" + ecpi.Text + "','" + ecgpa.Text + "','" + eskill.Text + "','" + eextraskill.Text + "','" + FileUpload1+ "')";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Enroll is mateched";


                eclgname.Text = "";
                eenrollno.Text = "";
                esem.Text = "";
                eeducation.Text = "";
                ebranch.Text = "";
                epassyear.Text = "";
                ecpi.Text = "";
                ecgpa.Text = "";
                eskill.Text = "";
                eextraskill.Text = "";
            }
            else
            {
               Label1.Text = "Enroll is invalid Or Already enroll isS claimed";
            }



            uploadmyfiles();

        }
        public void uploadmyfiles()
        {

            string Name = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string location = Server.MapPath("~/UploadResume/" + Name);
            FileUpload1.SaveAs(location);
            Label2.Text = Name.ToString();

        }
      

        protected void Button2_Click(object sender, EventArgs e)
        {
            eclgname.Text = "";
            eenrollno.Text = "";
            esem.Text = "";
            eeducation.Text = "";
            ebranch.Text = "";
            epassyear.Text = "";
            ecpi.Text = "";
            ecgpa.Text = "";
            eskill.Text = "";
            eextraskill.Text = "";


        }
    }
}