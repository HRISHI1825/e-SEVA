<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnnualReport.aspx.cs" Inherits="AnnualReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="themes2/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes2/carbon.js" type="text/javascript"></script>
    <script src="themes2/custom.js" type="text/javascript"></script>
    <link href="themes2/custom.min.css" rel="stylesheet" type="text/css" />
    <script src="themes2/gsd.js" type="text/javascript"></script>
    <script src="themes2/ga.js" type="text/javascript"></script>
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script><style type="text/css">
        .style1
        {
            width: 967px;
        }
        .style2
        {
            width: 137px;
        }
                                                                                   .style3
                                                                                   {
                                                                                       width: 148px;
                                                                                   }
                                                                                   .style4
                                                                                   {
                                                                                       width: 147px;
                                                                                   }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
 <center>
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Annual Reports</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/newannualreport.aspx" 
                  ToolTip="Enter New Annual Report" Width="60px" /></td>
          </tr>
    </table>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset>
    <center>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqldsAnnualReport">
    <HeaderTemplate>
    <table  cellpadding="2" cellspacing="2" class="table-hover" style="border-collapse:collapse">
 <tr>
     <th style="border-collapse:collapse" class="style3" align="center" >
     <asp:Label ID="lblYear" runat="server" Text="Year" CssClass="control-label"></asp:Label>
     </th>
     <th style="border-collapse:collapse" class="style4" align="right">
     <asp:Label ID="lblReports" runat="server" Text="Reports" CssClass="control-label"></asp:Label>
     </th></tr>
 </table>
    </HeaderTemplate>
 <ItemTemplate >
 <table  cellpadding="2" cellspacing="2" class="table-hover" style="border-collapse:collapse">
 <tr>
 <td style="border-collapse:collapse" class="style3"><asp:label ID="lblYear1" runat="server" Text='<%#Eval("Year") %>' CssClass="control-label"></asp:label></td>
 <td style="border-collapse:collapse" class="style4" align="center"><a href='AnnualReports/<%#Eval("Report") %>'><asp:Label ID="lblReport" runat="server" Text="Report" CssClass="col-lg-3 control-label"></asp:Label></a></td>
 </tr>
 </table>
 </ItemTemplate>
 <SeparatorTemplate>
    <hr width="1px" />
    </SeparatorTemplate>
        </asp:Repeater>
        </center>
        <asp:SqlDataSource ID="sqldsAnnualReport" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Year], [Report] FROM [Office] WHERE ([Year] IS NOT NULL)"></asp:SqlDataSource>
    </fieldset>
    </div>

    <hr />
    <center>
        <div>
    <table style="height:113px;">
    <tr><td rowspan="2" width="107px" align="center">
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
    </form>
</body>
</html>
