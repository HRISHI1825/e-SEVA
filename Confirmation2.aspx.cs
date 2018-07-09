using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Confirmation2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            DropDownList2.DataBind();
            DropDownList1.DataBind();
            
        }

        String Year = DropDownList2.SelectedValue;
        String utype = DropDownList1.SelectedValue;

        String Sql = "Select Sum(Students), Sum(UnitLeader), Sum(Total), Sum(TotalRs) from Confirmation where UnitType='" + utype + "' AND Year='" + Year + "'";
        SqlDataSource3.SelectCommand = Sql;
        DataView dv = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
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
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        String Year = DropDownList2.SelectedValue;
        String utype = DropDownList1.SelectedValue;
        String Sql = "Select Sum(Students), Sum(UnitLeader), Sum(Total), Sum(TotalRs) from Confirmation where UnitType='" + utype + "' AND Year='" + Year + "'";
        SqlDataSource3.SelectCommand = Sql;
        DataView dv = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
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
        
    }
}