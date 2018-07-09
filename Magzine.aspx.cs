using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Magzine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = "Yes";
       
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected == true)
            {
                String sql = "update SchoolTable set CheckedMagzine='Paid' WHERE SchoolName='" + li.Text + "' AND Year='" + DropDownList1.SelectedValue + "'";
                SqlDataSource1.UpdateCommand = sql;
                int n = SqlDataSource1.Update();
            }
        }
        Response.Write("<script>alert('Schools Added Successfully...')</script>");
    }
}