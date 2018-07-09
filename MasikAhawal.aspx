<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MasikAhawal.aspx.cs" Inherits="MasikAhawal" %>

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
    <style type="text/css">
        .style1
        {
            width: 819px;
        }
        .style3
        {
            width: 354px;
        }
        .style4
        {
            width: 356px;
        }
        .style5
        {
            width: 217px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
    <center> <table width="100%">
    <tr><td class="style5"></td><td align="center" class="style1">
          <h1>Masik Ahwal Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/MasikAhwal1.aspx" 
                  ToolTip="Enter New Masik Ahwal Information" Width="60px" /></td>
          </tr>
    </table></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset>
     <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
         <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="MasikAhwalYear" DataValueField="MasikAhwalYear" 
                    AutoPostBack="True" CssClass="dropown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT [MasikAhwalYear] FROM [Office] WHERE ([MasikAhwalYear] IS NOT NULL)"></asp:SqlDataSource>
            </div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1" Width="100%">
        <HeaderTemplate>
        <table class="table table-hover">
            <tr>
            <th class="style3">
               <asp:Label runat="server" ID="lblEmployeeName"  CssClass="control-label" text="Employee Name"></asp:Label>
                </th><th class="style4">
                <asp:Label runat="server" ID="lblSendingDate"  CssClass="control-label" text="Sending Date"></asp:Label>
                </th><th>
                <asp:Label runat="server" ID="lblEmployeeReport"  CssClass="control-label" text="EmployeeReport"></asp:Label>
                </th></tr>
            </table>
        </HeaderTemplate>
            <ItemTemplate>
            <table width="100%" class="table table-hover">
                <tr><td class="style3">
                <asp:Label ID="EmployeeName" runat="server" 
                    Text='<%# Eval("EmployeeName") %>' CssClass="control-label" />
                 </td>
            <td class="style4">
                <asp:Label ID="SendingDate" runat="server" 
                    Text='<%# Eval("SendingDate") %>' CssClass="-control-label" />
           </td>
           <td>
                <a href='MasikAhwal/<%# Eval("EmployeeReport") %>' ><asp:label ID="lbl1" runat="server" Text="Click To See"></asp:label></a>
        </td></tr></table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT EmployeeName, SendingDate, EmployeeReport FROM Office WHERE (MasikAhwalYear = @MasikAhwalYear)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="MasikAhwalYear" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </fieldset>
    </div>
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
    </form>
</body>
</html>
