<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seva2.aspx.cs" Inherits="seva2" %>

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
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
    <center>
          <h1>Seva Prakalp Information</h1>
          </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset><asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1" Width="100%">
            <ItemTemplate>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSchoolName"  CssClass="col-lg-3 control-label" text="School Name"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SchoolName" runat="server" 
                    Text='<%# Eval("SchoolName") %>' CssClass="form-control" />
                    </div>
            </div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblPermanentAddress"  CssClass="col-lg-3 control-label" text="Address"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="PermanentAddress" runat="server" 
                    Text='<%# Eval("PermanentAddress") %>' CssClass="form-control" />
                    </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblUnitName"  CssClass="col-lg-3 control-label" text="Unit Name"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="UnitName" runat="server" 
                    Text='<%# Eval("UnitName") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSevaEventName"  CssClass="col-lg-3 control-label" text="Event Name"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SevaEventName" runat="server" 
                    Text='<%# Eval("SevaEventName") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSevaEventDate"  CssClass="col-lg-3 control-label" text="Event Date"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SevaEventDate" runat="server" 
                    Text='<%# Eval("SevaEventDate") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSevaAttendance"  CssClass="col-lg-3 control-label" text="Attendance"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SevaAttendance" runat="server" 
                    Text='<%# Eval("SevaAttendance") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSevaDuration"  CssClass="col-lg-3 control-label" text="Duration"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SevaDuration" runat="server" 
                    Text='<%# Eval("SevaDuration") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSevaPlace"  CssClass="col-lg-3 control-label" text="Place"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SevaPlace" runat="server" 
                    Text='<%# Eval("SevaPlace") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblSevaReport"  CssClass="col-lg-3 control-label" text="Report"></asp:Label>
                <div class="col-lg-5">
                <a href='Seva/<%# Eval("SevaReport") %>'><asp:Label runat="server" ID="Label" text="Click To See" CssClass="form-control"></asp:Label>
                </a>
            </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblSevaPhoto"  CssClass="col-lg-3 control-label" text="Photo"></asp:Label>
                <div class="col-lg-5">
                <a href='Seva/<%# Eval("SevaPhoto") %>'><asp:Label runat="server" ID="Label1" CssClass="form-control" text="Click To See"></asp:Label>
                </a>
            </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT SchoolTable.PermanentAddress, SevaPrakalp.SchoolName, SevaPrakalp.UnitName, SevaPrakalp.SevaEventName, SevaPrakalp.SevaEventDate, SevaPrakalp.SevaAttendance, SevaPrakalp.SevaDuration, SevaPrakalp.SevaPlace, SevaPrakalp.SevaReport, SevaPrakalp.SevaPhoto FROM SchoolTable INNER JOIN SevaPrakalp ON SchoolTable.UnitName = SevaPrakalp.UnitName WHERE (SevaPrakalp.SchoolName = @SchoolName) AND (SevaPrakalp.Year = @Year) AND (SevaPrakalp.UnitName = @UnitName) AND (SevaPrakalp.SevaEventDate = @SevaEventDate)">
            <SelectParameters>
                <asp:QueryStringParameter Name="SchoolName" QueryStringField="SchoolName" />
                <asp:QueryStringParameter Name="Year" QueryStringField="Year" />
                <asp:QueryStringParameter Name="UnitName" QueryStringField="UnitName" />
                <asp:QueryStringParameter Name="SevaEventDate" 
                    QueryStringField="SevaEventDate" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/seva.aspx">Back</asp:HyperLink></center>
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
