<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Authentication.aspx.cs" Inherits="Authentication" %>

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
 <center>
     <h1>Office Details</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
             <asp:Label ID="lblDistrict" runat="server"  class="col-lg-3 control-label" Text="District"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDistrict" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtDistrict" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblAddress" runat="server"  class="col-lg-3 control-label" Text="Address"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress"  class="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblContactNo" runat="server"   class="col-lg-3 control-label" Text="Contact No."></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtContactNo" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtContactNo" runat="server" class="form-control"></asp:TextBox>
          </div> </div>
          <div class="form-group">
             <asp:Label ID="lblEmailId" runat="server"   class="col-lg-3 control-label" Text="Email Id"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailId" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtEmailId" runat="server" class="form-control"></asp:TextBox>
          </div> </div>
          <div class="form-group">
             <asp:Label ID="lblPassword" runat="server"   class="col-lg-3 control-label" Text="Password"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
          </div> </div>
          <div class="form-group">
             <asp:Label ID="lblDistrictSignature" runat="server"   class="col-lg-3 control-label" Text="District Signature"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDistrictSignature" ForeColor="Red" >*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
               <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
          </div> </div>
       
       <hr />
       <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
            <asp:SqlDataSource ID="Sqlds" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [AuthTable] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [AuthTable] ([District], [Address], [ContactNo], [EmailID], [Password], [DistrictSignature]) VALUES (@District, @Address, @ContactNo, @EmailID, @Password, @DistrictSignature)" 
                SelectCommand="SELECT * FROM [AuthTable]" 
                
                
                UpdateCommand="UPDATE [AuthTable] SET [District] = @District, [Address] = @Address, [ContactNo] = @ContactNo, [EmailID] = @EmailID, [Password] = @Password, [DistrictSignature] = @DistrictSignature WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtDistrict" Name="District" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="Address" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="txtContactNo" Name="ContactNo" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEmailId" Name="EmailID" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="FileUpload1" Name="DistrictSignature" 
                        PropertyName="FileName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="District" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter Name="EmailID" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="DistrictSignature" Type="String" />
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Sqlds0" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [EmailID], [Password] FROM [AuthTable]">
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
             Font-Size="Large" ForeColor="#0099FF" 
             NavigateUrl="~/DistrictCommittee1.aspx">Back</asp:HyperLink></center>
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
