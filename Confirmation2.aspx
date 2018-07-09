<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation2.aspx.cs" Inherits="Confirmation2" %>

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
            width: 771px;
        }
        .style2
        {
            width: 253px;
        }
        .style3
        {
            width: 103px;
        }
        .style4
        {
            width: 124px;
        }
        .style5
        {
            width: 261px;
        }
        .style6
        {
            width: 116px;
        }
        .style8
        {
            width: 204px;
        }
        .style10
        {
            width: 402px;
        }
        .style11
        {
            width: 412px;
            height: 28px;
        }
        .style12
        {
            height: 28px;
        }
        .style14
        {
            width: 402px;
            height: 28px;
        }
        .style15
        {
            width: 331px;
            height: 28px;
        }
        .style16
        {
            width: 331px;
        }
        .style17
        {
            width: 329px;
        }
        .style18
        {
            width: 412px;
        }
        .style19
        {
            width: 442px;
        }
        .style21
        {
            width: 656px;
        }
        .style22
        {
            width: 241px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
<fieldset>
<div class="jumbotron">
<center><h3>MAHARASHTRA STATE BHARAT SCOUTS AND GUIDE<br /></h3><h4>YEAR - 
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="Year" DataValueField="Year" 
        CssClass="dropdown" ForeColor="Black" AutoPostBack="True">
    </asp:DropDownList>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Year] FROM [Confirmation]">
    </asp:SqlDataSource>
    &nbsp;</h4><br /><h4>Unit Reg. Information Sheet</h4></center>
    <table width="100%">
    <tr><td class="style1"><h4>District:- Amravati</h4></td><td>Section:- 
        <asp:DropDownList ID="DropDownList1" runat="server" 
             ForeColor="Black" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UnitType" 
            DataValueField="UnitType">
            
        </asp:DropDownList>&nbsp
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [UnitType] FROM [Confirmation] WHERE ([Year] = @Year)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td></tr>
    </table>
    <hr />
    <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
    <tr>
    <th style=" border-collapse:collapse" class="style11" >
        <asp:Label ID="lblUnitRegInformationSheet" runat="server" Text="Unit Reg. Information Sheet" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" colspan="2" class="style12" >
    <asp:Label ID="lblMembersStength" runat="server" Text="Member's Strength" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" class="style15" >
    <asp:Label ID="lblTotalMembers" runat="server" Text="Students + Unit Leader Total" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" class="style14">
    <asp:Label ID="lblTotalRs" runat="server" Text="State Organisation Registration Fees" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" class="style12" >
        <asp:Label ID="lblChecked" runat="server" Text="Checked" CssClass="control-label"></asp:Label>
        </th>
    </tr>
    <tr>
    <td style=" border-collapse:collapse" class="style18"></td>
    <th style=" border-collapse:collapse" align="center" class="style6" >
    <asp:Label ID="lblStudents" runat="server" Text="Students" CssClass="control-label"></asp:Label>
    </th>
    <th style=" border-collapse:collapse" align="center" class="style17" >
    <asp:Label ID="lblUnitLeader" runat="server" Text="Unit Leader" CssClass="control-label"></asp:Label>
    </th>
     <td style=" border-collapse:collapse" class="style16"></td>
    <th style=" border-collapse:collapse" class="style10" >
    <asp:Label ID="lblRs" runat="server" Text="Rs.Ps" CssClass="control-label"></asp:Label>
    </th>
    <td style=" border-collapse:collapse" class="style8"></td>
    
    </tr>
  
    
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
        Width="100%">
    <ItemTemplate>
    <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
    <tr>
    <td style=" border-collapse:collapse" align="center" class="style2">
        <asp:Label ID="UnitNamelbl" runat="server" Text='<%#Eval("UnitName") %>' CssClass=" control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style3">
        <asp:Label ID="Studentslbl" runat="server" Text='<%#Eval("Students") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style4">
        <asp:Label ID="UnitLeaderlbl" runat="server" Text='<%#Eval("UnitLeader") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style5">
       <asp:Label ID="Totallbl" runat="server" Text='<%#Eval("Total") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style8" >
        <asp:Label ID="TotalRslbl" runat="server" Text='<%#Eval("TotalRs") %>' CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style8" >
    <asp:Label ID="lblChecked1" runat="server" Text='<%#Eval("Checked") %>' CssClass="control-label"></asp:Label>
    </td>
    </tr>
    </table>
</ItemTemplate>
    </asp:DataList>
     <table width="100%">
    <tr>
    <td style=" border-collapse:collapse" align="center" class="style2">
        <asp:Label ID="Total" runat="server" Text="Total" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style3">
        <asp:Label ID="Label2" runat="server" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style4">
        <asp:Label ID="Label3" runat="server" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style5">
        <asp:Label ID="Label4" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td>
    <td style=" border-collapse:collapse" align="center" class="style8">
        <asp:Label ID="Label5" runat="server" Text="" CssClass="control-label"></asp:Label>
    </td><td class="style8"></td>
    </tr>
    </table>
    <input type="button" value="Print" onclick="window.print()" class="btn btn-primary" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [UnitName], [Students], [UnitLeader], [Total], [TotalRs], [Checked] FROM [Confirmation] WHERE (([UnitType] = @UnitType) AND ([Year] = @Year))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UnitType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Confirmation1.aspx">Back</asp:HyperLink></center>
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
