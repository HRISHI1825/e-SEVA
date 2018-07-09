<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjivanSabasadYadi.aspx.cs" Inherits="AjivanSabasadYadi1" %>

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
    <center><table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Life Members Information</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/AjivanSabhasadYadi1.aspx" 
                  ToolTip="Enter New Member" Width="60px" /></td>
          </tr>
    </table></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%; height: 30px;"></div>
</div>
    <div class="jumbotron">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sqlds1" 
            Width="100%">
            <Columns>
                <asp:BoundField DataField="MemberName" HeaderText="Member Name" 
                    SortExpression="MemberName" />
                <asp:BoundField DataField="MemberAddress" HeaderText="Member Address" 
                    SortExpression="MemberAddress" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" 
                    SortExpression="ContactNumber" />
                <asp:BoundField DataField="MembershipDate" HeaderText="Membership Date" 
                    SortExpression="MembershipDate" />
                <asp:BoundField DataField="EmailId" HeaderText="Email Id" 
                    SortExpression="EmailId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT [MemberName], [MemberAddress], [ContactNumber], [MembershipDate], [EmailId], [SrNo] FROM [Office] WHERE ([MemberName] IS NOT NULL)" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([MemberName], [MemberAddress], [ContactNumber], [MembershipDate], [EmailId]) VALUES (@MemberName, @MemberAddress, @ContactNumber, @MembershipDate, @EmailId)" 
            
            UpdateCommand="UPDATE [Office] SET [MemberName] = @MemberName, [MemberAddress] = @MemberAddress, [ContactNumber] = @ContactNumber, [MembershipDate] = @MembershipDate, [EmailId] = @EmailId WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MemberName" Type="String" />
                <asp:Parameter Name="MemberAddress" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="MembershipDate" />
                <asp:Parameter Name="EmailId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MemberName" Type="String" />
                <asp:Parameter Name="MemberAddress" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="MembershipDate" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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

