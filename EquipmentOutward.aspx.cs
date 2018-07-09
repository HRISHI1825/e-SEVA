using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Equipment_Outward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsOutwardEquip.Insert();
            if (n == 1)
            {
                int a = SqlDataSource1.Update();
                if (a == 1)
                {
                    Response.Write("<script>alert('Data Inserted Successfully')</script>");
                    txtBillNo.Text = "";
                    txtDate.Text = "";
                    txtDescription.Text = "";
                    txtEquipmentName.Text = "";
                    txtPrice.Text = "";
                    txtPricePs.Text = "";
                    txtPricePs1.Text = "";
                    txtQuantity.Text = "";
                    txtTotalPrice.Text = "";

                }
                else
                {
                    Response.Write("<script>alert('Please enter correct details..')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please fill the form Correctly')</script>");
            }
        }
        catch (Exception er)
        {
            Response.Write(er.Message);
        }
    }
}