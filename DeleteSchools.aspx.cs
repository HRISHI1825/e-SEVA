using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Delete();
            SqlDataSource2.Delete();
            SqlDataSource3.Delete();
            Response.Write("<script>alert('School Deleted Successfully...')</script>");
            Server.Transfer("Registration.aspx");
        }
        catch (Exception er)
        {
            Response.Write(er);
        }
    }
}