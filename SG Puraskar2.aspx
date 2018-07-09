<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SG Puraskar2.aspx.cs" Inherits="SG_Puraskar2" %>

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
            <asp:Label ID="lblSchoolName" runat="server" Text="School Name" CssClass="col-lg-3 control-label" ></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblSchoolName1" runat="server" Text='<%# Eval("SchoolName")%>' CssClass="form-control"></asp:Label>
        </div>
        </div>
       <div class="form-group">
             <asp:Label ID="lblPermanentAddress" runat="server" Text="Address" CssClass="col-lg-3 control-label "></asp:Label> 
        <div class="col-lg-5">
        <asp:Label ID="lblPermanentAddress1" runat="server" Text='<%# Eval("PermanentAddress")%>' CssClass="form-control"></asp:Label>
        </div></div>
        <div class="form-group">
           <asp:Label ID="lblUnitName" runat="server" Text="Unit Name" CssClass="col-lg-3 control-label  "></asp:Label>
            <div class="col-lg-5">
             <asp:Label ID="lblUnitName1" runat="server" Text='<%# Eval("UnitName")%>' CssClass="form-control"></asp:Label>
             </div></div>
             <div class="form-group">
           <asp:Label ID="lblUnitLeaderAddress" runat="server" Text="Unit Leader Address" CssClass="col-lg-3 control-label  "></asp:Label>
            <div class="col-lg-5">
             <asp:Label ID="lblUnitLeaderAddress1" runat="server" Text='<%# Eval("UnitLeaderAddress")%>' CssClass="form-control"></asp:Label>
             </div></div>
             <div class="form-group">
           <asp:Label ID="lblAdarshReceivedDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label>
            <div class="col-lg-5">
           <asp:Label ID="lblAdarshReceivedDate1" runat="server" Text=' <%# Eval("AdarshReceivedDate")%>' CssClass="form-control"></asp:Label>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblAdarshPlace" runat="server" Text="Place" CssClass="col-lg-3 control-label "></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lblAdarshPlace1" runat="server" Text='<%# Eval("AdarshPlace")%>' CssClass="form-control"></asp:Label>
            </div></div>
            <div class="form-group">
                 <asp:Label ID="lblAdarshCheifGuest" runat="server" Text="Cheif Guest" CssClass="col-lg-3 control-label  "></asp:Label>
                <div class="col-lg-5">
                 <asp:Label ID="lblAdarshCheifGuest1" runat="server" Text='<%# Eval("AdarshChiefGuest")%>' CssClass="form-control"></asp:Label>
                 </div></div>
                 <div class="form-group">
                 <asp:Label ID="lblAdarshCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label "></asp:Label>
                 <div class="col-lg-5">
                 <a href='AdarshScoutGuidePuraskar/<%# Eval("AdarshCertificate")%>'><asp:label ID="Label" runat="server" CssClass="form-control" Text="Click to see"></asp:label></a>
                 </div>
                 </div>
                 <div class="form-group">
                 <asp:Label ID="lblAdarshPhoto" runat="server" Text="Photo" CssClass="col-lg-3 control-label "></asp:Label>
                 <div class="col-lg-5">
                 <a href='AdarshScoutGuidePuraskar/<%# Eval("AdarshPhoto")%>'><asp:label ID="Label1" runat="server" CssClass="form-control" Text="Click to see"></asp:label></a>
                 </div>
                 </div>
        <div class="form-group">
                 <asp:Label ID="lblAdarshLetter" runat="server" Text="Letter" CssClass="col-lg-3 control-label "></asp:Label>
                 <div class="col-lg-5">
                 <a href='AdarshScoutGuidePuraskar/<%# Eval("AdarshLetter")%>'><asp:label ID="Label2" runat="server" CssClass="form-control" Text="Click to see"></asp:label></a>
                 </div>
                 </div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT SchoolTable.PermanentAddress, UnitLeaderTable.UnitName, UnitLeaderTable.SchoolName, UnitLeaderTable.FullName, UnitLeaderTable.UnitLeaderAddress, UnitLeaderTable.AdarshReceivedDate, UnitLeaderTable.AdarshPlace, UnitLeaderTable.AdarshChiefGuest, UnitLeaderTable.AdarshPhoto, UnitLeaderTable.AdarshCertificate, UnitLeaderTable.AdarshLetter FROM SchoolTable INNER JOIN UnitLeaderTable ON SchoolTable.UnitName = UnitLeaderTable.UnitName WHERE (UnitLeaderTable.FullName = @FullName) AND (UnitLeaderTable.Year = @Year)" 
            
            
            UpdateCommand="UPDATE UnitLeaderTable SET AdhikarRenewalDate = @AdhikarRenewalDate">
            <SelectParameters>
                <asp:QueryStringParameter Name="FullName" QueryStringField="FullName" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="AdhikarRenewalDate" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/SG puraskar.aspx">Back</asp:HyperLink></center>
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
