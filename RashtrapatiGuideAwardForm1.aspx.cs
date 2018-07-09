using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RashtrapatiGuideAwardForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        
    protected void btn2_Click(object sender, EventArgs e)
    {
         try
        {
           int n=SqlDataSource1.Insert();
           if (n == 1)
           {
               string photo = Server.MapPath("RashtrapatiGuideAwardForm1Photo");
               FUPhoto.SaveAs(photo + "\\" + FUPhoto.FileName);
               string signofDistCommG = Server.MapPath("RashtrapatiGuideAwardForm1SignofDistCommG");
               fuSignatureOfDistrictCommissioner.SaveAs(signofDistCommG + "\\" + fuSignatureOfDistrictCommissioner.FileName);
               string signofDistComm = Server.MapPath("RashtrapatiGuideAwardForm1SignofDistComm");
               fuSignatureOfDisttCommissioner.SaveAs(signofDistComm + "\\" + fuSignatureOfDisttCommissioner.FileName);
               string SignofGuideCaptain = Server.MapPath("RashtrapatiGuideAwardForm1SignofGuideCaptain");
               fuSignatureOfGuideCaptain.SaveAs(SignofGuideCaptain + "\\" + fuSignatureOfGuideCaptain.FileName);
               string  SignofApplicant= Server.MapPath("RashtrapatiGuideAwardForm1SignofApplicant");
               fuSignatureOfApplicant.SaveAs(SignofApplicant + "\\" + fuSignatureOfApplicant.FileName);
               string SignofStateOrgCommG = Server.MapPath("RashtrapatiGuideAwardForm1SignofStateOrgCommG");
               fuSignStateOrgCommG.SaveAs(SignofStateOrgCommG + "\\" + fuSignStateOrgCommG.FileName);
               string SignofStateSec = Server.MapPath("RashtrapatiGuideAwardForm1SignofStateSec");
               fuSignStateSecretary.SaveAs(SignofApplicant + "\\" + fuSignStateSecretary.FileName);
              
               Session.Add("NameOfGuide", txtNameofGuide.Text);
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

