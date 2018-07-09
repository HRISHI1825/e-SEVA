<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadCertificate.aspx.cs" Inherits="UploadCertificate" %>

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
</head>
<body>
<div class="jumbotron">
 <center>
        <h1>Upload Utilization Certificate</h1>
 </center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
<div class="jumbotron">
<form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblUpdate" runat="server" Text="Select Utilization Certificate" CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="fuUpload" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:FileUpload ID="fuUpload" runat="server" CssClass="form-control"></asp:FileUpload>
        </div></div>
    <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([VarshikAnudanDate], [UtilizationCertificate]) VALUES (@VarshikAnudanDate, @UtilizationCertificate)" 
            SelectCommand="SELECT [SrNo], [VarshikAnudanDate], [UtilizationCertificate] FROM [Office]" 
            
            UpdateCommand="UPDATE [Office] SET [UtilizationCertificate] = @UtilizationCertificate WHERE [VarshikAnudanDate] = @VarshikAnudanDate">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="VarshikAnudanDate" />
                <asp:Parameter Name="UtilizationCertificate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:QueryStringParameter DbType="Date" Name="VarshikAnudanDate" 
                    QueryStringField="VarshikAnudanDate" />
                <asp:ControlParameter ControlID="fuUpload" Name="UtilizationCertificate" 
                    PropertyName="FileName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div class="form-group">
              <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn2" runat="server" Text="Upload" CssClass="btn btn-primary" 
                      OnClick="btn2_Click" />
      </div>
            </div>
    
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
    </form>
    
    </div>
</body>
</html>
