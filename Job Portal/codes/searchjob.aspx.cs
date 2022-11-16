using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Mainproject
{
    public partial class searchjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
                SqlConnection con = new SqlConnection(constr);

                string co = "select * from Addjobtb";
                SqlDataAdapter adpt = new SqlDataAdapter(co, con);

                
                DataTable dt = new DataTable();



                adpt.Fill(dt);


                // SqlDataAdapter constr12 = new SqlDataAdapter(co, con);





                /*  DataTable dt = new DataTable();

                  DataTable dt1 = new DataTable();


                  constr1.Fill(dt);
                  drop.DataSource = dt;
                  drop.DataTextField = "jobcategory";
                  drop.DataValueField = "jobcategory";

                  drop.DataBind();


                  constr1.Fill(dt1);

                  drop1.DataSource = dt1;
                  drop1.DataTextField = "Min_Qualification";
                  drop1.DataValueField = "Min_Qualification";

                  drop1.DataBind();*/



            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);

            SqlDataAdapter adap = new SqlDataAdapter("select * from Addjobtb ", con);
            DataTable daa = new DataTable();
            adap.Fill(daa);

            if(daa.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("select * from Addjobtb where jobcategory='" + drop.SelectedValue + "' and Min_Qualification='"+ drop1.SelectedValue+ "' and Requiredskill='" + drop2.SelectedValue+"'", con);
                SqlDataAdapter constr1 = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                con.Open();
                constr1.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
              //  Label1.Text = "find your jobs!!!!";


            }




            else
            {
                Label1.Text = "Not match jobs";
            }










        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatestudetails.aspx");
        }
    }
}