using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Authentication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void CleartextBoxes(Control parent)
    {
        foreach (Control c in parent.Controls)
        {
            if ((c.GetType() == typeof(TextBox)))
            {
                ((TextBox)(c)).Text = "";
            }
            if (c.HasControls())
            {
                CleartextBoxes(c);
            }
        }
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)Sqlds0.Select(new DataSourceSelectArguments());
            if (dv.Count == 0)
            {
                int n = Sqlds.Insert();
                if (n == 1)
                {
                    String ppath = Server.MapPath("Auth");
                    FileUpload1.SaveAs(ppath + "\\" + FileUpload1.FileName);
                    Response.Write("<script>alert('Data Inserted Successfully..')</script>");
                    CleartextBoxes(this);
                    Server.Transfer("Default.aspx");

                }

                else
                {
                    Response.Write("<script>alert('Please fill the form Correctly')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('User Already exists...Please Choose Different Password.')</script>");
                return;
            }




        }
        catch (Exception er)
        {
            Response.Write(er.Message);
        }
    }
}
