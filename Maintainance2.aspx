<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maintainance2.aspx.cs" Inherits="Maintainance2" %>

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
<form id="form1" runat="server" class="form-horizontal">
<div class="jumbotron">
  <center>  
  
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Maintenance Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/Maintainance.aspx" 
                  ToolTip="Enter New Information" Width="60px" /></td>
          </tr>
    </table>
      </center>
      </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
        <div class="jumbotron">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="MaintainanceYear" 
                DataValueField="MaintainanceYear" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [MaintainanceYear] FROM [Office]">
            </asp:SqlDataSource>
        </div></div>
        <div class="form-group">
     <asp:Label ID="lblSelectBillType" runat="server" Text="Select Bill Type" 
            CssClass="col-lg-3 control-label"></asp:Label>
    <div class="col-lg-5">
       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown">
           <asp:ListItem>Electric Bill</asp:ListItem>
           <asp:ListItem>Water Bill</asp:ListItem>
           <asp:ListItem>Telephone Bill</asp:ListItem>
           <asp:ListItem>Tax Bill</asp:ListItem>
           <asp:ListItem></asp:ListItem>
         </asp:DropDownList>            
          </div>
    </div>
    
        <asp:GridView ID="GridView1" runat="server" Width="50%" 
            AutoGenerateColumns="False" 
            DataSourceID="Sqlds">
            <Columns>
                <asp:BoundField DataField="MaintainanceDate" HeaderText="Date" 
                    SortExpression="MaintainanceDate" />
                <asp:BoundField DataField="MaintainanceAmount" HeaderText="Amount" 
                    SortExpression="MaintainanceAmount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
            
            SelectCommand="SELECT [MaintainanceDate], [MaintainanceAmount] FROM [Office] WHERE (([MaintainanceYear] = @MaintainanceYear) AND ([MaintainanceType] = @MaintainanceType))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="MaintainanceYear" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="MaintainanceType" 
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
