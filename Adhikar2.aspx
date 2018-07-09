<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adhikar2.aspx.cs" Inherits="Adhikar2" %>

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
               <div class="form-group"><asp:Label ID="lblSchoolName" runat="server" 
                    Text="School Name" CssClass="col-lg-3 control-label" />
               <div class="col-lg-5">
                <asp:Label ID="SchoolNameLabel" runat="server" 
                    Text='<%# Eval("SchoolName") %>' CssClass="form-control" />
                </div></div>
                <div class="form-group">
                 <asp:Label ID="lblPermanentAddress" runat="server" 
                    Text="Permanent Address" CssClass="col-lg-3 control-label" />
                    <div class="col-lg-5">
                <asp:Label ID="PermanentAddressLabel" runat="server" 
                    Text='<%# Eval("PermanentAddress") %>' CssClass="form-control" />
                 </div></div>
                    <div class="form-group">
                <asp:Label ID="lblUnitName" runat="server" Text="Unit Name" CssClass="col-lg-3 control-label"/>
                <div class="col-lg-5">
                <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Eval("UnitName") %>' CssClass="form-control" />
                </div></div>
                <div class="form-group">
               <asp:Label ID="lblFullName" runat="server" Text="Unit Leader Name" CssClass="col-lg-3 control-label"/>
               <div class="col-lg-5">
                <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' CssClass="form-control" />
               </div></div>
                <div class="form-group">
                <asp:Label ID="lblAdhikarCharterNumber" runat="server" CssClass="col-lg-3 control-label" 
                    Text="Charter Number" />
                    <div class="col-lg-5">
                     <asp:Label ID="AdhikarCharterNumberLabel" runat="server" 
                    Text='<%# Eval("AdhikarCharterNumber") %>' CssClass="form-control" />
                </div></div>
                <div class="form-group">
                <asp:Label ID="lblAdhikarDate" runat="server" 
                    Text="Date" CssClass="col-lg-3 control-label" />
                    <div class="col-lg-5">
                <asp:Label ID="AdhikarDateLabel" runat="server" 
                    Text='<%# Eval("AdhikarDate") %>' CssClass="form-control" />
              </div></div>
                <div class="form-group">
                <asp:Label ID="lblAdhikarWarrantnumber" runat="server" 
                    Text="Warrant Number" CssClass="col-lg-3 control-label" />
                    <div class="col-lg-5">
                <asp:Label ID="AdhikarWarrantnumberLabel" runat="server" 
                    Text='<%# Eval("AdhikarWarrantnumber") %>' CssClass="form-control" />
              </div></div>
                <div class="form-group">
                <asp:Label ID="lblAdhikarRenewalDate" runat="server" 
                    Text="Renewal Date" CssClass="col-lg-3 control-label"/>
                    <div class="col-lg-5">
                     <asp:Label ID="AdhikarRenewalDateLabel" runat="server" 
                    Text='<%# Eval("AdhikarRenewalDate") %>' CssClass="form-control" /><span class="help-block">
               <a href='UpdateRenewalDate.aspx?FullName=<%#Eval("FullName") %>&Year=<%#Eval("Year") %>&SchoolName=<%#Eval("SchoolName") %>&UnitName=<%#Eval("UnitName") %>' ><asp:Label ID="Label1" runat="server" 
                    Text="Update Renewal Date"/></span>
                </a>
               </div></div>
                <div class="form-group">
                <asp:Label ID="lblAdhikarCertificate" runat="server" 
                    Text="AdhikarCertificate" CssClass="col-lg-3 control-label"/>
                    <div class="col-lg-5">
               <a href='AdhikarPatra/<%# Eval("AdhikarCertificate") %>'><asp:Label ID="Label2" runat="server" 
                    Text="Click To See" CssClass="form-control"/>
                </a>
                </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT UnitLeaderTable.SchoolName, SchoolTable.PermanentAddress, UnitLeaderTable.UnitName, UnitLeaderTable.FullName, UnitLeaderTable.AdhikarCharterNumber, UnitLeaderTable.AdhikarDate, UnitLeaderTable.AdhikarWarrantnumber, UnitLeaderTable.AdhikarRenewalDate, UnitLeaderTable.AdhikarCertificate, UnitLeaderTable.Year FROM SchoolTable INNER JOIN UnitLeaderTable ON SchoolTable.UnitName = UnitLeaderTable.UnitName WHERE (UnitLeaderTable.FullName = @FullName) AND (UnitLeaderTable.Year = @Year) AND (UnitLeaderTable.SchoolName = @SchoolName) AND (UnitLeaderTable.UnitName = @UnitName)" 
            
            
            
            UpdateCommand="UPDATE UnitLeaderTable SET AdhikarRenewalDate = @AdhikarRenewalDate">
            <SelectParameters>
                <asp:QueryStringParameter Name="FullName" QueryStringField="FullName" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" />
                <asp:QueryStringParameter Name="SchoolName" QueryStringField="SchoolName" />
                <asp:QueryStringParameter Name="UnitName" QueryStringField="UnitName" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="DetailsView1" Name="AdhikarRenewalDate" 
                    PropertyName="SelectedValue" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Adhikar.aspx">Back</asp:HyperLink></center>
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
