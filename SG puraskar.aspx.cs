using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SG_puraskar1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnNew_Click(object sender, EventArgs e)
    {
        Server.Transfer("SG puraskar1.aspx");
    }
}