﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RajyaPuraskarGuideListOfCandidates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected == true)
            {
                String sql = "update RajyaPuraskarGuide set Status='Pass' WHERE NameOfTheGuide='" + li.Text + "'";
                SqlDataSource1.UpdateCommand = sql;
                int n = SqlDataSource1.Update();
            }
        }
    }
}