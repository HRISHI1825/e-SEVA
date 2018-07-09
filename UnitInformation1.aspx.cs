using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UnitInformation1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        
        String Year = DropDownList1.SelectedValue;
        String sqlx="SELECT DISTINCT UnitType FROM SchoolTable WHERE Year='"+Year+"'";
        SqlDataSource1.SelectCommand=sqlx;
        DataView dv=(DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
        for (int i = 0; i < dv.Count; i++)
        {
            String uType = (String)dv[i][0];
            String Sql = "select count(UnitName) from SchoolTable where UnitType='" + uType + "' AND Year='" + Year + "' AND Status='Activated'";
            SqlDataSource2.SelectCommand=Sql;
            DataView dv1 = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
            int uName = (int)dv1[0][0];
            String msqlx = "select count(StudFullName) from StudentTable where UnitType='" + uType + "' AND Year='" + Year + "' AND Status='Activated'";
            SqlDataSource3.SelectCommand=msqlx;
            DataView dv2 = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
            int sName=(int)dv2[0][0];
            float rf = float.Parse(txtEnterRegistrationFeesForStudent.Text);
            float t1=sName*rf;
            String msql = "select count(FullName) from UnitLeaderTable where UnitType='" + uType + "' AND Year='" + Year + "' AND SupportingLeader='false' AND Status='Activated'";
            SqlDataSource4.SelectCommand = msql;
            DataView dv3 = (DataView)SqlDataSource4.Select(new DataSourceSelectArguments());
            int ulName=(int)dv3[0][0];
            String msqlv = "select count(FullName) from UnitLeaderTable where UnitType='" + uType + "' AND Year='" + Year + "' AND SupportingLeader='true' AND Status='Activated'";
            int sut;
            DataView dv4=(DataView)SqlDataSource5.Select(new DataSourceSelectArguments());
            if (dv4.Count == 1)
            {
                 sut = (int)dv4[0][0];
            }
            else
            {
                sut = 0;
            }
            
            float urs=float.Parse(txtEnterFeesForUnitLeader.Text);
            float total = (ulName + sut)*urs;
            int mtotal=sName+ulName+sut;
            float rtotal=t1+total;
            String query = "INSERT INTO UnitInformation (UnitType, TotalUnits, TotalStudent, StudentRegistrationFees, StudentTotalFees, TotalUnitLeader, TotalSupportingLeader, UnitLeaderRegistrationFees, UnitLeaderTotalFees, TotalMembers, TotalFees, Year)  VALUES('" + uType + "'," + uName + "," + sName + "," + rf + "," + t1 + "," + ulName + "," + sut + "," + urs + "," + total + "," + mtotal + "," + rtotal + ",'" + Year + "')";
            SqlDataSource6.InsertCommand = query;
            int n=SqlDataSource6.Insert();
        }
        Response.Write("<script>alert('Data inserted successfully...')</script>");
        CleartextBoxes(this);
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