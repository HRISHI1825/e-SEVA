<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EquipmentInward1.aspx.cs" Inherits="EquipmentInward1" %>

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
</head>
<body>
<form id="form1" runat="server" class="form-forizontal">
    <div class="jumbotron">
  <center>
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Inward Equipments</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/EquipmentInward.aspx" 
                  ToolTip="Enter New Inward Equipment" Width="60px" /></td>
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
            <asp:BoundField DataField="InwardEquipDate" HeaderText="Date" 
                SortExpression="InwardEquipDate" />
            <asp:BoundField DataField="InwardEquipName" HeaderText="Name" 
                SortExpression="InwardEquipName" />
            <asp:BoundField DataField="InwardEquipPrice" HeaderText="Price" 
                SortExpression="InwardEquipPrice" />
            <asp:BoundField DataField="InwardEquipPricePs" HeaderText="Price in Ps." 
                SortExpression="InwardEquipPricePs" />
            <asp:BoundField DataField="InwardEquipDescription" HeaderText="Description" 
                SortExpression="InwardEquipDescription" />
            <asp:BoundField DataField="InwardEquipBillNo" HeaderText="Bill No." 
                SortExpression="InwardEquipBillNo" />
            <asp:BoundField DataField="InwardEquipQuantity" HeaderText="Quantity" 
                SortExpression="InwardEquipQuantity" />
            <asp:BoundField DataField="InwardEquipTotalPrice" HeaderText="Total Price" 
                SortExpression="InwardEquipTotalPrice" />
            <asp:BoundField DataField="InwardEquipTotalPricePs" 
                HeaderText="Total Price in Ps." SortExpression="InwardEquipTotalPricePs" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            
            SelectCommand="SELECT [InwardEquipDate], [InwardEquipName], [InwardEquipPrice], [InwardEquipPricePs], [InwardEquipDescription], [InwardEquipBillNo], [InwardEquipQuantity], [InwardEquipTotalPrice], [InwardEquipTotalPricePs], [SrNo] FROM [Office] WHERE ([InwardEquipName] IS NOT NULL)" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([InwardEquipDate], [InwardEquipName], [InwardEquipPrice], [InwardEquipPricePs], [InwardEquipDescription], [InwardEquipBillNo], [InwardEquipQuantity], [InwardEquipTotalPrice], [InwardEquipTotalPricePs]) VALUES (@InwardEquipDate, @InwardEquipName, @InwardEquipPrice, @InwardEquipPricePs, @InwardEquipDescription, @InwardEquipBillNo, @InwardEquipQuantity, @InwardEquipTotalPrice, @InwardEquipTotalPricePs)" 
            
            UpdateCommand="UPDATE [Office] SET [InwardEquipDate] = @InwardEquipDate, [InwardEquipName] = @InwardEquipName, [InwardEquipPrice] = @InwardEquipPrice, [InwardEquipPricePs] = @InwardEquipPricePs, [InwardEquipDescription] = @InwardEquipDescription, [InwardEquipBillNo] = @InwardEquipBillNo, [InwardEquipQuantity] = @InwardEquipQuantity, [InwardEquipTotalPrice] = @InwardEquipTotalPrice, [InwardEquipTotalPricePs] = @InwardEquipTotalPricePs WHERE [SrNo] = @SrNo">
        <DeleteParameters>
            <asp:Parameter Name="SrNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="InwardEquipDate" />
            <asp:Parameter Name="InwardEquipName" Type="String" />
            <asp:Parameter Name="InwardEquipPrice" Type="Int32" />
            <asp:Parameter Name="InwardEquipPricePs" Type="Int32" />
            <asp:Parameter Name="InwardEquipDescription" Type="String" />
            <asp:Parameter Name="InwardEquipBillNo" Type="Int32" />
            <asp:Parameter Name="InwardEquipQuantity" Type="Int32" />
            <asp:Parameter Name="InwardEquipTotalPrice" Type="Int32" />
            <asp:Parameter Name="InwardEquipTotalPricePs" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="InwardEquipDate" />
            <asp:Parameter Name="InwardEquipName" Type="String" />
            <asp:Parameter Name="InwardEquipPrice" Type="Int32" />
            <asp:Parameter Name="InwardEquipPricePs" Type="Int32" />
            <asp:Parameter Name="InwardEquipDescription" Type="String" />
            <asp:Parameter Name="InwardEquipBillNo" Type="Int32" />
            <asp:Parameter Name="InwardEquipQuantity" Type="Int32" />
            <asp:Parameter Name="InwardEquipTotalPrice" Type="Int32" />
            <asp:Parameter Name="InwardEquipTotalPricePs" Type="Int32" />
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
