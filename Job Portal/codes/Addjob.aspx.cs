using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;

namespace Mainproject
{
    public partial class Addjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                this.show();

            }

        }
            private void show()
            {


                string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
                SqlConnection con = new SqlConnection(constr);
                SqlCommand checkroll = new SqlCommand("select * from companyregtb where username='" + Session["username"] + "'", con);
                SqlDataAdapter sd = new SqlDataAdapter(checkroll);
                DataSet dt = new DataSet();

            sd.Fill(dt);



            TextBox1.Text = dt.Tables[0].Rows[0]["usercompanyname"].ToString();
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP3296\\SQLEXPRESS;Initial Catalog=mainprojectdb;User ID=sa;Password=#Kabilan45";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand checkroll = new SqlCommand("select usercompanyname from companyregtb where usercompanyname='" + TextBox1.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string str = "insert into Addjobtb values('" + TextBox1.Text + "','" + DropDownList1.Text + "'," +
                "'" + DropDownList2.Text + "','" + DropDownList3.Text + "'," +
                "'" + DropDownList4.Text + "','" + TextBox2.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "'," +
                "'" + DropDownList7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'" +
                ",'" + TextBox5.Text + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                Label1.Text = " Successfully Added job Details..";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                Label1.Text = "can u please check the company name..";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cmpyshowdetails.aspx");
        }
    }
}