using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StarryNightMoving_StarryNightMoving_adLogin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "admin" && txtPwd.Text == "admin")
        {
            Server.Transfer("Admin2.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid EmailId or Password...')</script>");
        }
    }
}