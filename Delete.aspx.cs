using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Sqldatasource2.Delete();
        Sqldatasource3.Delete();
        Sqldatasource4.Delete();
        Sqldatasource5.Delete();
        Sqldatasource6.Delete();
        Sqldatasource7.Delete();
        Sqldatasource8.Delete();
        Sqldatasource9.Delete();
        Sqldatasource10.Delete();
        Sqldatasource11.Delete();
        Sqldatasource12.Delete();
        Sqldatasource13.Delete();
    }
}