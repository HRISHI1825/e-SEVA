<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PantPradhanDhalSpardha2.aspx.cs" Inherits="PantPradhanDhalSpardha2" %>

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
</head>
<body>
<div class="jumbotron">
 <center>
        <h1>Unit Information</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds" Width="100%">
        <ItemTemplate>
        <div class="form-group">
            <asp:Label ID="lblNameOfUnit" runat="server" Text="Name Of Unit" CssClass="col-lg-3 control-label"></asp:Label>
        <div class="col-lg-5">
        <asp:label ID="UnitNamelabel" runat="server" Text='<%# Eval("UnitName") %>' CssClass="form-control"></asp:label>
        </div>
        </div>
       <div class="form-group">
           <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="col-lg-3 control-label"></asp:Label>
        <div class="col-lg-5">
        <asp:label ID="PermanentAddresslabel" runat="server" Text='<%# Eval("PermanentAddress") %>' CssClass="form-control"></asp:label>
        </div></div>
        <div class="form-group">
            <asp:Label ID="lblSubjectNumber" runat="server" Text="Subject Number" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
             <asp:label ID="SubjectNolabel" runat="server" Text='<%# Eval("SubjectNo") %>' CssClass="form-control"></asp:label>
             </div></div>
        <div class="form-group">
            <asp:Label ID="lblOptionalSubjectNumber" runat="server" Text="Optional Subject Number" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
            <asp:label ID="OptionalSubjectNolabel" runat="server" Text='<%# Eval("OptionalSubjectNo") %>' CssClass="form-control"></asp:label>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblUnitLeaderName" runat="server" Text="Unit Leader Name" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
            <asp:label ID="FullNamelabel" runat="server" Text='<%# Eval("FullName") %>' CssClass="form-control"></asp:label>
            </div></div>
            <div class="form-group">
                <asp:Label ID="lblAttendance" runat="server" Text="Attendance" CssClass="col-lg-3 control-label"></asp:Label>
                <div class="col-lg-5">
                 <asp:label ID="Attendancelabel" runat="server" Text='<%# Eval("Attendance") %>' CssClass="form-control"></asp:label>
                 </div></div>
                 <div class="form-group">
                 <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass="col-lg-3 control-label"></asp:Label>
                 <div class="col-lg-5">
                  <a href='pantpradhanLetter/<%# Eval("PantPradhanLetter") %>' class="form-control">Click To See</a>
                 </div></div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT SchoolTable.PermanentAddress, UnitLeaderTable.UnitName, UnitLeaderTable.SubjectNo, UnitLeaderTable.OptionalSubjectNo, UnitLeaderTable.Attendance, UnitLeaderTable.FullName, UnitLeaderTable.PantPradhanLetter FROM SchoolTable INNER JOIN UnitLeaderTable ON SchoolTable.UnitName = UnitLeaderTable.UnitName WHERE (UnitLeaderTable.FullName = @FullName) AND (UnitLeaderTable.Year = @Year)">
            <SelectParameters>
                <asp:QueryStringParameter Name="FullName" QueryStringField="FullName" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" />
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
             Font-Size="Large" ForeColor="#0099FF" 
             NavigateUrl="~/PantPradhanDhalSpardha.aspx">Back</asp:HyperLink></center>
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
