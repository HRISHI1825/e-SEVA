<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GauravSevaPadak1.aspx.cs" Inherits="GauravSevaPadak1" %>

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
            <asp:Label ID="lblName" runat="server" CssClass="col-lg-3 control-label" Text="Name"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblName1" runat="server" CssClass="form-control" Text='<%# Eval("Name")%>'></asp:Label>
        </div>
        </div>
       <div class="form-group">
           <asp:Label ID="lblSchoolName" runat="server" CssClass="col-lg-3 control-label" Text="School Name"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblSchoolName1" runat="server" CssClass="form-control" Text='<%# Eval("SchoolName")%>'></asp:Label>
        </div></div>
        <div class="form-group">
            <asp:Label ID="lblAddress" runat="server" CssClass="col-lg-3 control-label" Text="Address"></asp:Label>
        <div class="col-lg-5">
        <asp:Label ID="lblAddress1" runat="server" CssClass="form-control" Text='<%# Eval("Address") %>'></asp:Label>
        </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblAward" runat="server" Text="Award" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
             <asp:Label ID="lblAward1" runat="server" CssClass="form-control" Text='<%# Eval("Award")%>'></asp:Label>
             </div></div>
        <div class="form-group">
            <asp:Label ID="lblMeetingDate" runat="server" Text="Meeting Date" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lblMeetingDate1" runat="server" CssClass="form-control" Text='<%# Eval("MeetingDate")%>'></asp:Label>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblApplicationDate" runat="server" Text="Application Date" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
            <asp:Label ID="lbl1ApplicationDate1" runat="server" CssClass="form-control" Text='<%# Eval("ApplicationDate")%>'></asp:Label>
            </div></div>
             <div class="form-group">
                 <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass="col-lg-3 control-label"></asp:Label>
                 <div class="col-lg-5">
                  <a href='GauravSevaPadak/<%# Eval("Letter") %>'><asp:label ID="Label" runat="server" CssClass="form-control" Text="Click To See"></asp:label></a>
                 </div></div>
                 <div class="form-group">
                 <asp:Label ID="lblForm" runat="server" Text="Form" CssClass="col-lg-3 control-label"></asp:Label>
                 <div class="col-lg-5">
                  <a href='GauravSevaPadak/<%# Eval("Form") %>'><asp:label ID="Label1" runat="server" CssClass="form-control" Text="Click To See"></asp:label></a>
                 </div></div>
                 <div class="form-group">
                 <asp:Label ID="lblCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label"></asp:Label>
                 <div class="col-lg-5">
                  <a href='GauravSevaPadak/<%# Eval("Certificate") %>'><asp:label ID="Label2" runat="server" CssClass="form-control" Text="Click To See"></asp:label></a>
                 </div></div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [GauravSevaPadak] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/GauravSevaPadak.aspx">Back</asp:HyperLink></center>
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
