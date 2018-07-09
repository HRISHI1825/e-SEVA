using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RajyaPuraskarScout1 : System.Web.UI.Page
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
                string photo = Server.MapPath("RajyaPuraskarScoutCandidatePhoto");
                string dobCertificate = Server.MapPath("RajyaPuraskarScoutCandidateDOBCertificate");
                string SignatureOfScoutMaster = Server.MapPath("RajyaPuraskarSignatureOfScoutMaster");
                string SignatureOfApplicant = Server.MapPath("RajyaPuraskarScoutSignatureOfApplicant");
                string SignatureOfDistrictOrganisor = Server.MapPath("RajyaPuraskarSignatureOfDistrictOrganisor");
                string SignatureOfDistrictSecretary = Server.MapPath("RajyaPuraskarScoutSignatureOfDistrictSecretary");
                fuphoto.SaveAs(photo + "\\" + fuphoto.FileName);
                fuDateOfBirthCertificate.SaveAs(dobCertificate + "\\" + fuDateOfBirthCertificate.FileName);
                fuSignatureOfScoutMaster.SaveAs(SignatureOfScoutMaster + "\\" + fuSignatureOfScoutMaster.FileName);
                fuSignatureOfApplicant.SaveAs(SignatureOfApplicant + "\\" + fuSignatureOfApplicant.FileName);
                fuSignatureOfDistrictOrganisor.SaveAs(SignatureOfDistrictOrganisor + "\\" + fuSignatureOfDistrictOrganisor.FileName);
                fuSignatureOfDistrictSecretary.SaveAs(SignatureOfDistrictSecretary + "\\" + fuSignatureOfDistrictSecretary.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                Server.Transfer("RajyaPuraskarScout2.aspx?NameOfTheScout='" + txtNameOfTheScout.Text + "'");
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