<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationFormPrintOffice.aspx.cs" Inherits="RegistrationFormPrintOffice" %>

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
    <script type="text/javascript">
        function printpage() {
            var printbutton = document.getElementById("printpagebutton");
            printbutton.style.visibility = 'hidden';
            window.print();
            printbutton.style.visibility = 'visible';
            document.location.href = 'Registration.aspx';
        }
</script>
<style type="text/css">
        .style2
        {
            width: 220px;
        }
        .style3
        {
            width: 749px;
        }
    .style4
    {
        width: 125px;
    }
    .style6
    {
        width: 128px;
    }
    .style7
    {
        width: 148px;
    }
    .style8
    {
        width: 246px;
    }
    .style9
    {
        width: 206px;
    }
    .style10
    {
        width: 200px;
    }
    .style11
    {
        width: 94px;
    }
    .style12
    {
        width: 180px;
    }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
<fieldset> 
<div class="jumbotron">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Width="100%">
    <ItemTemplate>
<table width="100%">
        <tr>
        
            <td class="style2">
            
                <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl="~/img/logo1.jpg" Width="220px" />

            </td >
            <td class="style3">
        <center>
    
    <h4> <asp:Label ID="lbl1" runat="server" Text="Maharashtra State Bharat Scouts and Guides" CssClass="control-label"></asp:Label>
    <br />
     <asp:Label ID="lbl2" runat="server" Text="79, F Road, Marine Drive, Mumbai-400 020" CssClass="control-label"></asp:Label>
        
            <br />
     <asp:Label ID="lbl3" runat="server" Text="Unit Registration Form" CssClass="control-label"></asp:Label>
        
            <br />
     <asp:Label ID="lbl4" runat="server" Text="Year" CssClass="control-label"></asp:Label>
        
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Year") %>' CssClass="control-label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </h2>
            </center>
                </td>
            <td><h4>
                <asp:Label ID="lbl5" runat="server" Text="District" CssClass="col-lg-3 control-label"></asp:Label><hr />
                <asp:Label ID="lbl6" runat="server" Text='<%#Eval("Zilla") %>' CssClass="col-lg-3 control-label"></asp:Label>
                </h4>
            </td>
            </tr>
            </table>                
    <hr />
<table width="50%">
<tr>
<td>
    <asp:Label ID="lblSchoolType" runat="server" Text="School Type" CssClass=" control-label"></asp:Label></td>
 <td> <asp:Label ID="SchoolTypeLabel" runat="server" Text='<%#Eval("SchoolType") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td>
    <asp:Label ID="lblUnitType" runat="server" Text="Unit Type" CssClass="control-label"></asp:Label></td>
 <td> <asp:Label ID="UnitTypeLabel" runat="server" Text='<%#Eval("UnitType") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblUnitName" runat="server" Text="Unit Name" CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="UnitNameLabel" runat="server" Text='<%#Eval("UnitName") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblSchoolName" runat="server" Text="School Name" CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="SchoolNameLabel" runat="server" Text='<%#Eval("SchoolName") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="PermanentAddressLabel" runat="server" Text='<%#Eval("PermanentAddress") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblTaluka" runat="server" Text="Taluka" CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="TalukaLabel" runat="server" Text='<%#Eval("Taluka") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblContactNo" runat="server" Text="Contact No." CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="ContactNoLabel" runat="server" Text='<%#Eval("ContactNo") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="control-label"></asp:Label></td>
<td> <asp:Label ID="EmailIdLabel" runat="server" Text='<%#Eval("EmailId") %>' CssClass="control-label"></asp:Label></td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>
<hr />
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" Width="100%">
        <Columns>
            <asp:BoundField DataField="FullName" HeaderText="FullName" 
                SortExpression="FullName" />
            <asp:BoundField DataField="TrainingName" HeaderText="TrainingName" 
                SortExpression="TrainingName" />
            <asp:BoundField DataField="CertificateNo" HeaderText="CertificateNo" 
                SortExpression="CertificateNo" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="AdhikarpatraNo" HeaderText="AdhikarpatraNo" 
                SortExpression="AdhikarpatraNo" />
        </Columns>
    </asp:GridView>
   <hr />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" Width="100%">
        <Columns>
            <asp:BoundField DataField="StudFullName" HeaderText="StudFullName" 
                SortExpression="StudFullName" />
            <asp:BoundField DataField="StudDOB" HeaderText="StudDOB" 
                SortExpression="StudDOB" />
            <asp:BoundField DataField="StudStandard" HeaderText="StudStandard" 
                SortExpression="StudStandard" />
        </Columns>
    </asp:GridView>
<hr />
<asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" 
        Width="100%">
<ItemTemplate>
<table width="100%">
<tr>
<td class="style4">
<asp:Label ID="lblCharterNo" runat="server" Text="Charter No." CssClass="control-label"></asp:Label>
</td>
<td>
<asp:Label ID="CharterNoLabel" runat="server" Text='<%#Eval("CharterNo") %>' CssClass="control-label"></asp:Label>
</td>
</tr>
<tr>
<td class="style4">
<asp:Label ID="lblWarrantNo" runat="server" Text="Warrant No." CssClass="control-label"></asp:Label>
</td><td>
<asp:Label ID="WarrantNoLabel" runat="server" Text='<%#Eval("WarrantNo") %>' CssClass="control-label"></asp:Label>
</td>
</tr></table>
<table width="100%">
<tr>
<td class="style6">
<asp:Label ID="lblDate1" runat="server" Text="Date" CssClass="control-label"></asp:Label>
</td><td class="style12">
<asp:Label ID="DateLabel1" runat="server" Text='<%#Eval("Date") %>' CssClass="control-label"></asp:Label>
</td>
<td align="center"><img src='Signature/<%#Eval("UnitLeaderSignature") %>' alt="Not available" />  
</td><td align="center"><img src='Signature/<%#Eval("PrincipalSignature") %>' alt="Not available" /></td>
</tr>
<tr>
<td class="style6"></td><td class="style12"></td><td align="center">
<asp:Label ID="lblUnitLeaderSignature" runat="server" Text="Unit Leader Signature" CssClass="control-label"></asp:Label>
</td>
<td align="center">
<asp:Label ID="lblPrincipalSignature" runat="server" Text="Principal Signature" CssClass="control-label"></asp:Label>
</td>
</tr>
</table>
<hr />
<table width="100%">
<tr>
<td class="style7">
    <asp:Label ID="lblRegistrationFees" runat="server" Text="Registration Fees" CssClass="control-label"></asp:Label></td>
<td class="style8"> <asp:Label ID="RegistrationFeesLabel" runat="server" Text='<%#Eval("RegistrationFess") %>' CssClass="control-label"></asp:Label></td>
<td class="style9">
<asp:Label ID="lblReceiptNo" runat="server" Text="Receipt No." CssClass="control-label"></asp:Label>
</td>
<td class="style10"><asp:Label ID="ReceiptNoLabel" runat="server" Text='<%#Eval("ReceiptNo") %>' CssClass="control-label"></asp:Label></td>
<td class="style11"><asp:Label ID="lblDate2" runat="server" Text="Date" CssClass="control-label"></asp:Label>
</td>
<td><asp:Label ID="PayDateLabel" runat="server" Text='<%#Eval("PayDate") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td class="style7">
    <asp:Label ID="lblRegistrationFees1" runat="server" Text="Registration Fees" CssClass="control-label"></asp:Label></td>
<td class="style8"> <asp:Label ID="RegistrationFees1Label" runat="server" Text='<%#Eval("RegistrationFees1") %>' CssClass="control-label"></asp:Label></td>
<td class="style9">
<asp:Label ID="lblReceiptNo1" runat="server" Text="Receipt No." CssClass="control-label"></asp:Label>
</td>
<td class="style10"><asp:Label ID="ReceiptNo1Label" runat="server" Text='<%#Eval("ReceiptNo1") %>' CssClass="control-label"></asp:Label></td>
<td class="style11"><asp:Label ID="lblDate3" runat="server" Text="Date" CssClass="control-label"></asp:Label>
</td>
<td><asp:Label ID="PayDate1Label" runat="server" Text='<%#Eval("PayDate1") %>' CssClass="control-label"></asp:Label></td>
</tr>
<tr>
<td class="style7"></td>
<td class="style8"></td>
<td class="style9"></td>
<td class="style10"></td>
<td class="style11"></td>
<td></td>
</tr>
<tr>
<td class="style7"></td>
<td class="style8"></td>
<td align="center" class="style9"><img src='Signature/<%#Eval("DistrictSignature") %>' alt="Not available" /></td>
<td class="style10"></td>
<td class="style11"></td>
<td></td>
</tr>
<tr>
<td class="style7"></td>
<td class="style8"></td>
<td align="center" class="style9"><asp:Label ID="lblDistrictSignature" runat="server" Text="District Signature" CssClass="control-label"></asp:Label></td>
<td class="style10"></td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>
    </div>
    <input type="button" id="printpagebutton" value="print" onclick="printpage()"/>
    </fieldset>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
    SelectCommand="SELECT [SchoolType], [UnitType], [UnitName], [Year], [SchoolName], [PermanentAddress], [Taluka], [ContactNo], [EmailId], [Zilla] FROM [SchoolTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
        <SelectParameters>
            <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" 
                Type="String" />
            <asp:QueryStringParameter Name="Password" QueryStringField="pwd" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo] FROM [UnitLeaderTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
        <SelectParameters>
            <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" 
                Type="String" />
            <asp:QueryStringParameter Name="Password" QueryStringField="pwd" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [StudFullName], [StudDOB], [StudStandard] FROM [StudentTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
        <SelectParameters>
            <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" 
                Type="String" />
            <asp:QueryStringParameter Name="Password" QueryStringField="pwd" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
    SelectCommand="SELECT [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature] FROM [SchoolTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
        <SelectParameters>
            <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" 
                Type="String" />
            <asp:QueryStringParameter Name="Password" QueryStringField="pwd" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    </form>
</body>
</html>
