using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;
using System.Configuration;

namespace Mainproject
{
    public partial class Editcmpypostjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          //  if (!IsPostBack)
            //{
               // this.show();
               // this.BindGrid();
              //  this.Bind();


           // }

        }
        //private void Bind()
        //{
          //  string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";




          //  SqlConnection con = new SqlConnection(constr);



          ////  string co = "select * from Addjobtb where username='" + Session["username"] + "'   ";
          //  string co = "select * from Addjobtb";

          //  SqlDataAdapter dp = new SqlDataAdapter(co, con);
          //  DataSet dt2 = new DataSet();



          //  dp.Fill(dt2);
          //  //  lblcmpnyname.Text = dt2.Tables[0].Rows[0]["usercompanyname"].ToString();

          //   Label2.Text = dt2.Tables[0].Rows[0]["usercompanyname"].ToString();


        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";




        //    SqlConnection con = new SqlConnection(constr);



        //    string co = "select * from companyregtb where username='" + Session["username"] + "'   ";
        //    SqlDataAdapter dp = new SqlDataAdapter(co, con);
        //    DataSet dt2 = new DataSet();



        //    dp.Fill(dt2);
        //    Label2.Text = dt2.Tables[0].Rows[0]["usercompanyname"].ToString();

        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            //SqlConnection con = new SqlConnection(constr);



            //string co1 = "select * from Addjobtb where usercompanyname='" + Label2.Text + "'  ";
            //SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            //DataTable dt3 = new DataTable();
            //dp.Fill(dt3);



            //GridView1.DataSource = dt3;
            //GridView1.DataBind();
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            SqlConnection con = new SqlConnection(constr);



            string co1 = "select * from Addjobtb where usercompanyname='" + Label2.Text + "'  ";
            SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            DataTable dt3 = new DataTable();
            dp.Fill(dt3);



           // FormView1.DataSource = dt3;
           // GridView1.DataBind();
        }

        //    private void show()
        //    {


        //        string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //        SqlConnection con = new SqlConnection(constr);
        //        SqlCommand checkroll = new SqlCommand("select * from companyregtb where username='" + Session["username"] + "'", con);
        //        SqlDataAdapter sd = new SqlDataAdapter(checkroll);
        //        DataSet dt = new DataSet();

        //    sd.Fill(dt);



        //    Label2.Text = dt.Tables[0].Rows[0]["usercompanyname"].ToString();
        //}
        //private void BindGrid()
        //{
        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("edit_CRUD"))
        //        {
        //            cmd.Parameters.AddWithValue("@Action", "SELECT");
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.CommandType = CommandType.StoredProcedure;
        //                cmd.Connection = con;
        //                sda.SelectCommand = cmd;
        //                using (DataTable dt = new DataTable())
        //                {
        //                    sda.Fill(dt);
        //                    GridView1.DataSource = dt;
        //                    GridView1.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}

        //protected void Insert(object sender, EventArgs e)
        //{
        //    string name = txtName.Text;
        //    string country = txtCountry.Text;
        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("edit_CRUD"))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@Action", "INSERT");
        //            cmd.Parameters.AddWithValue("@usercompanyname", name);
        //            cmd.Parameters.AddWithValue("@jobcategory", country);
        //            cmd.Connection = con;
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //        }
        //    }
        //    this.BindGrid();
        //}
        //protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    this.BindGrid();
        //}
        //protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    GridViewRow row = GridView1.Rows[e.RowIndex];
        //    int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        //    string name = (row.FindControl("txtName") as TextBox).Text;
        //    string country = (row.FindControl("txtCountry") as TextBox).Text;
        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("edit_CRUD"))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@Action", "UPDATE");
        //            cmd.Parameters.AddWithValue("@id", customerId);
        //            cmd.Parameters.AddWithValue("@usercomapanyname", name);
        //            cmd.Parameters.AddWithValue("@jobcategory", country);
        //            cmd.Connection = con;
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //        }
        //    }
        //    GridView1.EditIndex = -1;
        //    this.BindGrid();
        //}
        //protected void OnRowCancelingEdit(object sender, EventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    this.BindGrid();
        //}
        //protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("edit_CRUD"))
        //        {
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@Action", "DELETE");
        //            cmd.Parameters.AddWithValue("@id", customerId);
        //            cmd.Connection = con;
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //        }
        //    }
        //    this.BindGrid();
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
        //    SqlConnection con = new SqlConnection(constr);

        //    SqlDataAdapter adap = new SqlDataAdapter("select * from Addjobtb ", con);
        //    DataTable daa = new DataTable();
        //    adap.Fill(daa);

        //    if (daa.Rows.Count > 0)
        //    {
        //        SqlCommand cmd = new SqlCommand("select * from Addjobtb where usercompanyname='"+ Label2.Text+"'", con);
        //        SqlDataAdapter constr1 = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();

        //        con.Open();
        //        constr1.Fill(dt);
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();


        //    }
        //    else
        //    {
        //        Label1.Text = "Error";
        //    }
        // }
    }
}