using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = Sqlds.Update();
            if (n == 1)
            {
                String ppath = Server.MapPath("Signature");
                fuUnitLeaderSign.SaveAs(ppath + "\\" + fuUnitLeaderSign.FileName);
                fuprincipalSign.SaveAs(ppath + "\\" + fuprincipalSign.FileName);
                Response.Write("<script>alert('Data inserted successfully...')</script>");
                Server.Transfer("RegistrationFormPrint.aspx");
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