using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = "False";
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        String Year = DropDownList1.SelectedValue;
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected == true)
            {
                String sql = "update Confirmation set Checked='True' WHERE UnitName='" + li.Text + "' AND Year='" + Year + "'";
                SqlDataSource2.UpdateCommand = sql;
                int n = SqlDataSource2.Update();
                if (n == 1)
                {
                    String sql1 = "update SchoolTable set Checked='True' WHERE UnitName='" + li.Text + "' AND Year='" + Year + "'";
                    SqlDataSource3.UpdateCommand = sql1;
                    int nm = SqlDataSource3.Update();
                }

            }
        }
        Server.Transfer("Confirmation1.aspx");
    }
}