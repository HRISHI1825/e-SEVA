<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StateCommittee1.aspx.cs" Inherits="StateCommittee1" %>

<!DOCTYPE html>

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
          <h1>State Committees</h1></td>
          <td align="right">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
                  ImageUrl="~/icons/next.png" PostBackUrl="~/StateCommittee2.aspx" 
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
            DataTextField="StateMemberCommitteeName" 
            DataValueField="StateMemberCommitteeName" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Sqlds" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [StateMemberCommitteeName] FROM [Office] WHERE ([StateMemberCommitteeName] IS NOT NULL)">
        </asp:SqlDataSource>
    </div></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlCommittees" Width="100%">
        <Columns>
            <asp:BoundField DataField="StateMemberName" HeaderText="Member Name" 
                SortExpression="StateMemberName" />
            <asp:BoundField DataField="StateMemberHomeAddress" HeaderText="Home Address" 
                SortExpression="StateMemberHomeAddress" />
            <asp:BoundField DataField="StateMemberSchoolName" HeaderText="School Name" 
                SortExpression="StateMemberSchoolName" />
            <asp:BoundField DataField="StateMemberSchoolAddress" 
                HeaderText="School Address" SortExpression="StateMemberSchoolAddress" />
            <asp:BoundField DataField="StateMemberPositionName" HeaderText="Position Name" 
                SortExpression="StateMemberPositionName" />
            <asp:BoundField DataField="StateMemberDuration" HeaderText="Duration" 
                SortExpression="StateMemberDuration" />
            <asp:BoundField DataField="StateMemberDateOfBirth" HeaderText="Date Of Birth" 
                SortExpression="StateMemberDateOfBirth" />
            <asp:BoundField DataField="StateMemberContactNo" HeaderText="ContactNo." 
                SortExpression="StateMemberContactNo" />
            <asp:BoundField DataField="StateMemberEmailId" HeaderText="EmailId" 
                SortExpression="StateMemberEmailId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlCommittees" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [StateMemberName], [StateMemberHomeAddress], [StateMemberSchoolName], [StateMemberSchoolAddress], [StateMemberPositionName], [StateMemberDuration], [StateMemberDateOfBirth], [StateMemberContactNo], [StateMemberEmailId], [SrNo] FROM [Office] WHERE (([StateMemberCommitteeName] = @StateMemberCommitteeName) AND ([StateMemberName] IS NOT NULL))" 
        DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
        InsertCommand="INSERT INTO [Office] ([StateMemberName], [StateMemberHomeAddress], [StateMemberSchoolName], [StateMemberSchoolAddress], [StateMemberPositionName], [StateMemberDuration], [StateMemberDateOfBirth], [StateMemberContactNo], [StateMemberEmailId]) VALUES (@StateMemberName, @StateMemberHomeAddress, @StateMemberSchoolName, @StateMemberSchoolAddress, @StateMemberPositionName, @StateMemberDuration, @StateMemberDateOfBirth, @StateMemberContactNo, @StateMemberEmailId)" 
        
        UpdateCommand="UPDATE [Office] SET [StateMemberName] = @StateMemberName, [StateMemberHomeAddress] = @StateMemberHomeAddress, [StateMemberSchoolName] = @StateMemberSchoolName, [StateMemberSchoolAddress] = @StateMemberSchoolAddress, [StateMemberPositionName] = @StateMemberPositionName, [StateMemberDuration] = @StateMemberDuration, [StateMemberDateOfBirth] = @StateMemberDateOfBirth, [StateMemberContactNo] = @StateMemberContactNo, [StateMemberEmailId] = @StateMemberEmailId WHERE [SrNo] = @SrNo">
        <DeleteParameters>
            <asp:Parameter Name="SrNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StateMemberName" Type="String" />
            <asp:Parameter Name="StateMemberHomeAddress" Type="String" />
            <asp:Parameter Name="StateMemberSchoolName" Type="String" />
            <asp:Parameter Name="StateMemberSchoolAddress" Type="String" />
            <asp:Parameter Name="StateMemberPositionName" Type="String" />
            <asp:Parameter Name="StateMemberDuration" Type="String" />
            <asp:Parameter DbType="Date" Name="StateMemberDateOfBirth" />
            <asp:Parameter Name="StateMemberContactNo" Type="String" />
            <asp:Parameter Name="StateMemberEmailId" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="StateMemberCommitteeName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="StateMemberName" Type="String" />
            <asp:Parameter Name="StateMemberHomeAddress" Type="String" />
            <asp:Parameter Name="StateMemberSchoolName" Type="String" />
            <asp:Parameter Name="StateMemberSchoolAddress" Type="String" />
            <asp:Parameter Name="StateMemberPositionName" Type="String" />
            <asp:Parameter Name="StateMemberDuration" Type="String" />
            <asp:Parameter DbType="Date" Name="StateMemberDateOfBirth" />
            <asp:Parameter Name="StateMemberContactNo" Type="String" />
            <asp:Parameter Name="StateMemberEmailId" Type="String" />
            <asp:Parameter Name="SrNo" Type="Int32" />
        </UpdateParameters>
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
