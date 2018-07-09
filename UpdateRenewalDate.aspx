<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateRenewalDate.aspx.cs" Inherits="UpdateRenewalDate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
<div class="jumbotron">
 <center>
        <h1>Update Renewal Date</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
<form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblUpdate" runat="server" Text="Enter New Renewal Date" CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="txtUpdate" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtUpdate" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <ajaxToolkit:CalendarExtender ID="txtUpdate_CalendarExtender" runat="server" 
                BehaviorID="txtUpdate_CalendarExtender" TargetControlID="txtUpdate">
            </ajaxToolkit:CalendarExtender>
        </div></div>
    <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [UnitLeaderTable] ([FullName], [Year], [AdhikarRenewalDate]) VALUES (@FullName, @Year, @AdhikarRenewalDate)" 
            SelectCommand="SELECT [SrNo], [FullName], [Year], [AdhikarRenewalDate] FROM [UnitLeaderTable]" 
            
            UpdateCommand="UPDATE UnitLeaderTable SET AdhikarRenewalDate = @AdhikarRenewalDate WHERE (FullName = @FullName) AND (Year = @Year) AND (UnitName = @UnitName) AND (SchoolName = @SchoolName)">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="AdhikarRenewalDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtUpdate" Name="AdhikarRenewalDate" 
                    PropertyName="Text" Type="DateTime" />
                <asp:QueryStringParameter Name="FullName" QueryStringField="FullName" 
                    Type="String" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" Type="String" />
                <asp:QueryStringParameter Name="UnitName" QueryStringField="UnitName" />
                <asp:QueryStringParameter Name="SchoolName" QueryStringField="SchoolName" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div class="form-group">
              <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn2" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Adhikar2.aspx">Back</asp:HyperLink></center>
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
