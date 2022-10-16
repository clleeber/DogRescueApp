using System;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace Test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.email.Text = User.Identity.Name;
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource2.Update();
            Response.Redirect("~/User/User Profile");

        }

        protected void DetailsView1_PageIndexChanging(object sender, System.Web.UI.WebControls.DetailsViewPageEventArgs e)
        {

        }

       
    }
}
