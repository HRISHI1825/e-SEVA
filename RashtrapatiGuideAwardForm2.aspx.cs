using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RashtrapatiGuideAwardForm2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
           int n=SqlDataSource1.Insert();
           if (n == 1)
           {
               string SignOfGuide = Server.MapPath("RashtrapatiGuideAwardFormSignatureOfGuide");
               string SignOfGuideCaptain= Server.MapPath("RashtrapatiGuideAwardForm2SignatureOfGuideCaptain");
               fuSignatureOfGuide.SaveAs(SignOfGuide  + "\\" + fuSignatureOfGuide.FileName);
               fuSignatureOfGuideCaptain.SaveAs(SignOfGuideCaptain + "\\" + fuSignatureOfGuideCaptain.FileName);
           //    Session.Add("NameOfGuide", txtNameofGuide.Text);
               Response.Write("<script>alert('Data Inserted Successfully')</script>");
               Server.Transfer("RashtrapatiScoutAwardForm2.aspx");
               
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
