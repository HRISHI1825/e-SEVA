using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StarryNightMoving_StarryNightMoving_LoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataView d1 = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
        DataView d2 = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
        DataView d4 = (DataView)SqlDataSource3.Select(new DataSourceSelectArguments());
        DataView d3 = (DataView)SqlDataSource4.Select(new DataSourceSelectArguments());
        DataView d5 = (DataView)SqlDataSource5.Select(new DataSourceSelectArguments());
        DataView dv = (DataView)Sqlds.Select(new DataSourceSelectArguments());
        if (d1.Count != 0 && d2.Count==0)
        {
            Session.Add("SchoolName", d3[0][4]);
            Session.Add("UnitName", d3[0][3]);
            Session.Add("Year", d3[0][1]);
            Session.Add("UnitType", d3[0][2]);
            Session.Add("EmailId", d3[0][5]);
            Session.Add("pwd", d3[0][6]);
            Session.Add("SchoolType", d3[0][0]);
            Server.Transfer("admission2.aspx");
        }
        else if(d2.Count!=0 && d4.Count==0)
        {
            Session.Add("SchoolName", d3[0][4]);
            Session.Add("UnitName", d3[0][3]);
            Session.Add("Year", d3[0][1]);
            Session.Add("UnitType", d3[0][2]);
            Session.Add("EmailId", d3[0][5]);
            Session.Add("pwd", d3[0][6]);
            Server.Transfer("admission3.aspx");
        
        }
        else if(d4.Count!=0 && dv.Count==0)
        {
            Server.Transfer("RegistrationFormPrint.aspx");
        }

        else if (txtUsername.Text == "admin" && txtPwd.Text == "admin")
        {
            Server.Transfer("Authentication.aspx");
        }

        else if (d5.Count == 1)
        {
            Session.Add("District", d5[0][0]);
            Server.Transfer("Admin2.aspx");
        }
        else
        {
            if (dv.Count == 1)
            {
                if (dv[0][0] != DBNull.Value)
                {
                    DataView dv1 = (DataView)SqldsYear.Select(new DataSourceSelectArguments());
                    String y = (String)dv1[0][0];
                    String s1 = y.Substring(0, 4);
                    String s = y.Substring(4);
                    String y1 = (String)DateTime.Today.Year.ToString();
                    String n = y1.Insert(4, s);
                    if (y1 != s1)
                    {
                        int year1 = int.Parse(s1) + 1;
                        int year = int.Parse(y1);
                        DateTime n1 = new DateTime(year, 3, 31);
                        if (year == year1)
                        {
                            if (DateTime.Today.Month.ToString() == n1.Month.ToString() && DateTime.Today.Date.ToString() == n1.Date.ToString())
                            {

                                Response.Write("<script>alert('Login Successfully...')</script>");
                                HttpCookie c1, c2;
                                c1 = new HttpCookie("userid", txtUsername.Text);
                                c2 = new HttpCookie("pwd", txtPwd.Text);
                                c1.Expires = DateTime.Now.AddYears(1);
                                c2.Expires = DateTime.Now.AddYears(1);

                                Response.AppendCookie(c1);
                                Response.AppendCookie(c2);

                                Server.Transfer("Schooldashboard.aspx");
                                Session.Add("EmailId", txtUsername.Text);
                                Session.Add("pwd", txtPwd.Text);
                            }
                            else
                            {
                                Response.Write("<script>alert('Your EmailId or Password has been expired...please register again')</script>");
                                return;
                            }

                        }

                    }
                    else
                    {
                        if (y == n)
                        {
                            Response.Write("<script>alert('Login Successfully...')</script>");
                            HttpCookie c1, c2;
                            c1 = new HttpCookie("userid", txtUsername.Text);
                            c2 = new HttpCookie("pwd", txtPwd.Text);
                            c1.Expires = DateTime.Now.AddYears(1);
                            c2.Expires = DateTime.Now.AddYears(1);

                            Response.AppendCookie(c1);
                            Response.AppendCookie(c2);

                            Server.Transfer("Schooldashboard.aspx");
                            Session.Add("EmailId", txtUsername.Text);
                            Session.Add("pwd", txtPwd.Text);
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password...')</script>");
                }
            }
        }
    }
}
    