using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class originalmasikahwal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HiddenField2.Value = DateTime.Now.Year.ToString();
        try
        {
            int n = SqldsMasikAhwal.Insert();
            if (n == 1)
            {
                String ppath = Server.MapPath("MasikAhwal");
                fureport.SaveAs(ppath + "\\" + fureport.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtEmployeeName.Text = "";
                txtSendingDate.Text = "";

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