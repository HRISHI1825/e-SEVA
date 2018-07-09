<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Statistical2.aspx.cs" Inherits="Statistical2" %>

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
<center><h1>Statistical Data</h1></center>
</div>
<div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Cub" HeaderText="Cub" SortExpression="Cub" />
                <asp:BoundField DataField="Scout" HeaderText="Scout" SortExpression="Scout" />
                <asp:BoundField DataField="Rover" HeaderText="Rover" SortExpression="Rover" />
                <asp:BoundField DataField="Bulbul" HeaderText="Bulbul" 
                    SortExpression="Bulbul" />
                <asp:BoundField DataField="Guide" HeaderText="Guide" SortExpression="Guide" />
                <asp:BoundField DataField="Ranger" HeaderText="Ranger" 
                    SortExpression="Ranger" />
                <asp:BoundField DataField="Bunny" HeaderText="Bunny" SortExpression="Bunny" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Year], [Cub], [Scout], [Rover], [Bulbul], [Guide], [Ranger], [Bunny], [Total], [SrNo] FROM [StatisticalData]" 
            DeleteCommand="DELETE FROM [StatisticalData] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StatisticalData] ([Year], [Cub], [Scout], [Rover], [Bulbul], [Guide], [Ranger], [Bunny], [Total]) VALUES (@Year, @Cub, @Scout, @Rover, @Bulbul, @Guide, @Ranger, @Bunny, @Total)" 
            UpdateCommand="UPDATE [StatisticalData] SET [Year] = @Year, [Cub] = @Cub, [Scout] = @Scout, [Rover] = @Rover, [Bulbul] = @Bulbul, [Guide] = @Guide, [Ranger] = @Ranger, [Bunny] = @Bunny, [Total] = @Total WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Cub" Type="Int32" />
                <asp:Parameter Name="Scout" Type="Int32" />
                <asp:Parameter Name="Rover" Type="Int32" />
                <asp:Parameter Name="Bulbul" Type="Int32" />
                <asp:Parameter Name="Guide" Type="Int32" />
                <asp:Parameter Name="Ranger" Type="Int32" />
                <asp:Parameter Name="Bunny" Type="Int32" />
                <asp:Parameter Name="Total" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Cub" Type="Int32" />
                <asp:Parameter Name="Scout" Type="Int32" />
                <asp:Parameter Name="Rover" Type="Int32" />
                <asp:Parameter Name="Bulbul" Type="Int32" />
                <asp:Parameter Name="Guide" Type="Int32" />
                <asp:Parameter Name="Ranger" Type="Int32" />
                <asp:Parameter Name="Bunny" Type="Int32" />
                <asp:Parameter Name="Total" Type="Int32" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Cub1" HeaderText="Cub" SortExpression="Cub1" />
                <asp:BoundField DataField="Scout1" HeaderText="Scout" SortExpression="Scout1" />
                <asp:BoundField DataField="Rover1" HeaderText="Rover" SortExpression="Rover1" />
                <asp:BoundField DataField="Bulbul1" HeaderText="Bulbul" 
                    SortExpression="Bulbul1" />
                <asp:BoundField DataField="Guide1" HeaderText="Guide" SortExpression="Guide1" />
                <asp:BoundField DataField="Ranger1" HeaderText="Ranger" 
                    SortExpression="Ranger1" />
                <asp:BoundField DataField="Bunny1" HeaderText="Bunny" SortExpression="Bunny1" />
                <asp:BoundField DataField="Total1" HeaderText="Total" SortExpression="Total1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Year], [Cub1], [Scout1], [Rover1], [Bulbul1], [Guide1], [Ranger1], [Bunny1], [Total1], [SrNo] FROM [StatisticalData]" 
            DeleteCommand="DELETE FROM [StatisticalData] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StatisticalData] ([Year], [Cub1], [Scout1], [Rover1], [Bulbul1], [Guide1], [Ranger1], [Bunny1], [Total1]) VALUES (@Year, @Cub1, @Scout1, @Rover1, @Bulbul1, @Guide1, @Ranger1, @Bunny1, @Total1)" 
            UpdateCommand="UPDATE [StatisticalData] SET [Year] = @Year, [Cub1] = @Cub1, [Scout1] = @Scout1, [Rover1] = @Rover1, [Bulbul1] = @Bulbul1, [Guide1] = @Guide1, [Ranger1] = @Ranger1, [Bunny1] = @Bunny1, [Total1] = @Total1 WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Cub1" Type="Int32" />
                <asp:Parameter Name="Scout1" Type="Int32" />
                <asp:Parameter Name="Rover1" Type="Int32" />
                <asp:Parameter Name="Bulbul1" Type="Int32" />
                <asp:Parameter Name="Guide1" Type="Int32" />
                <asp:Parameter Name="Ranger1" Type="Int32" />
                <asp:Parameter Name="Bunny1" Type="Int32" />
                <asp:Parameter Name="Total1" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Cub1" Type="Int32" />
                <asp:Parameter Name="Scout1" Type="Int32" />
                <asp:Parameter Name="Rover1" Type="Int32" />
                <asp:Parameter Name="Bulbul1" Type="Int32" />
                <asp:Parameter Name="Guide1" Type="Int32" />
                <asp:Parameter Name="Ranger1" Type="Int32" />
                <asp:Parameter Name="Bunny1" Type="Int32" />
                <asp:Parameter Name="Total1" Type="Int32" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       <br /><br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="TotalUnits" HeaderText="Total Units" 
                    SortExpression="TotalUnits" />
                <asp:BoundField DataField="CollectedFees" HeaderText="Collected Fees" 
                    SortExpression="CollectedFees" />
                <asp:BoundField DataField="TotalParticipatedSchools" 
                    HeaderText="Total Participated Schools" 
                    SortExpression="TotalParticipatedSchools" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Year], [TotalUnits], [CollectedFees], [TotalParticipatedSchools], [SrNo] FROM [StatisticalData]" 
            DeleteCommand="DELETE FROM [StatisticalData] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StatisticalData] ([Year], [TotalUnits], [CollectedFees], [TotalParticipatedSchools]) VALUES (@Year, @TotalUnits, @CollectedFees, @TotalParticipatedSchools)" 
            UpdateCommand="UPDATE [StatisticalData] SET [Year] = @Year, [TotalUnits] = @TotalUnits, [CollectedFees] = @CollectedFees, [TotalParticipatedSchools] = @TotalParticipatedSchools WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="TotalUnits" Type="Int32" />
                <asp:Parameter Name="CollectedFees" Type="Int32" />
                <asp:Parameter Name="TotalParticipatedSchools" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="TotalUnits" Type="Int32" />
                <asp:Parameter Name="CollectedFees" Type="Int32" />
                <asp:Parameter Name="TotalParticipatedSchools" Type="Int32" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="PrimarySchool" HeaderText="Primary School" 
                    SortExpression="PrimarySchool" />
                <asp:BoundField DataField="SecondarySchool" HeaderText="Secondary School" 
                    SortExpression="SecondarySchool" />
                <asp:BoundField DataField="TotalMembers" HeaderText="Total Members" 
                    SortExpression="TotalMembers" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Year], [PrimarySchool], [SecondarySchool], [TotalMembers], [SrNo] FROM [StatisticalData]" 
            DeleteCommand="DELETE FROM [StatisticalData] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StatisticalData] ([Year], [PrimarySchool], [SecondarySchool], [TotalMembers]) VALUES (@Year, @PrimarySchool, @SecondarySchool, @TotalMembers)" 
            UpdateCommand="UPDATE [StatisticalData] SET [Year] = @Year, [PrimarySchool] = @PrimarySchool, [SecondarySchool] = @SecondarySchool, [TotalMembers] = @TotalMembers WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="PrimarySchool" Type="Int32" />
                <asp:Parameter Name="SecondarySchool" Type="Int32" />
                <asp:Parameter Name="TotalMembers" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="PrimarySchool" Type="Int32" />
                <asp:Parameter Name="SecondarySchool" Type="Int32" />
                <asp:Parameter Name="TotalMembers" Type="Int32" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </center>
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
    </form>
    </div>
</body>
</html>
