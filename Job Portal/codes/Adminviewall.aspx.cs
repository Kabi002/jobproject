using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainproject
{
    public partial class Adminviewall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewstureg.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewstuedu.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewcmpyreg.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewcmpyaddjob.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminviewstuapplyjob.aspx");
        }
    }
}