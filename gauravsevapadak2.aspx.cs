using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class originalgauravsevapadak : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsGaurav.Insert();
            if (n == 1)
            {
                String ppath = Server.MapPath("GauravSevaPadak");
                fuletter.SaveAs(ppath + "\\" + fuletter.FileName);
                fuForm.SaveAs(ppath + "\\" + fuForm.FileName);
                fuCertificate.SaveAs(ppath + "\\" + fuCertificate.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtAddress.Text = "";
                txtApplicationDate.Text = "";
                txtAward.Text = "";
                txtMeetingDate.Text = "";
                txtName.Text = "";
                txtSchoolName.Text = "";

            }
            else
            {
                Response.Write("<script>alert('Please fill the form Correctly')</script>");
            }

        }
        catch (Exception er)
        {
            Response.Write(er);
        }
    }
}