<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DistrictCommittee1.aspx.cs" Inherits="DistrictCommittee1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="themes2/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes2/carbon.js" type="text/javascript"></script>
    <script src="themes2/custom.js" type="text/javascript"></script>
    <link href="themes2/custom.min.css" rel="stylesheet" type="text/css" />
    <script src="themes2/gsd.js" type="text/javascript"></script>
    <script src="themes2/ga.js" type="text/javascript"></script>
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>    <title></title>
    </head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div class="jumbotron">
    <center>
    <table width="100%">
    <tr><td class="style2"></td><td align="center" class="style1">
          <h1>District Committees</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/DistrictCommitee2.aspx" 
                  ToolTip="Enter New Member or Committee" Width="60px" /></td>
          </tr>
    </table></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
<fieldset>
<div class="form-group">
    <asp:Label ID="lblCommitteeName" runat="server" Text="Select Committee Name" CssClass="col-lg-3 control-label"></asp:Label>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
            DataTextField="DistrictCommitteeName" 
            DataValueField="DistrictCommitteeName" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [DistrictCommitteeName] FROM [Office] WHERE ([DistrictCommitteeName] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlCommittees" Width="100%">
        <Columns>
            <asp:BoundField DataField="DistrictMemberName" HeaderText="Member Name" 
                SortExpression="DistrictMemberName" />
            <asp:BoundField DataField="DistrictMemberHomeAddress" HeaderText="Home Address" 
                SortExpression="DistrictMemberHomeAddress" />
            <asp:BoundField DataField="DistrictMemberSchoolName" HeaderText="School Name" 
                SortExpression="DistrictMemberSchoolName" />
            <asp:BoundField DataField="DistrictMemberSchoolAddress" 
                HeaderText="School Address" SortExpression="DistrictMemberSchoolAddress" />
            <asp:BoundField DataField="DistrictMemberPositionName" 
                HeaderText="Position Name" SortExpression="DistrictMemberPositionName" />
            <asp:BoundField DataField="DistrictMemberDuration" HeaderText="Duration" 
                SortExpression="DistrictMemberDuration" />
            <asp:BoundField DataField="DistrictMemberDateOfBirth" 
                HeaderText="Date Of Birth" 
                SortExpression="DistrictMemberDateOfBirth" />
            <asp:BoundField DataField="DistrictMemberContactNo" HeaderText="Contact No." 
                SortExpression="DistrictMemberContactNo" />
            <asp:BoundField DataField="DistrictMemberEmailId" HeaderText="EmailId" 
                SortExpression="DistrictMemberEmailId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlCommittees" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT [DistrictMemberName], [DistrictMemberHomeAddress], [DistrictMemberSchoolName], [DistrictMemberSchoolAddress], [DistrictMemberPositionName], [DistrictMemberDuration], [DistrictMemberDateOfBirth], [DistrictMemberContactNo], [DistrictMemberEmailId], [SrNo] FROM [Office] WHERE (([DistrictCommitteeName] = @DistrictCommitteeName) AND ([DistrictMemberName] IS NOT NULL))" 
        DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
        InsertCommand="INSERT INTO [Office] ([DistrictMemberName], [DistrictMemberHomeAddress], [DistrictMemberSchoolName], [DistrictMemberSchoolAddress], [DistrictMemberPositionName], [DistrictMemberDuration], [DistrictMemberDateOfBirth], [DistrictMemberContactNo], [DistrictMemberEmailId]) VALUES (@DistrictMemberName, @DistrictMemberHomeAddress, @DistrictMemberSchoolName, @DistrictMemberSchoolAddress, @DistrictMemberPositionName, @DistrictMemberDuration, @DistrictMemberDateOfBirth, @DistrictMemberContactNo, @DistrictMemberEmailId)" 
        
        UpdateCommand="UPDATE [Office] SET [DistrictMemberName] = @DistrictMemberName, [DistrictMemberHomeAddress] = @DistrictMemberHomeAddress, [DistrictMemberSchoolName] = @DistrictMemberSchoolName, [DistrictMemberSchoolAddress] = @DistrictMemberSchoolAddress, [DistrictMemberPositionName] = @DistrictMemberPositionName, [DistrictMemberDuration] = @DistrictMemberDuration, [DistrictMemberDateOfBirth] = @DistrictMemberDateOfBirth, [DistrictMemberContactNo] = @DistrictMemberContactNo, [DistrictMemberEmailId] = @DistrictMemberEmailId WHERE [SrNo] = @SrNo">
        <DeleteParameters>
            <asp:Parameter Name="SrNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DistrictMemberName" Type="String" />
            <asp:Parameter Name="DistrictMemberHomeAddress" Type="String" />
            <asp:Parameter Name="DistrictMemberSchoolName" Type="String" />
            <asp:Parameter Name="DistrictMemberSchoolAddress" Type="String" />
            <asp:Parameter Name="DistrictMemberPositionName" Type="String" />
            <asp:Parameter Name="DistrictMemberDuration" Type="String" />
            <asp:Parameter DbType="Date" Name="DistrictMemberDateOfBirth" />
            <asp:Parameter Name="DistrictMemberContactNo" Type="String" />
            <asp:Parameter Name="DistrictMemberEmailId" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="DistrictCommitteeName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DistrictMemberName" Type="String" />
            <asp:Parameter Name="DistrictMemberHomeAddress" Type="String" />
            <asp:Parameter Name="DistrictMemberSchoolName" Type="String" />
            <asp:Parameter Name="DistrictMemberSchoolAddress" Type="String" />
            <asp:Parameter Name="DistrictMemberPositionName" Type="String" />
            <asp:Parameter Name="DistrictMemberDuration" Type="String" />
            <asp:Parameter DbType="Date" Name="DistrictMemberDateOfBirth" />
            <asp:Parameter Name="DistrictMemberContactNo" Type="String" />
            <asp:Parameter Name="DistrictMemberEmailId" Type="String" />
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
