using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RajyaPuraskarGuide1n : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsRajyaPuraskar.Insert();
            if (n == 1)
            {
                string photo = Server.MapPath("RajyaPuraskarGuideCandidatePhoto");
                string dobCertificate = Server.MapPath("RajyaPuraskarGuideCandidateDOBCertificate");
                string SignatureOfGuideCaptain = Server.MapPath("RajyaPuraskarSignatureOfGuideCaptain");
                string SignatureOfApplicant = Server.MapPath("RajyaPuraskarGuideSignatureOfApplicant");
                string SignatureOfDOC = Server.MapPath("RajyaPuraskarSignatureOfDOC");
                string SignatureOfDistrictSecretary = Server.MapPath("RajyaPuraskarGuideSignatureOfDistrictSecretary");
                fuphoto.SaveAs(photo + "\\" + fuphoto.FileName);
                fuDateOfBirthCertificate.SaveAs(dobCertificate + "\\" + fuDateOfBirthCertificate.FileName);
                fuSignatureOfGuideCaptain.SaveAs(SignatureOfGuideCaptain + "\\" + fuSignatureOfGuideCaptain.FileName);
                fuSignatureOfApplicant.SaveAs(SignatureOfApplicant + "\\" + fuSignatureOfApplicant.FileName);
                fuSignatureOfDOC.SaveAs(SignatureOfDOC + "\\" + fuSignatureOfDOC.FileName);
                fuSignatureOfDistrictSecretary.SaveAs(SignatureOfDistrictSecretary + "\\" + fuSignatureOfDistrictSecretary.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                Server.Transfer("RajyaPuraskarGuide2.aspx?NameOfTheGuide='" + txtNameOfTheGuide.Text + "'");
                CleartextBoxes(this);
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