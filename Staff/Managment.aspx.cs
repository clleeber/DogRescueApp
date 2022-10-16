using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Staff/Add Dog");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Staff/Edit Dogs");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Staff/Edit Applicants");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Journal");
        }
    }
}