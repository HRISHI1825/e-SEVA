<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalnewmagzinedata.aspx.cs" Inherits="WebSquat__Guide_originalnewmagzinedata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="../sample1/themes/bootstrap_9.css" rel="stylesheet" /><link href="../sample1/themes/custom_9.css" rel="stylesheet" />
  <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
</head>
<body>
    
    <div class="jumbotron">
 <center><h1>New Entry</h1>
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
            <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Year" 
                    DataValueField="Year" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable]">
                </asp:SqlDataSource>
            </div>
            </div>    
        <div class="form-group">
             <asp:Label ID="lblSchoolName" runat="server" Text="Select School Name" CssClass="col-lg-3 control-label"></asp:Label> 
            <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="SchoolName" 
                    DataValueField="SchoolName" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [SchoolName] FROM [SchoolTable] WHERE (([FeesPaidMagzine] = @FeesPaidMagzine) AND ([Year] = @Year))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="FeesPaidMagzine" 
                            PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            </div>    
        <div class="form-group">
             <asp:Label ID="lblFeesPaid" runat="server" Text="Fees Paid" CssClass="col-lg-3 control-label"></asp:Label> 
            <div class="col-lg-5">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
            </div>
            </div>
            <div class="form-group">
                <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
    </div>
            <hr />
            <asp:SqlDataSource ID="SqlDsMagzine" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [SchoolTable] ([FeesPaidMagzine], [SchoolName], [Year]) VALUES (@FeesPaidMagzine, @SchoolName, @Year)" 
            SelectCommand="SELECT [FeesPaidMagzine], [SchoolName], [Year], [SrNo] FROM [SchoolTable]" 
            
            
            UpdateCommand="UPDATE [SchoolTable] SET [FeesPaidMagzine] = @FeesPaidMagzine WHERE [SchoolName] = @SchoolName AND [Year] = @Year">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FeesPaidMagzine" Type="String" />
                    <asp:Parameter Name="SchoolName" Type="String" />
                    <asp:Parameter Name="Year" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CheckBox1" Name="FeesPaidMagzine" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                        PropertyName="SelectedValue" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />
       <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       </div>
                </div>      
    </fieldset>
    </form>
        </div>
</body>
</html>

