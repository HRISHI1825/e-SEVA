<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VarshikAnudan2.aspx.cs" Inherits="VarshikAnudan2" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript">
    </script>
    <style type="text/css">
        .style1
        {
            width: 276px;
        }
        .style2
        {
            width: 429px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
 <center>
    <h1>Varshik Anudan Information</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset>
    <asp:DataList ID="d1" runat="server" DataSourceID="SqldsVarshikAnudan" Width="100%">
        <HeaderTemplate>
        <table width="100%"><tr><td class="style1">
            <asp:Label ID="lblVarshikAnudanDate" runat="server" Text="Date" CssClass="control-label  "></asp:Label> </td>
            <td class="style2"><asp:Label ID="lblVarshikAnudanAmount" runat="server" Text="Amount" CssClass="control-label  "></asp:Label>
            </td><td><asp:Label ID="lblUtilizationCertificate" runat="server" Text="Utilization Certificate" CssClass="control-label"></asp:Label> 
            </td></tr></table>
        </HeaderTemplate>
        <ItemTemplate>
            <table width="100%" class="table table-hover">
            <tr><td class="style1">
           <asp:Label ID="VarshikAnudanDate" runat="server" Text='<%#Eval("VarshikAnudanDate") %>' CssClass="control-label"></asp:Label> 
           </td>
           <td class="style2">
                   <asp:Label ID="VarshikAnudanAmount" runat="server" Text='<%#Eval("VarshikAnudanAmount") %>' CssClass="control-label"></asp:Label>
             </td>
             <td><a href='VarshikAnudan/<%#Eval("UtilizationCertificate") %>'><asp:Label ID="lbl" runat="server" Text="Click To See"></asp:Label></a>
             </td></tr></table>
             </ItemTemplate>
             </asp:DataList>
             <asp:SqlDataSource ID="SqldsVarshikAnudan" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
            SelectCommand="SELECT [VarshikAnudanDate], [VarshikAnudanAmount], [UtilizationCertificate] FROM [Office] WHERE ([VarshikAnudanDate] IS NOT NULL)">
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/VarshikAnudan.aspx">Back</asp:HyperLink></center>
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

