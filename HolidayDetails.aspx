<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HolidayDetails.aspx.cs" Inherits="HolidayDetails" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
</head>
<body>
     <div class="jumbotron">
 <center><h1>Employee Leave Information</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
    <div class="col-lg-5">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="HolidayYear" 
            DataValueField="HolidayYear" AutoPostBack="True" CssClass="dropdown">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [HolidayYear] FROM [Office] WHERE ([HolidayYear] IS NOT NULL)"></asp:SqlDataSource>
    </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="HolidayYear" HeaderText="Year" 
                    SortExpression="HolidayYear" />
                <asp:BoundField DataField="HolidayEmployeeName" 
                    HeaderText="Employee Name" SortExpression="HolidayEmployeeName" />
                <asp:BoundField DataField="Arjit" HeaderText="Arjit" SortExpression="Arjit" />
                <asp:BoundField DataField="Vaidyakiya" HeaderText="Vaidyakiya" 
                    SortExpression="Vaidyakiya" />
                <asp:BoundField DataField="Kirkod" HeaderText="Kirkod" 
                    SortExpression="Kirkod" />
                <asp:BoundField DataField="HolidayTakenArjit" HeaderText="Arjit" 
                    SortExpression="HolidayTakenArjit" />
                <asp:BoundField DataField="HolidayTakenVaidyakiya" 
                    HeaderText="Vaidyakiya" SortExpression="HolidayTakenVaidyakiya" />
                <asp:BoundField DataField="HolidayTakenKirkod" HeaderText="Kirkod" 
                    SortExpression="HolidayTakenKirkod" />
                <asp:BoundField DataField="RemainingArjit" HeaderText="Arjit" 
                    SortExpression="RemainingArjit" />
                <asp:BoundField DataField="RemainingVaidyakiya" 
                    HeaderText="Vaidyakiya" SortExpression="RemainingVaidyakiya" />
                <asp:BoundField DataField="RemainingKirkod" HeaderText="Kirkod" 
                    SortExpression="RemainingKirkod" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT [HolidayYear], [HolidayEmployeeName], [Arjit], [Vaidyakiya], [Kirkod], [HolidayTakenArjit], [HolidayTakenVaidyakiya], [HolidayTakenKirkod], [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod], [SrNo] FROM [Office] WHERE ([HolidayYear] = @HolidayYear)" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([HolidayYear], [HolidayEmployeeName], [Arjit], [Vaidyakiya], [Kirkod], [HolidayTakenArjit], [HolidayTakenVaidyakiya], [HolidayTakenKirkod], [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod]) VALUES (@HolidayYear, @HolidayEmployeeName, @Arjit, @Vaidyakiya, @Kirkod, @HolidayTakenArjit, @HolidayTakenVaidyakiya, @HolidayTakenKirkod, @RemainingArjit, @RemainingVaidyakiya, @RemainingKirkod)" 
            UpdateCommand="UPDATE [Office] SET [HolidayYear] = @HolidayYear, [HolidayEmployeeName] = @HolidayEmployeeName, [Arjit] = @Arjit, [Vaidyakiya] = @Vaidyakiya, [Kirkod] = @Kirkod, [HolidayTakenArjit] = @HolidayTakenArjit, [HolidayTakenVaidyakiya] = @HolidayTakenVaidyakiya, [HolidayTakenKirkod] = @HolidayTakenKirkod, [RemainingArjit] = @RemainingArjit, [RemainingVaidyakiya] = @RemainingVaidyakiya, [RemainingKirkod] = @RemainingKirkod WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HolidayYear" Type="String" />
                <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                <asp:Parameter Name="Arjit" Type="String" />
                <asp:Parameter Name="Vaidyakiya" Type="String" />
                <asp:Parameter Name="Kirkod" Type="String" />
                <asp:Parameter Name="HolidayTakenArjit" Type="String" />
                <asp:Parameter Name="HolidayTakenVaidyakiya" Type="String" />
                <asp:Parameter Name="HolidayTakenKirkod" Type="String" />
                <asp:Parameter Name="RemainingArjit" Type="String" />
                <asp:Parameter Name="RemainingVaidyakiya" Type="String" />
                <asp:Parameter Name="RemainingKirkod" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="HolidayYear" Type="String" />
                <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                <asp:Parameter Name="Arjit" Type="String" />
                <asp:Parameter Name="Vaidyakiya" Type="String" />
                <asp:Parameter Name="Kirkod" Type="String" />
                <asp:Parameter Name="HolidayTakenArjit" Type="String" />
                <asp:Parameter Name="HolidayTakenVaidyakiya" Type="String" />
                <asp:Parameter Name="HolidayTakenKirkod" Type="String" />
                <asp:Parameter Name="RemainingArjit" Type="String" />
                <asp:Parameter Name="RemainingVaidyakiya" Type="String" />
                <asp:Parameter Name="RemainingKirkod" Type="String" />
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
    </form>
    </div>
</body>
</html>
