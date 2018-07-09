using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UnitInformation2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String Year = DropDownList1.SelectedValue;
        String Sql = "select Sum(TotalUnits), Sum(TotalStudent), Sum(StudentRegistrationFees), Sum(StudentTotalFees), Sum(TotalUnitLeader), Sum(TotalSupportingLeader), Sum(UnitLeaderRegistrationFees), Sum(UnitLeaderTotalFees), Sum(TotalMembers), Sum(TotalFees) from UnitInformation where Year='" + Year + "'";
        SqlDataSource2.SelectCommand = Sql;
        DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
        if (dv[0][0] != DBNull.Value)
        {
            Label2.Text = Convert.ToString(dv[0][0]);
        }
        else
        {
            Label2.Text = "0";
        }
        if (dv[0][1] != DBNull.Value)
        {
            Label3.Text = Convert.ToString(dv[0][1]);
        }
        else
        {
            Label3.Text = "0";
        }
        if (dv[0][2] != DBNull.Value)
        {
            Label4.Text = Convert.ToString(dv[0][2]);
        }
        else
        {
            Label4.Text = "0";
        }
        if (dv[0][3] != DBNull.Value)
        {
            Label5.Text = Convert.ToString(dv[0][3]);
        }
        else
        {
            Label5.Text = "0";
        }
        if (dv[0][4] != DBNull.Value)
        {
            Label6.Text = Convert.ToString(dv[0][4]);
        }
        else
        {
            Label6.Text = "0";
        }
        if (dv[0][5] != DBNull.Value)
        {
            Label7.Text = Convert.ToString(dv[0][5]);
        }
        else
        {
            Label7.Text = "0";
        }
        if (dv[0][6] != DBNull.Value)
        {
            Label8.Text = Convert.ToString(dv[0][6]);
        }
        else
        {
            Label8.Text = "0";
        }
        if (dv[0][7] != DBNull.Value)
        {
            Label9.Text = Convert.ToString(dv[0][7]);
        }
        else
        {
            Label9.Text = "0";
        }
        if (dv[0][8] != DBNull.Value)
        {
            Label10.Text = Convert.ToString(dv[0][8]);
        }
        else
        {
            Label10.Text = "0";
        }
        if (dv[0][9] != DBNull.Value)
        {
            Label11.Text = Convert.ToString(dv[0][9]);
        }
        else
        {
            Label11.Text = "0";
        }
    }
}