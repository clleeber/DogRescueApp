using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            name.Text = "";
            address.Text = "";
            postcode.Text = "";
            phone.Text = "";
            childSafe.SelectedValue = null;
            training.SelectedValue = null;
            description.Text = "";
            confirmationLabel.Text = "Information submitted";
            
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("Image") + "/" + filename);
                    Picture.Text = "image/" + filename;
                    StatusLabel.Text = "";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}