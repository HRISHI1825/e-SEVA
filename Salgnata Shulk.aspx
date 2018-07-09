<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Salgnata Shulk.aspx.cs" Inherits="Salgnata_Shulk" %>

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
            width: 127px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
       <center> <table width="100%">
    <tr><td class="style1"></td><td align="center">
          <h1>Salagnata Shulk Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/Salgnata Shulk1.aspx" 
                  ToolTip="Enter New Salagnata Shulk Information" Width="60px" /></td>
          </tr>
    </table>
        </center>
        </div>        
    <div class="jumbotron">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
         <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
                    DataTextField="SalgnataYear" DataValueField="SalgnataYear"  CssClass="dropdown"
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sqlds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [SalgnataYear] FROM [Office] WHERE ([SalgnataYear] IS NOT NULL)"></asp:SqlDataSource>
            </div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1" Width="100%">
            <ItemTemplate>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSalgnataYear"  CssClass="col-lg-3 control-label" text="Year"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SalgnataYear" runat="server" 
                    Text='<%# Eval("SalgnataYear") %>' CssClass="form-control" />
                    </div>
            </div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblSalgnataAmount"  CssClass="col-lg-3 control-label" text="Amount"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SalgnataAmount" runat="server" 
                    Text='<%# Eval("SalgnataAmount") %>' CssClass="form-control" />
                    </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblSalgnataReceiptNo"  CssClass="col-lg-3 control-label" text="Receipt No"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SalgnataReceiptNo" runat="server" 
                    Text='<%# Eval("SalgnataReceiptNo") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblSalgnataReceiptNoDate"  CssClass="col-lg-3 control-label" text="Receipt No Date"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="SalgnataReceiptNoDate" runat="server" 
                    Text='<%# Eval("SalgnataReceiptNoDate") %>' CssClass="form-control" />
            </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [SalgnataYear], [SalgnataAmount], [SalgnataReceiptNo], [SalgnataReceiptNoDate] FROM [Office] WHERE ([SalgnataYear] = @SalgnataYear)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" 
                    Name="SalgnataYear" PropertyName="SelectedValue" Type="String" />
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
