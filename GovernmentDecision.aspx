<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GovernmentDecision.aspx.cs" Inherits="GovernmentDecision" %>

<!DOCTYPE html>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 319px;
        }
        .style2
        {
            width: 415px;
        }
        .style3
        {
            width: 375px;
        }
        .style4
        {
            width: 314px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
 <center>
        
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>GRs</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/GovernmentDecision2.aspx" 
                  ToolTip="Enter New GR" Width="60px" /></td>
          </tr>
    </table>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqldsGr">
    <HeaderTemplate>
    <table  cellpadding="2" cellspacing="2" class="table table-striped table-hover">
 <tr>
     <th class="style3">
     <asp:Label ID="lblTopic" runat="server" Text="Topic" CssClass="control-label"></asp:Label>
     </th>
     <th class="style4">
     <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="control-label"></asp:Label>
     </th>
     <th>
     <asp:Label ID="lblGRs" runat="server" Text="GR's" CssClass="control-label"></asp:Label>
     </th></tr>
    </HeaderTemplate>
 <ItemTemplate >
 <table  cellpadding="2" cellspacing="2" class="table table-striped table-hover">
 <tr>
 <td class="style3"><asp:label ID="lblTopic1" runat="server" Text='<%#Eval("Topic") %>' CssClass="control-label"></asp:label></td>
 <td class="style4"><asp:Label ID="lblDate1" runat="server" Text='<%#Eval("GrDate") %>' CssClass="control-label" ></asp:Label></td>
 <td><a href='Gr/<%#Eval("Gr") %>'><asp:Label ID="lblGR" CssClass="control-label" runat="server" Text="GR"></asp:Label></a></td>
 </tr>
 </table>
 </ItemTemplate>
 <SeparatorTemplate>
    <hr size="1px" />
    </SeparatorTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="sqldsGr" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Topic], [GrDate], [Gr] FROM [Office] WHERE ([Topic] IS NOT NULL)"></asp:SqlDataSource>
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