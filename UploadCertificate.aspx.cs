using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadCertificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqlDataSource1.Update();
            if (n == 1)
            {
                String ppath = Server.MapPath("VarshikAnudan");
                fuUpload.SaveAs(ppath + "\\" + fuUpload.FileName);
                Response.Write("<script>alert('Certificate Uploaded Successfully...')</script>");
                Server.Transfer("VarshikAnudan.aspx");
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