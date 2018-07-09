using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSquat__Guide_originalnewmagzinedata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        HiddenField1.Value = "No";

    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n=SqlDsMagzine.Update();
            if (n == 1)
            {
                Response.Write("<script>alert('Transaction Successfully Completed...')</script>");
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