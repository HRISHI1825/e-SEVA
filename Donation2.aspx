<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donation2.aspx.cs" Inherits="Donation2" %>

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
            width: 1013px;
        }
        .style2
        {
            width: 57px;
        }
    </style>
    
</head>
<body>
<form id="form1" runat="server"  class="form-horizontal">
<div class="jumbotron">
  <center>  
   
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Donation Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/Donation1.aspx" 
                  ToolTip="Enter New Donation Information" Width="60px" /></td>
          </tr>
    </table>
      </center>
      </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <fieldset>
    <div class="form-group">
    <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="DonationYear" DataValueField="DonationYear" 
            AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [DonationYear] FROM [Office] WHERE ([DonationYear] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqldsDonation2" Width="100%">
            <Columns>
                <asp:BoundField DataField="DonationName" HeaderText="Name" 
                    SortExpression="DonationName" />
                <asp:BoundField DataField="DonationPurpose" HeaderText="Purpose" 
                    SortExpression="DonationPurpose" />
                <asp:BoundField DataField="DonationAmount" HeaderText="Amount" 
                    SortExpression="DonationAmount" />
                <asp:BoundField DataField="DonationReceiptNo" HeaderText="Receipt No." 
                    SortExpression="DonationReceiptNo" />
                <asp:BoundField DataField="DonationReceiptNoDate" HeaderText="Receipt No. Date" 
                    SortExpression="DonationReceiptNoDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqldsDonation2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [SrNo], [DonationYear], [DonationName], [DonationPurpose], [DonationAmount], [DonationReceiptNo], [DonationReceiptNoDate] FROM [Office] WHERE (([DonationYear] = @DonationYear) AND ([DonationName] IS NOT NULL))" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([DonationYear], [DonationName], [DonationPurpose], [DonationAmount], [DonationReceiptNo], [DonationReceiptNoDate]) VALUES (@DonationYear, @DonationName, @DonationPurpose, @DonationAmount, @DonationReceiptNo, @DonationReceiptNoDate)" 
            
            
            UpdateCommand="UPDATE [Office] SET [DonationYear] = @DonationYear, [DonationName] = @DonationName, [DonationPurpose] = @DonationPurpose, [DonationAmount] = @DonationAmount, [DonationReceiptNo] = @DonationReceiptNo, [DonationReceiptNoDate] = @DonationReceiptNoDate WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DonationYear" Type="String" />
                <asp:Parameter Name="DonationName" Type="String" />
                <asp:Parameter Name="DonationPurpose" Type="String" />
                <asp:Parameter Name="DonationAmount" Type="String" />
                <asp:Parameter Name="DonationReceiptNo" Type="String" />
                <asp:Parameter Name="DonationReceiptNoDate" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="DonationYear" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DonationYear" Type="String" />
                <asp:Parameter Name="DonationName" Type="String" />
                <asp:Parameter Name="DonationPurpose" Type="String" />
                <asp:Parameter Name="DonationAmount" Type="String" />
                <asp:Parameter Name="DonationReceiptNo" Type="String" />
                <asp:Parameter Name="DonationReceiptNoDate" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
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
    </div> 
    </form>
</body>
</html>
