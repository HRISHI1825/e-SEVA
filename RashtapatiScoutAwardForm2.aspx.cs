using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RashtapatiScoutAwardForm2 : System.Web.UI.Page
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
               string SignOfGuide = Server.MapPath("RashtrapatiScoutAwardFormSignatureofScout");
               string SignOfGuideCaptain= Server.MapPath("RashtrapatiScoutAwardForm2SignatureofScoutMaster");
               fuSignatureofScout.SaveAs(SignOfGuide  + "\\" + fuSignatureofScout.FileName);
               fuSignatureofScoutMaster.SaveAs(SignOfGuideCaptain + "\\" + fuSignatureofScoutMaster.FileName);
           //    Session.Add("NameOfScout", txtNameofScout.Text);
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
