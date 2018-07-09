using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AuditReport1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqlDsAuditReport.Insert();
            if (n == 1)
            {
                String ppath = Server.MapPath("AuditReport");
                FileUpload1.SaveAs(ppath + "\\" + FileUpload1.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtYear.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please fill the form Correctly')</script>");
            }
        }
        catch (Exception er)
        {
            Response.Write(er.Message);
        }
    }
}