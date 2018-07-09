<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Equipment.aspx.cs" Inherits="Equipment1" %>

<!DOCTYPE html>

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
            width: 985px;
        }
        .style2
        {
            width: 46px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-forizontal">
    <div class="jumbotron">
  <center>
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Inventory</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/NewEquipment.aspx" 
                  ToolTip="Enter New Equipment" Width="60px" /></td>
          </tr>
    </table></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
<fieldset>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            Width="100%">
        <Columns>
            <asp:BoundField DataField="NewEquipDate" HeaderText="Date" 
                SortExpression="NewEquipDate" />
            <asp:BoundField DataField="NewEquipName" HeaderText="Name" 
                SortExpression="NewEquipName" />
            <asp:BoundField DataField="NewEquipPrice" HeaderText="Price" 
                SortExpression="NewEquipPrice" />
            <asp:BoundField DataField="NewEquipPricePs" HeaderText="Price in Ps." 
                SortExpression="NewEquipPricePs" />
            <asp:BoundField DataField="NewEquipDescription" HeaderText="Description" 
                SortExpression="NewEquipDescription" />
            <asp:BoundField DataField="NewEquipBillNo" HeaderText="Bill No." 
                SortExpression="NewEquipBillNo" />
            <asp:BoundField DataField="NewEquipQuantity" HeaderText="Quantity" 
                SortExpression="NewEquipQuantity" />
            <asp:BoundField DataField="NewEquipTotalPrice" HeaderText="Total Price" 
                SortExpression="NewEquipTotalPrice" />
            <asp:BoundField DataField="NewEquipTotalPricePs" 
                HeaderText="Total Price in Ps." SortExpression="NewEquipTotalPricePs" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT [NewEquipDate], [NewEquipName], [NewEquipPrice], [NewEquipPricePs], [NewEquipDescription], [NewEquipBillNo], [NewEquipQuantity], [NewEquipTotalPrice], [NewEquipTotalPricePs], [SrNo] FROM [Office] WHERE ([NewEquipName] IS NOT NULL)" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([NewEquipDate], [NewEquipName], [NewEquipPrice], [NewEquipPricePs], [NewEquipDescription], [NewEquipBillNo], [NewEquipQuantity], [NewEquipTotalPrice], [NewEquipTotalPricePs]) VALUES (@NewEquipDate, @NewEquipName, @NewEquipPrice, @NewEquipPricePs, @NewEquipDescription, @NewEquipBillNo, @NewEquipQuantity, @NewEquipTotalPrice, @NewEquipTotalPricePs)" 
            
            UpdateCommand="UPDATE [Office] SET [NewEquipDate] = @NewEquipDate, [NewEquipName] = @NewEquipName, [NewEquipPrice] = @NewEquipPrice, [NewEquipPricePs] = @NewEquipPricePs, [NewEquipDescription] = @NewEquipDescription, [NewEquipBillNo] = @NewEquipBillNo, [NewEquipQuantity] = @NewEquipQuantity, [NewEquipTotalPrice] = @NewEquipTotalPrice, [NewEquipTotalPricePs] = @NewEquipTotalPricePs WHERE [SrNo] = @SrNo">
        <DeleteParameters>
            <asp:Parameter Name="SrNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="NewEquipDate" />
            <asp:Parameter Name="NewEquipName" Type="String" />
            <asp:Parameter Name="NewEquipPrice" Type="Int32" />
            <asp:Parameter Name="NewEquipPricePs" Type="Int32" />
            <asp:Parameter Name="NewEquipDescription" Type="String" />
            <asp:Parameter Name="NewEquipBillNo" Type="Int32" />
            <asp:Parameter Name="NewEquipQuantity" Type="Int32" />
            <asp:Parameter Name="NewEquipTotalPrice" Type="Int32" />
            <asp:Parameter Name="NewEquipTotalPricePs" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="NewEquipDate" />
            <asp:Parameter Name="NewEquipName" Type="String" />
            <asp:Parameter Name="NewEquipPrice" Type="Int32" />
            <asp:Parameter Name="NewEquipPricePs" Type="Int32" />
            <asp:Parameter Name="NewEquipDescription" Type="String" />
            <asp:Parameter Name="NewEquipBillNo" Type="Int32" />
            <asp:Parameter Name="NewEquipQuantity" Type="Int32" />
            <asp:Parameter Name="NewEquipTotalPrice" Type="Int32" />
            <asp:Parameter Name="NewEquipTotalPricePs" Type="Int32" />
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
