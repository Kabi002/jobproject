using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class Adminviewpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (!IsPostBack)
            {



                this.Bind();




            }*/
        }
      /*  private void Bind()
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";




            SqlConnection con = new SqlConnection(constr);



            string co = "select * from students1regtb";
            SqlDataAdapter dp = new SqlDataAdapter(co, con);
            DataSet dt2 = new DataSet();



            dp.Fill(dt2);




        }*/



        protected void sturegbutton_Click(object sender, EventArgs e)
        {
           /* string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            SqlConnection con = new SqlConnection(constr);



            string co1 = "select * from  students1regtb";
            SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            DataTable dt3 = new DataTable();
            dp.Fill(dt3);



            GridView1.DataSource = dt3;*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewall.aspx");
        }
    }
}