<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 190px;
        }
        .style2
        {
            width: 168px;
        }
        .style3
        {
            width: 180px;
        }
        .style4
        {
            width: 129px;
        }
        .style5
        {
            width: 106px;
        }
    </style>
    
</head>
<body>
<div class="jumbotron">
 <center>
    <h1>List of Schools and Units</h1>
 </center>
    </div>      
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div  class="jumbotron">
<form id="form1" runat="server" class="form-horizontal">
<fieldset>
<div class="form-group">
    <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Year" DataValueField="Year" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable] WHERE ([Year] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>
<div class="form-group">
    <asp:Label ID="lblSelectTaluka" runat="server" Text="Select Taluka" CssClass="col-lg-3 control-label"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" 
        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="Taluka" DataValueField="Taluka" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT DISTINCT Taluka FROM SchoolTable WHERE (Year = @Year) AND (Taluka IS NOT NULL)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div></div>
<div class="form-group">
    <asp:Label ID="lblSelectSection" runat="server" Text="Select Section" CssClass="col-lg-3 control-label"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" 
        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" 
            DataTextField="UnitType" DataValueField="UnitType" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT DISTINCT UnitType FROM SchoolTable WHERE (Year = @Year) AND (Taluka = @Taluka) AND (UnitType IS NOT NULL)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="Taluka" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div></div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource4" Width="100%">
    <HeaderTemplate>
    <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
        <tr>
        <th style=" border-collapse:collapse" class="style1">
            <asp:Label ID="lblSchoolName" runat="server" Text="School Name" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style2">
            <asp:Label ID="lblUnitName" runat="server" Text="Unit Name" CssClass=" control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style3">
            <asp:Label ID="lblCharterNo" runat="server" Text="Charter No." CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style3">
            <asp:Label ID="lblWarrantNo" runat="server" Text="Warrant No." CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style4">
            <asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style5">
            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse" class="style5">
            <asp:Label ID="lblStatus" runat="server" Text="Status" CssClass="control-label"></asp:Label>
        </th>
        <th style=" border-collapse:collapse">
            <asp:Label ID="lblDetails" runat="server" Text="Details" CssClass="control-label"></asp:Label>
        </th>
        </tr></table>
            </HeaderTemplate>
        <ItemTemplate>
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
        <tr>
        <td style=" border-collapse:collapse" class="style1">
        <asp:Label ID="SchoolNameLabel" runat="server" 
                Text='<%# Eval("SchoolName") %>' CssClass="control-label" />
            
        </td>
        <td style=" border-collapse:collapse" class="style2">
        <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Eval("UnitName") %>' CssClass="control-label" />
            
        </td>
        <td style=" border-collapse:collapse" class="style3">
        <asp:Label ID="CharterNoLabel" runat="server" Text='<%# Eval("CharterNo") %>' CssClass="control-label" />
            
        </td>
        <td style=" border-collapse:collapse" class="style3">
         <asp:Label ID="WarrantNoLabel" runat="server" Text='<%# Eval("WarrantNo") %>' CssClass="control-label" />
           
        </td>
        <td style=" border-collapse:collapse" class="style4">
         <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' CssClass="control-label" />
           
        </td>
        <td style=" border-collapse:collapse" class="style5">
         <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' CssClass="control-label" />
           
        </td>
        <td style=" border-collapse:collapse" class="style5">
         <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' CssClass="control-label" />
           
        </td>
        <td style=" border-collapse:collapse">
        <a href='RegistrationFormPrintOffice.aspx?EmailId=<%#Eval("EmailId") %>&pwd=<%#Eval("Password") %>'>
            <asp:Label ID="lblDetail" runat="server" Text="Click To See" CssClass="control-label"></asp:Label></a>
        </td>
        <td style="border-collapse:collapse">
        <a href='DeleteSchools.aspx?EmailId=<%#Eval("EmailId") %>&pwd=<%#Eval("Password") %>'>
            <asp:Label ID="Label1" runat="server" Text="Delete" CssClass="control-label"></asp:Label></a>
        </td>
        </tr>
        </table>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr width="1px" />
        </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        
        SelectCommand="SELECT SchoolName, UnitName, CharterNo, WarrantNo, EmailId, Password, Status FROM SchoolTable WHERE (Year = @Year) AND (Taluka = @Taluka) AND (UnitType = @UnitType)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Taluka" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="UnitType" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    </div>
    </body>
    </html>
