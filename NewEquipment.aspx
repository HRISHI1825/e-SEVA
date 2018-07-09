<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewEquipment.aspx.cs" Inherits="NewEquipment" %>

<!DOCTYPE html>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script></head>
<body>
<div class="jumbotron">
<center>
     <h1>New Equipment</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>  <div class="form-group">
                     <asp:Label ID="lblDate"  class="col-lg-3 control-label" runat="server" Text="Date"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
                    <div  class="col-lg-5">
                      <asp:TextBox ID="txtDate"  class="form-control" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate" />
        </div>  </div>
        <div class="form-group">
             <asp:Label ID="lblEquipmentName" runat="server"  class="col-lg-3 control-label" Text="Equipment Name"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEquipmentName" ForeColor="Red" ToolTip="Enter Equipment Name">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtEquipmentName"  class="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblPrice" runat="server" class="col-lg-3 control-label"  Text="Price"></asp:Label>
            <div  class="col-lg-5">
              <asp:TextBox ID="txtPrice"  class="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="lblPriceRs" runat="server" Text="Rs." Font-Bold="False" CssClass="control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" ForeColor="Red" ToolTip="Enter Price Rs.">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPricePs" runat="server" CssClass="form-control "></asp:TextBox>
                <asp:Label ID="lblPricePs" runat="server" Text="Ps." Font-Bold="False" CssClass="control-label" ></asp:Label>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtPricePs" ForeColor="Red" ToolTip="Enter Price Rs.">*</asp:RequiredFieldValidator>
            
                   </div></div>
        <div class="form-group">
                <asp:Label ID="lblDiscription" runat="server" class="col-lg-3 control-label"  Text="Discription"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDescription" ForeColor="Red" ToolTip="Enter Description">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDescription" runat="server"  TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblBillNo" runat="server"  class="col-lg-3 control-label" Text="Bill No"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtBillNo" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
             <asp:TextBox ID="txtBillNo" runat="server" class="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity"  class="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtQuantity" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
             <asp:TextBox ID="txtQuantity" class="form-control"  runat="server" ></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblTotalPrice" runat="server"  class="col-lg-3 control-label" Text="Total Price"></asp:Label>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtTotalPrice"  class="form-control" runat="server"></asp:TextBox>
            <asp:Label ID="lblPriceRs1" runat="server" Text="Rs." Font-Bold="False" 
                   CssClass="control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtTotalPrice" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPricePs1" runat="server" CssClass="form-control "></asp:TextBox>
                <asp:Label ID="lblPricePs1" runat="server" Text="Ps." Font-Bold="False" 
                   CssClass="control-label" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtPricePs1" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
           </div> </div>
           <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
    
        <asp:SqlDataSource ID="SqldsNewEquip" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([NewEquipDate], [NewEquipName], [NewEquipPrice], [NewEquipDescription], [NewEquipBillNo], [NewEquipQuantity], [NewEquipTotalPrice], [NewEquipPricePs], [NewEquipTotalPricePs]) VALUES (@NewEquipDate, @NewEquipName, @NewEquipPrice, @NewEquipDescription, @NewEquipBillNo, @NewEquipQuantity, @NewEquipTotalPrice, @NewEquipPricePs, @NewEquipTotalPricePs)" 
            SelectCommand="SELECT [SrNo], [NewEquipDate], [NewEquipName], [NewEquipPrice], [NewEquipDescription], [NewEquipBillNo], [NewEquipQuantity], [NewEquipTotalPrice], [NewEquipPricePs], [NewEquipTotalPricePs] FROM [Office]" 
            
            UpdateCommand="UPDATE [Office] SET [NewEquipDate] = @NewEquipDate, [NewEquipName] = @NewEquipName, [NewEquipPrice] = @NewEquipPrice, [NewEquipDescription] = @NewEquipDescription, [NewEquipBillNo] = @NewEquipBillNo, [NewEquipQuantity] = @NewEquipQuantity, [NewEquipTotalPrice] = @NewEquipTotalPrice, [NewEquipPricePs] = @NewEquipPricePs, [NewEquipTotalPricePs] = @NewEquipTotalPricePs WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="NewEquipDate" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEquipmentName" Name="NewEquipName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtPrice" Name="NewEquipPrice" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtPricePs" Name="NewEquipPricePs" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtDescription" Name="NewEquipDescription" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtBillNo" Name="NewEquipBillNo" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtQuantity" Name="NewEquipQuantity" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtTotalPrice" Name="NewEquipTotalPrice" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtPricePs1" Name="NewEquipTotalPricePs" 
                    PropertyName="Text" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="NewEquipDate" />
                <asp:Parameter Name="NewEquipName" Type="String" />
                <asp:Parameter Name="NewEquipPrice" Type="Int32" />
                <asp:Parameter Name="NewEquipDescription" Type="String" />
                <asp:Parameter Name="NewEquipBillNo" Type="Int32" />
                <asp:Parameter Name="NewEquipQuantity" Type="Int32" />
                <asp:Parameter Name="NewEquipTotalPrice" Type="Int32" />
                <asp:Parameter Name="NewEquipPricePs" Type="Int32" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Equipment.aspx">Back</asp:HyperLink></center>
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
