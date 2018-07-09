using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainRajyaPuraskarScout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String n = Request.QueryString["NameOfTheScout"];
        Server.Transfer("MainRajyaPuraskarScout1.aspx?NameOfTheScout='" + n + "'");
   
    }
}