using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admission1 : System.Web.UI.Page
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
        HiddenField1.Value = txtYear.Text + "-" + txtYear1.Text;
        HiddenField2.Value = txtSchoolName.Text + "," + txtPinCode.Text;
        HiddenField3.Value = "Not Activated";
        try
        {
            DataView dv = (DataView)Sqlds.Select(new DataSourceSelectArguments());
            if (dv.Count == 0)
            {
                int n = SqldsSchooldata.Insert();
                if (n == 1)
                {
                    Session.Add("SchoolName", HiddenField2.Value);
                    Session.Add("UnitName", txtUnitName.Text);
                    Session.Add("Year", HiddenField1.Value);
                    Session.Add("UnitType", ddl1.SelectedValue);
                    Session.Add("EmailId", txtEmailId.Text);
                    Session.Add("pwd", txtpwd.Text);
                    Session.Add("SchoolType", DropDownList1.SelectedValue);
                    Response.Write("<script>alert('Please fill up your Members Details..')</script>");
                    CleartextBoxes(this);
                    Server.Transfer("admission2.aspx");

                }

                else
                {
                    Response.Write("<script>alert('Please fill the form Correctly')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('User Already exists...Please Choose Different Password.')</script>");
                return;
            }


           
               
        }
        catch(Exception er)
        {
            Response.Write(er.Message);
        }
   }
}
