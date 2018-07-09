﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RajyaPuraskarScout02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        try
        {
            int n = SqldsRajyaPuraskar.Update();
            if (n == 1)
            {
                string SignatureOfScout = Server.MapPath("RajyaPuraskarSignatureOfScout");
                string SignatureOfScouter = Server.MapPath("RajyaPuraskarSignatureOfScouter");
                fuSignatureOfScout.SaveAs(SignatureOfScout + "\\" + fuSignatureOfScout.FileName);
                fuSignatureOfScouter.SaveAs(SignatureOfScout + "\\" + fuSignatureOfScouter.FileName);
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
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