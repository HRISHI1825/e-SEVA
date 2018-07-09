<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImportantOffices.aspx.cs" Inherits="ImportantOffices2" %>

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
    
</head>
<body>
<form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
 <center>
        
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>Important Offices</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/ImportantOffices1.aspx" 
                  ToolTip="Enter New Contact" Width="60px" /></td>
          </tr>
    </table>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <fieldset>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="OrganisationName" HeaderText="Organisation Name" 
                    SortExpression="OrganisationName" />
                <asp:BoundField DataField="OrganisationAddress" 
                    HeaderText="Organisation Address" SortExpression="OrganisationAddress" />
                <asp:BoundField DataField="HeadOfOrganisation" 
                    HeaderText="Head Of Organisation" SortExpression="HeadOfOrganisation" />
                <asp:BoundField DataField="HeadContactNo" HeaderText="Contact No." 
                    SortExpression="HeadContactNo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [OrganisationName], [OrganisationAddress], [HeadOfOrganisation], [HeadContactNo], [SrNo] FROM [Office] WHERE ([OrganisationName] IS NOT NULL)" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([OrganisationName], [OrganisationAddress], [HeadOfOrganisation], [HeadContactNo]) VALUES (@OrganisationName, @OrganisationAddress, @HeadOfOrganisation, @HeadContactNo)" 
            
            UpdateCommand="UPDATE [Office] SET [OrganisationName] = @OrganisationName, [OrganisationAddress] = @OrganisationAddress, [HeadOfOrganisation] = @HeadOfOrganisation, [HeadContactNo] = @HeadContactNo WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrganisationName" Type="String" />
                <asp:Parameter Name="OrganisationAddress" Type="String" />
                <asp:Parameter Name="HeadOfOrganisation" Type="String" />
                <asp:Parameter Name="HeadContactNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrganisationName" Type="String" />
                <asp:Parameter Name="OrganisationAddress" Type="String" />
                <asp:Parameter Name="HeadOfOrganisation" Type="String" />
                <asp:Parameter Name="HeadContactNo" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
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

