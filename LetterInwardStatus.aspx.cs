using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LetterInwardStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = "False";
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected == true)
            {
                String sql = "update InwardLetters set InwardStatus=True WHERE InwardNo='" + li.Text + "'";
                SqlDataSource2.UpdateCommand = sql;
                int n = SqlDataSource2.Update();
                
            }
        }

    }
}