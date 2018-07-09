using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class HolidayTaken : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            DataView s = (DataView)Sqlds.Select(new DataSourceSelectArguments());
            int s1 = (int)s[0][0];
            int s2 = (int)s[0][1];
            int s3 = (int)s[0][2];
            if (s1 >= int.Parse(txtArjit.Text) && s2 >= int.Parse(txtKirkod.Text) && s3 >= int.Parse(txtVaidyakiya.Text))
            {
                int n = SqlDsHolidays.Update();
                if (n == 1)
                {
                    int a = SqldsRemaining.Update();
                    if (a == 1)
                    {
                        int b = SqlDataSource3.Insert();
                        Response.Write("<script>alert('Data Inserted Successfully')</script>");
                        txtArjit.Text = "";
                        txtKirkod.Text = "";
                        txtVaidyakiya.Text = "";

                    }
                    else
                    {
                        Response.Write("<script>alert('Please enter correct details...')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please fill the form Correctly')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('You do not have enough holidays')</script>");
            }

        }
        catch (Exception er)
        {
            Response.Write(er);
        }
    }
}