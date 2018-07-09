using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admission4 : System.Web.UI.Page
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
        HiddenField1.Value = "Activated";
        try
    {
        int n = SqlDs.Update();
        if(n==1)
             {
                 SqlDs0.Update();
                 SqlDs1.Update();
                 String ppath = Server.MapPath("Signature");
                 fuDistSign.SaveAs(ppath + "\\" + fuDistSign.FileName);
                Response.Write("<script>alert('EmailId and Password activated successfully..')</script>");
                CleartextBoxes(this);
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