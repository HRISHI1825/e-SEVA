using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class letterinward2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqlDsInwardLetter.Insert();
            String ppath = Server.MapPath("InwardLetter");
            fuInwardLetter.SaveAs(ppath+"\\"+fuInwardLetter.FileName);
            if (n == 1)
            {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtFileNo.Text = "";
                txtFrom.Text = "";
                txtLetterAcceptingDate.Text = "";
                txtLetterDate.Text = "";
                txtLetterNo1.Text = "";
                txtTopic.Text = "";
       
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