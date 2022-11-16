using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Mainproject
{
    public partial class companysearchdetails : System.Web.UI.Page
    {
        private string pdfDoc;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {



                this.Bind();




            }
          


        }

        private void Bind()
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";




            SqlConnection con = new SqlConnection(constr);



            string co = "select * from companyregtb where username='" + Session["username"] + "'   ";
            SqlDataAdapter dp = new SqlDataAdapter(co, con);
            DataSet dt2 = new DataSet();



            dp.Fill(dt2);
            lblcmpnyname.Text = dt2.Tables[0].Rows[0]["usercompanyname"].ToString();




        }

        /*  protected void GridView1_SelectedIndexchanged(object sender, EventArgs e)
          {
              GridViewRow gr = GridView1.SelectedRow;
              string filePath = Server.MapPath("~/upload/" + gr.Cells[0].Text);
              Response.ContentType = ContentType;
              Response.AppendHeader("Content-Disposition", "attachment; usercompanyname=" + Path.GetFileName(filePath));
              Response.WriteFile(filePath);
              Response.End();
          }*/

        /* private void printTicket(string transactionNo)
         {
             Response.ContentType = "application/pdf";
             Response.AddHeader("content-disposition", "attachement;Resume=Ticket" + ".pdf");
             Response.Cache.SetCacheability(HttpCacheability.NoCache);
             Response.Write(pdfDoc);
             Response.End();
         }*/

        protected void btngetapplications_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            SqlConnection con = new SqlConnection(constr);



            string co1 = "select * from StudentsApplyJobs where usercompanyname='" + lblcmpnyname.Text + "'  ";
            SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            DataTable dt3 = new DataTable();
            dp.Fill(dt3);



            GridView1.DataSource = dt3;
            GridView1.DataBind();


        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = sender as LinkButton;
            GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
            int fileid = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());



            // string name, type, resume, Data;
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    //

                    //
                    cmd.CommandText = "select Filename,FileType,FileData   from StudentsApplyJobs where id=@id";
                    cmd.Parameters.AddWithValue("@id", fileid);
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Response.ContentType = dr["FileType"].ToString();
                        Response.AddHeader("Content-Disposition",
                                            "attachment;Filename=\"" + dr["Filename"] + "\"");
                        Response.BinaryWrite((byte[])dr["FileData"]);

                        Response.End();
                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("companydetails.aspx");
        }
    }
    }




     


       
    
