using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class originalSgpuraskar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsAdarsh.Update();
            if (n == 1)
            {
                String ppath = Server.MapPath("AdarshScoutGuidePuraskar");
                fuPhoto.SaveAs(ppath + "\\" + fuPhoto.FileName);
                fuCertificate.SaveAs(ppath + "\\" + fuCertificate.FileName);
                fuLetter.SaveAs(ppath + "\\" + fuLetter.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");

                CleartextBoxes(this);
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
}