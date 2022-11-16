using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Mainproject
{
    public partial class StudentsApplyJobs : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(constr);

            lblcmpnyname.Text = Request.QueryString["usercompanyname"];
            lblJobCategory.Text = Request.QueryString["jobcategory"];

            lblRequiredskill.Text = Request.QueryString["Requiredskill"];


        }


        protected void Button2_Click(object sender, EventArgs e)
        {
          //  string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            //SqlConnection con = new SqlConnection(constr);
           // string put = "insert into StudentsApplyJobs values('" + lblcmpnyname.Text + "','" + lblJobCategory.Text + "','" + lblRequiredskill.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + txtemailid.Text + "','" + TextBox7.Text + "','" + Label2.Text + "')";



           /* SqlCommand cmd = new SqlCommand(put, con);
            con.Open();
            cmd.ExecuteNonQuery();



            con.Close();



            Label1.Text = "submited Sucessfully";*/

            if (FileUpload1.HasFile)
            {
                string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
               // SqlConnection con = new SqlConnection(constr);
              //  string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                // SqlConnection sn = new SqlConnection(str);
                //
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                Stream str1 = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(str1);
                Byte[] size = br.ReadBytes((int)str1.Length);
                //
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "insert into StudentsApplyJobs(usercompanyname,jobcategory,skill,Name,LName,Dob,Address,Mobile_No,Emailid,description,Filename,FileType,FileData) values(@cmpnyname,@jobcategory,@skill,@firstname,@lastname,@dob,@address,@contactno,@mailid,@description,@Name,@Type,@Data)";
                        cmd.Parameters.AddWithValue("@cmpnyname", lblcmpnyname.Text);
                        cmd.Parameters.AddWithValue("@jobcategory", lblJobCategory.Text);
                        cmd.Parameters.AddWithValue("@skill", lblRequiredskill.Text);
                        cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@contactno", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@mailid", txtemailid.Text);
                        cmd.Parameters.AddWithValue("@description", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@Name", filename);
                        cmd.Parameters.AddWithValue("@Type", "application/word");
                        cmd.Parameters.AddWithValue("@Data", size);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        // BindGridviewData();
                    }
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "myfunction();", true);
            }




        }


    }
     
}