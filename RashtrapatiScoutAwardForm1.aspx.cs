using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RashtrapatiScoutAwardForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqlDsRastraptiScout1.Insert();
            if (n == 1)
            {
                string photo = Server.MapPath("RashtrapatiScoutAwardForm1Photo");
                fuPhoto.SaveAs(photo + "\\" + fuPhoto.FileName);
                string signofDistCommS = Server.MapPath("RashtrapatiScoutAwardForm1SignofDistCommS");
                fuSignatureOfDistrictCommissioner.SaveAs(signofDistCommS + "\\" + fuSignatureOfDistrictCommissioner.FileName);
                string signofDistComm = Server.MapPath("RashtrapatiScoutAwardForm1SignofDistComm");
                fuSignatureOfDisttCommissioner.SaveAs(signofDistComm + "\\" + fuSignatureOfDisttCommissioner.FileName);
                string SignofScoutMaster = Server.MapPath("RashtrapatiScoutAwardForm1SignofScoutMaster");
                fuSignofScoutMaster.SaveAs(SignofScoutMaster + "\\" + fuSignofScoutMaster.FileName);
                string SignofApplicant = Server.MapPath("RashtrapatiGuideScoutForm1SignofApplicant");
                fuSignofApplicant.SaveAs(SignofApplicant + "\\" + fuSignofApplicant.FileName);
                string SignofStateOrgCommS = Server.MapPath("RashtrapatiScoutAwardForm1SignofStateOrgCommS");
                fuSignStateOrgCommS.SaveAs(SignofStateOrgCommS + "\\" + fuSignStateOrgCommS.FileName);
                string SignofStateSec = Server.MapPath("RashtrapatiScoutAwardForm1SignofStateSec");
                fuSignStateSecretary.SaveAs(SignofApplicant + "\\" + fuSignStateSecretary.FileName);

                Session.Add("NameOfScout", txtNameofScout.Text);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                Server.Transfer("RashtrapatiGuideAwardForm2.aspx");

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