<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UnitInformation1.aspx.cs" Inherits="UnitInformation1" %>

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
<center><h1>Unit Information Details</h1></center>
</div>
<div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
<form id="form1" runat="server" class="form-horizontal">
    <fieldset> 
    <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Year" CssClass="col-lg-3 control-label"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="DropDownList1" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource7" DataTextField="Year" DataValueField="Year" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable] WHERE ([Year] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>                                          
    <div class="form-group">
        <asp:Label ID="lblEnterRegistrationFeesForStudent" runat="server" Text="Enter Registration Fees For Student" CssClass="col-lg-3 control-label"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtEnterRegistrationFeesForStudent" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
    <asp:TextBox ID="txtEnterRegistrationFeesForStudent" runat="server" CssClass="form-control"></asp:TextBox>
    </div></div>
        <div class="form-group">
   <asp:Label ID="lblEnterFeesForUnitLeader" runat="server" Text="Enter Fees For Unit Leader" CssClass="col-lg-3 control-label"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="txtEnterFeesForUnitLeader" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtEnterFeesForUnitLeader" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div><hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div><hr />
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UnitInformation2.aspx">Click Here To See Unit Information</asp:HyperLink></center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [ChaturthCharan]">
    </asp:SqlDataSource>  
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]">
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
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr> 
    </table>
    </div>
    </center>
    </form>
    </div>
    </body>
</html>
