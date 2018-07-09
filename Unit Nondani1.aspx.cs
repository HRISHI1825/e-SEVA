using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _14_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsUnitNondani.Update();
            if (n == 1)
            {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String year = (String)Session["Year"];
        String sql = "select SchoolName, UnitName from SchoolTable where Taluka='" + DropDownList1.SelectedValue + "' AND UnitType='" + DropDownList2.SelectedValue + "' AND Year='" + year + "'";
        SqlDataSource2.SelectCommand = sql;
        DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
        for (int i = 0; i < dv.Count; i++)
        {
            String s = (String)dv[i][0];
            String u = (String)dv[i][1];
            String sql1 = "select FullName, TrainingName  from UnitLeaderTable where SchoolName='" + s + "' AND UnitName='" + u + "' AND Year='" + year + "'";
            SqlDataSource3.SelectCommand = sql1;
            DataView dv1 = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
            for (int a = 0; a < dv1.Count; a++)
            {
                String ul = (String)dv1[a][0];
                String tn = (String)dv1[a][1];
            }
            String sql2="select ReceiptNo
            
        }
    }
}