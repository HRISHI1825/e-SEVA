using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Confirmation1 : System.Web.UI.Page
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

        String Year = DropDownList1.SelectedValue;
        String sqlx = "SELECT DISTINCT UnitType FROM SchoolTable WHERE Year='" + Year + "'";
        SqlDataSource1.SelectCommand = sqlx;
        DataView ds = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
        for (int a = 0; a < ds.Count; a++)
        {
            String uType = (String)ds[a][0];
            String Sql = "select UnitName from SchoolTable where UnitType='" + uType + "' AND Year='" + Year + "' AND CharterNo IS NOT NULL AND Checked IS NULL";
            SqlDataSource2.SelectCommand = Sql;
            DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
            for (int i = 0; i < dv.Count; i++)
            {
                String uName = (String)dv[i][0];
                String msql = "select count(StudFullName) from StudentTable where UnitName='" + uName + "' AND Year='" + Year + "'";
                String msqlx = "select count(FullName) from UnitLeaderTable where UnitName='" + uName + "' AND Year='" + Year + "'";
                SqlDataSource3.SelectCommand = msql;
                SqlDataSource4.SelectCommand = msqlx;
                DataView dv1 = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
                DataView dv2 = (DataView)SqlDataSource4.Select(new DataSourceSelectArguments());
                int st = (int)dv1[0][0];
                int ut = (int)dv2[0][0];
                int total = st + ut;
                int cal = st * (int.Parse(txtEnterTotalFeesForStudent.Text) - int.Parse(txtEnterOfficeContributionForStudent.Text)) + ut * (int.Parse(txtEnterTotalFeesForUnitLeader.Text) - int.Parse(txtEnterOfficeContributionForUnitLeader.Text));
                String query = "INSERT INTO Confirmation (UnitName, Students, UnitLeader, Total, TotalRs, Year, UnitType, Checked) VALUES('" + uName + "'," + st + "," + ut + "," + total + "," + cal + ",'" + Year + "','" + uType + "', 'False')";
                SqlDataSource6.InsertCommand = query;
                try
                {
                    int n = SqlDataSource6.Insert();
                    
                }
                catch (Exception er)
                {
                    Response.Write(er);
                }

            }

        }
            Response.Write("<script>alert('Data inserted successfully...')</script>");
            CleartextBoxes(this);
    }

}