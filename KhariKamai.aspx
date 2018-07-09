<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KhariKamai.aspx.cs" Inherits="KhariKamai" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 49px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
       <center> <table width="100%">
    <tr><td class="style1"></td><td align="center">
          <h1>Khari Kamai Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/kharikamai1.aspx" 
                  ToolTip="Enter New Khari Kamai Information" Width="60px" /></td>
          </tr>
    </table>
        </center>
        </div>        
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div  class="jumbotron">
<fieldset>
<div class="form-group">
    <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Year" DataValueField="Year" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable] WHERE ([Year] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>
<div class="form-group">
    <asp:Label ID="lblSchoolName" runat="server" Text="Select School Name" CssClass="col-lg-3 control-label"></asp:Label>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
            DataTextField="SchoolName" DataValueField="SchoolName" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT DISTINCT SchoolName FROM SchoolTable WHERE (Year = @Year) AND (SchoolName IS NOT NULL)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div></div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlUnitNames" Width="100%">
        <ItemTemplate>
      <div class="form-group"><div class="col-lg-5">
            <a href='KhariKamai2.aspx?UnitName=<%# Eval("UnitName") %>&Year=<%#Eval("Year") %>'><asp:Label ID="UnitNameLabel" runat="server" Text='<%# Eval("UnitName") %>' CssClass="col-lg-9 control-label" /></a>
       </div></div>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr width="1px" />
        </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlUnitNames" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [UnitName], [Year] FROM [SchoolTable] WHERE (([SchoolName] = @SchoolName) AND ([Year] = @Year))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
