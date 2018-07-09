using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSquat__Guide_originalnewkharikamai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n =SqlDsKhariKamai.Update();
            if (n == 1)
            {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                txtDistContri.Text = "";
                txtEmailId.Text = "";
                txtIUnitContri.Text = "";
                txtPasword.Text = "";
                txtStateContri.Text = "";
                txtTotalContri.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please fill the form Correctly')</script>");
           
            }
        }
        catch(Exception er)
        {
            Response.Write(er);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float u = float.Parse(txtTotalContri.Text) * 30 / 100;
        float s = float.Parse(txtTotalContri.Text) * 40 / 100;
        txtIUnitContri.Text = u.ToString();
        txtDistContri.Text = u.ToString();
        txtStateContri.Text = s.ToString();

    }
}