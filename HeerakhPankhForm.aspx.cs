using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HeerakhPankh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        HiddenField1.Value = "Not Qualified";
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsHeerakPankh.Insert();
            if (n == 1)
            {
                string ppath = Server.MapPath("SignatureOfFlockLeader");
                string upath = Server.MapPath("SignatureOfBulbul");
                fuSignatureOfFlockLeader.SaveAs(ppath + "\\" + fuSignatureOfFlockLeader.FileName);
                fuSignatureOfBulbul.SaveAs(upath + "\\" + fuSignatureOfBulbul.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                Server.Transfer("HeerakPankhFormPrintForUser.aspx?NameOfTheBulbul'" + txtNameOfTheBulbul.Text + "'");
                txtAddress.Text = "";
                txtAddressOfTheGroup.Text = "";
                txtCertificateNo.Text = "";
                txtDate.Text = "";
                txtDateOfBirth.Text = "";
                txtDateOfCompletionOfHeerakPankh.Text = "";
                txtDateOfCompletionOfKomalPankh.Text = "";
                txtDateOfCompletionOfPravesh.Text = "";
                txtDateOfCompletionOfRajatPankh.Text = "";
                txtDateOfCompletionOfSuvarnaPankh.Text = "";
                txtDateOfInvestiture.Text = "";
                txtDateOfJoiningBulbul.Text = "";
                txtDist.Text = "";
                txtNameOfTheBulbul.Text = "";
                txtNameofTheDistrict.Text = "";
                txtNameOfTheFlockLeader.Text = "";
                txtNameOfTheGroup.Text = "";
                txtNameOfTheProficencyBadgeEarned.Text = "";
                txtNameOfTheProficencyBadgeEarned1.Text = "";
                txtPinCode.Text = "";
                txtWarrentNo.Text = "";
       
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