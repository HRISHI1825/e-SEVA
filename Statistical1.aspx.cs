using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Statistical1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String y = "select DISTINCT [Year] from SchoolTable";
        SqlDataSource9.SelectCommand = y;
        DataView dv = (DataView)SqlDataSource9.Select(new DataSourceSelectArguments());
        for (int i = 0; i < dv.Count; i++)
        {
            if (dv[i][0] != DBNull.Value)
            {
                String year = (String)dv[i][0];

                String sql1 = "select count(UnitName) from SchoolTable where UnitType='Cub' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource1.SelectCommand = sql1;
                DataView dv1 = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
                int cub = (int)dv1[0][0];

                String sql2 = "select count(UnitName) from SchoolTable where UnitType='Scout' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource2.SelectCommand = sql2;
                DataView dv2 = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
                int scout = (int)dv2[0][0];

                String sql3 = "select count(UnitName) from SchoolTable where UnitType='Rover' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource3.SelectCommand = sql3;
                DataView dv3 = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
                int rover = (int)dv3[0][0];

                String sql4 = "select count(UnitName) from SchoolTable where UnitType='Bulbul' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource4.SelectCommand = sql4;
                DataView dv4 = (DataView)SqlDataSource4.Select(new DataSourceSelectArguments());
                int bulbul = (int)dv4[0][0];

                String sql5 = "select count(UnitName) from SchoolTable where UnitType='Guide' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource5.SelectCommand = sql5;
                DataView dv5 = (DataView)SqlDataSource5.Select(new DataSourceSelectArguments());
                int guide = (int)dv5[0][0];

                String sql6 = "select count(UnitName) from SchoolTable where UnitType='Ranger' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource6.SelectCommand = sql6;
                DataView dv6 = (DataView)SqlDataSource6.Select(new DataSourceSelectArguments());
                int ranger = (int)dv6[0][0];

                String sql7 = "select count(UnitName) from SchoolTable where UnitType='Bunny' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource7.SelectCommand = sql7;
                DataView dv7 = (DataView)SqlDataSource7.Select(new DataSourceSelectArguments());
                int bunny = (int)dv7[0][0];

                int total = cub + scout + rover + bulbul + guide + ranger + bunny;

                String sql9 = "select count(StudFullName) from StudentTable where UnitType='Cub' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource9.SelectCommand = sql9;
                DataView dv9 = (DataView)SqlDataSource9.Select(new DataSourceSelectArguments());
                int cub1 = (int)dv9[0][0];

                String sql10 = "select count(StudFullName) from StudentTable where UnitType='Scout' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource10.SelectCommand = sql10;
                DataView dv10 = (DataView)SqlDataSource10.Select(new DataSourceSelectArguments());
                int scout1 = (int)dv10[0][0];

                String sql11 = "select count(StudFullName) from StudentTable where UnitType='Rover' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource11.SelectCommand = sql11;
                DataView dv11 = (DataView)SqlDataSource11.Select(new DataSourceSelectArguments());
                int rover1 = (int)dv11[0][0];

                String sql12 = "select count(StudFullName) from StudentTable where UnitType='Bulbul' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource12.SelectCommand = sql12;
                DataView dv12 = (DataView)SqlDataSource12.Select(new DataSourceSelectArguments());
                int bulbul1 = (int)dv12[0][0];

                String sql13 = "select count(StudFullName) from StudentTable where UnitType='Guide' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource13.SelectCommand = sql13;
                DataView dv13 = (DataView)SqlDataSource13.Select(new DataSourceSelectArguments());
                int guide1 = (int)dv13[0][0];

                String sql14 = "select count(StudFullName) from StudentTable where UnitType='Ranger' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource14.SelectCommand = sql14;
                DataView dv14 = (DataView)SqlDataSource14.Select(new DataSourceSelectArguments());
                int ranger1 = (int)dv14[0][0];

                String sql15 = "select count(StudFullName) from StudentTable where UnitType='Bunny' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource15.SelectCommand = sql15;
                DataView dv15 = (DataView)SqlDataSource15.Select(new DataSourceSelectArguments());
                int bunny1 = (int)dv7[0][0];

                int total1 = cub1 + scout1 + rover1 + bulbul1 + guide1 + ranger1 + bunny1;

                String sql16 = "select count(UnitName) from SchoolTable where Year='" + year + "' AND Status='Activated'";
                SqlDataSource16.SelectCommand = sql16;
                DataView dv16 = (DataView)SqlDataSource16.Select(new DataSourceSelectArguments());
                int unit = (int)dv16[0][0];

                String sql17 = "select SUM(khTotalContri) from SchoolTable where Year='" + year + "'";
                SqlDataSource17.SelectCommand = sql17;
                DataView dv17 = (DataView)SqlDataSource17.Select(new DataSourceSelectArguments());
                int amt;
                if (dv17[0][0] != DBNull.Value)
                {
                    amt = (int)dv17[0][0];
                }
                else
                {
                    amt = 0;
                }
                String sql18 = "select count(SchoolName) from SchoolTable where Year='" + year + "' AND Status='Activated'";
                SqlDataSource18.SelectCommand = sql18;
                DataView dv18 = (DataView)SqlDataSource18.Select(new DataSourceSelectArguments());
                int sch = (int)dv18[0][0];

                String sql19 = "select count(SchoolName) from SchoolTable where SchoolType='PrimarySchool' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource19.SelectCommand = sql19;
                DataView dv19 = (DataView)SqlDataSource19.Select(new DataSourceSelectArguments());
                int sch1 = (int)dv19[0][0];

                String sql20 = "select count(SchoolName) from SchoolTable where SchoolType='SecondarySchool' AND Year='" + year + "' AND Status='Activated'";
                SqlDataSource20.SelectCommand = sql20;
                DataView dv20 = (DataView)SqlDataSource20.Select(new DataSourceSelectArguments());
                int sch2 = (int)dv20[0][0];

                int total3 = sch1 + sch2;
                String update = "Select * from StatisticalData where Year='" + year + "'";
                SqlDataSource21.SelectCommand = update;
                DataView dv21 = (DataView)SqlDataSource21.Select(new DataSourceSelectArguments());
                if (dv21.Count!=0)
                {
                    String query="update StatisticalData set Cub="+cub+", Scout="+scout+", Rover="+rover+", Bulbul="+bulbul+", Guide="+guide+", Ranger="+ranger+", Bunny="+bunny+", Total="+total+", Cub1="+cub1+", Scout1="+scout1+", Rover1="+rover1+", Bulbul1="+bulbul1+", Guide1="+guide1+", Ranger1="+ranger1+", Bunny1="+bunny1+", Total1="+total1+", TotalUnits="+unit+", CollectedFees="+amt+", TotalParticipatedSchools="+sch+", PrimarySchool="+sch1+", SecondarySchool="+sch2+", TotalMembers="+total3+" where Year='"+year+"'";
                    SqlDataSource22.UpdateCommand = query;
                    int n = SqlDataSource22.Update();
                    
                }
                else
                {
                    String insert1 = "insert into StatisticalData (Year, Cub, Scout, Rover, Bulbul, Guide, Ranger, Bunny, Total, Cub1, Scout1, Rover1, Bulbul1, Guide1, Ranger1, Bunny1, Total1, TotalUnits, CollectedFees, TotalParticipatedSchools, PrimarySchool, SecondarySchool, TotalMembers) Values('" + year + "'," + cub + "," + scout + "," + rover + "," + bulbul + "," + guide + "," + ranger + "," + bunny + "," + total + "," + cub1 + "," + scout1 + "," + rover1 + "," + bulbul1 + "," + guide1 + "," + ranger1 + "," + bunny1 + "," + total1 + "," + unit + "," + amt + "," + sch + "," + sch1 + "," + sch2 + "," + total3 + ")";
                    SqlDataSource8.InsertCommand = insert1;
                    int n1 = SqlDataSource8.Insert();
                }
            }
        }
        Server.Transfer("Statistical2.aspx");
    }
}