using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NationalDayDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsNationalDays.Update();
            if (n == 1)
            {
                String ppath = Server.MapPath("Programs");
                fuReport.SaveAs(ppath + "\\" + fuReport.FileName);
                fuPhoto.SaveAs(ppath + "\\" + fuPhoto.FileName);
           
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtArrangedProgram.Text = "";
                txtAttendance.Text = "";
                txtPlace.Text = "";
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