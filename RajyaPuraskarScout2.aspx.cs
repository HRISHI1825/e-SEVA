using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RajyaPuraskarScout02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = "Not Qualified";
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            String name = Request.QueryString["NameOfTheScout"];
            int n = SqldsRajyaPuraskar.Update();
            if (n == 1)
            {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                Server.Transfer("MainRajyaPuraskarGuide.aspx?NameOfTheScout='" + name + "'");
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