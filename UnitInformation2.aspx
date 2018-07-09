<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UnitInformation2.aspx.cs" Inherits="UnitInformation2" %>

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
            width: 61px;
        }
        .style2
        {
            width: 73px;
        }
        .style3
        {
            width: 75px;
        }
        .style4
        {
            width: 87px;
        }
        .style5
        {
            width: 97px;
        }
        .style6
        {
            width: 76px;
        }
        .style7
        {
            width: 88px;
        }
        .style8
        {
            width: 123px;
        }
        .style9
        {
            width: 146px;
        }
        .style10
        {
            width: 105px;
        }
        .style11
        {
            width: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
<fieldset>
<div class="jumbotron">
<center><h2>AMRAVATI BHARAT SCOUTS AND GUIDES DISTRICT OFFICE, AMRAVATI<br />Unit Registration Information<br /></h2>
  <h4> YEAR 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="DropDownList1" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
            - 
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Year" DataValueField="Year" AppendDataBoundItems="true"
          ForeColor="Black" onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
          <asp:ListItem>--Select Year--</asp:ListItem>
    </asp:DropDownList> 
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Year] FROM [UnitInformation]">
    </asp:SqlDataSource>
    </h4></center>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%">
    <HeaderTemplate>
     <table width="100%">
    <tr> 
    <th style=" border-collapse:collapse" align="center" class="style2">
        <asp:Label ID="lblSection" runat="server" Text="Section"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style3">
        <asp:Label ID="TotalUnits" runat="server" Text="Total Units" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style4">
        <asp:Label ID="TotalStudents" runat="server" Text="Total Students" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style5">
        <asp:Label ID="lblRegistrationFeesForStudent" runat="server" Text="Reg. Fees For Student" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style6">
        <asp:Label ID="lblTotalFees" runat="server" Text="Total Fees" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style7">
        <asp:Label ID="lblTotalUnitLeaders" runat="server" Text="Total Unit Leaders" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style8">
        <asp:Label ID="lblTotalSupportingUnitLeaders" runat="server" Text="Total Supporting Unit Leaders" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style9">
        <asp:Label ID="lblRegistrationFeesForUnitLeader" runat="server" Text="Registration Fees For Unit Leader" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style10">
        <asp:Label ID="lblUnitLeaderTotalFees" runat="server" Text="Unit Leader Total Fees" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style11">
        <asp:Label ID="lblTotalMembers" runat="server" Text="Total Members" CssClass=" control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center">
        <asp:Label ID="lblStudentandUnitLeaderTotalRegistrationFees" runat="server" Text="Student and Unit Leader Total Registration Fees" CssClass=" control-label"></asp:Label>
    </th>
    </tr>
   </table>
    </HeaderTemplate>
    <ItemTemplate>
    <table width="100%">
    
    <tr>
    <td style=" border-collapse:collapse" align="center" class="style2">
        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("UnitType") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style3">
        <asp:Label ID="lbl2" runat="server" Text='<%#Eval("TotalUnits") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style4">
        <asp:Label ID="lbl3" runat="server" Text='<%#Eval("TotalStudent") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style5">
     <asp:Label ID="lbl4" runat="server" Text='<%#Eval("StudentRegistrationFees") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style6">
     <asp:Label ID="lbl5" runat="server" Text='<%#Eval("StudentTotalFees") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style7">
     <asp:Label ID="lbl6" runat="server" Text='<%#Eval("TotalUnitLeader") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style8" width="90px">
     <asp:Label ID="lbl7" runat="server" Text='<%#Eval("TotalSupportingLeader") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style9">
     <asp:Label ID="lbl8" runat="server" Text='<%#Eval("UnitLeaderRegistrationFees") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style10">
     <asp:Label ID="lbl9" runat="server" Text='<%#Eval("UnitLeaderTotalFees") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style11">
     <asp:Label ID="lbl10" runat="server" Text='<%#Eval("TotalMembers") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" >
     <asp:Label ID="lbl11" runat="server" Text='<%#Eval("TotalFees") %>' CssClass="control-label"></asp:Label>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [UnitType], [TotalUnits], [TotalStudent], [StudentRegistrationFees], [StudentTotalFees], [TotalUnitLeader], [TotalSupportingLeader], [UnitLeaderRegistrationFees], [UnitLeaderTotalFees], [TotalMembers], [TotalFees] FROM [UnitInformation] WHERE ([Year] = @Year)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table width="100%">
    <tr>
    <td style=" border-collapse:collapse" align="center" class="style2">
        <asp:Label ID="Label1" runat="server" Text="Total"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style3">
        <asp:Label ID="Label2" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style4">
        <asp:Label ID="Label3" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style5">
     <asp:Label ID="Label4" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style6">
     <asp:Label ID="Label5" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style7">
     <asp:Label ID="Label6" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style8">
     <asp:Label ID="Label7" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style9">
     <asp:Label ID="Label8" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style10">
     <asp:Label ID="Label9" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style11">
     <asp:Label ID="Label10" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center">
     <asp:Label ID="Label11" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    </tr>
    </table>
    <input type="button" value="Print" onclick="window.print()"  class="btn btn-primary"/>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
    </div>
    </fieldset>

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
             Font-Size="Large" ForeColor="#0099FF" 
             NavigateUrl="~/UnitInformation1.aspx">Back</asp:HyperLink></center>
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
