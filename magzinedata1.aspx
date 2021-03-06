﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="magzinedata1.aspx.cs" Inherits="WebSquat__Guide_originalnewmagzinedata" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script></head>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList2" 
                 ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Year" 
                    DataValueField="Year" AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT Year FROM SchoolTable WHERE (Year IS NOT NULL)">
                </asp:SqlDataSource>
            </div>
            </div>    
        <div class="form-group">
             <asp:Label ID="lblSchoolName" runat="server" Text="Select School Name" CssClass="col-lg-3 control-label"></asp:Label> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList1" 
                 ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="SchoolName" 
                    DataValueField="SchoolName" AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT SchoolName FROM SchoolTable WHERE (FeesPaidMagzine = @FeesPaidMagzine) AND (Year = @Year) AND (SchoolName IS NOT NULL)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="FeesPaidMagzine" 
                            PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            </div>    
        <div class="form-group">
             <asp:Label ID="lblFeesPaid" runat="server" Text="Fees Paid" CssClass="col-lg-3 control-label"></asp:Label> 
            <div class="col-lg-5">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes"  />
            </div>
            </div><hr />
            <div class="form-group">
                <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
    </div>
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
                    <asp:Parameter Name="Year" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CheckBox1" Name="FeesPaidMagzine" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Year" 
                        PropertyName="SelectedValue" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Magzine.aspx">Back</asp:HyperLink></center>
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

