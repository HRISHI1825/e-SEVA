using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StarryNightMoving_StarryNightMoving_Schooldashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv1 = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
        String s = "";
        
        for (int i = 0; i < dv1.Count; i++)
        {
            if (dv1[i][1] != DBNull.Value)
            {
                DateTime dt = (DateTime)dv1[i][1];
                DateTime md = new DateTime(DateTime.Today.Year, dt.Month, dt.Day);
                DateTime cd = DateTime.Today;
                TimeSpan sp = md.Subtract(cd);
                if (sp.Days > 0)
                {

                    s = s + sp.Days.ToString() + " days to go: " + (String)dv1[i][0] + "<br><br><br>";
                  
                }
            }
        }
        Label1.Text =s;
        
    }
}