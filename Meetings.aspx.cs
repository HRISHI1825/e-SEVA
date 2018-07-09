using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Meetings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
         try
        {
        int n=SqlDsMeetings.Insert();
        if(n==1)
             {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtDate.Text = "";
                txtNameOfTheMeeting.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please fill the form Correctly')</script>");
            }
        }
        catch (Exception er)
        {
            Response.Write(er.Message );
        }
    }
}
