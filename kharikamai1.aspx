<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kharikamai1.aspx.cs" Inherits="WebSquat__Guide_originalnewkharikamai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
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
                <asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="col-lg-3 control-label  "></asp:Label>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmailId" ErrorMessage="Enter valid EmailId" 
                    Font-Bold="True" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
            <div class="col-lg-5">
                  <asp:TextBox ID="txtEmailId" runat="Server" CssClass="form-control"></asp:TextBox>
            </div></div>
     <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3 control-label  "></asp:Label>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPasword" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                
            <div class="col-lg-5">
                  <asp:TextBox ID="txtPasword" runat="Server" CssClass="form-control" 
                      TextMode="Password"></asp:TextBox>
            </div></div>     
        <div class="form-group">
                <asp:Label ID="lblTotalContri" runat="server" Text="Total Contribution" CssClass="col-lg-3 control-label"></asp:Label>
           
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtTotalContri" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           
           <div class="col-lg-5">
            <asp:TextBox ID="txtTotalContri" runat="Server" CssClass="form-control"></asp:TextBox>
               <asp:Button ID="Button1" runat="server" Text="Get Result" 
                   CssClass="btn btn-primary" onclick="Button1_Click" />
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblUnitContri" runat="server" Text="Unit Contribution" CssClass="col-lg-3 control-label  "></asp:Label>
                
            <div class="col-lg-5">
                  <asp:TextBox ID="txtIUnitContri" runat="Server" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblDistContri" runat="server" Text="District Contribution" CssClass="col-lg-3 control-label  "></asp:Label>
           <div  class="col-lg-5">
              <asp:TextBox ID="txtDistContri" runat="Server" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
                                <asp:Label ID="lblStateContri" runat="server" Text="State Contribution" CssClass="col-lg-3 control-label  "></asp:Label>
              
            <div  class="col-lg-5">
  <asp:TextBox ID="txtStateContri" runat="Server" CssClass="form-control"></asp:TextBox>
           </div> </div>
           <hr />
        <div class="form-group">
             <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
                 <asp:SqlDataSource ID="SqlDsKhariKamai" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                     DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
                     InsertCommand="INSERT INTO [SchoolTable] ([khTotalContri], [khUnitContri], [khDistrictContri], [khStateContri], [EmailId], [Password]) VALUES (@khTotalContri, @khUnitContri, @khDistrictContri, @khStateContri, @EmailId, @Password)" 
                     SelectCommand="SELECT [khTotalContri], [khUnitContri], [khDistrictContri], [khStateContri], [SrNo], [EmailId], [Password] FROM [SchoolTable]" 
                     UpdateCommand="UPDATE [SchoolTable] SET [khTotalContri] = @khTotalContri, [khUnitContri] = @khUnitContri, [khDistrictContri] = @khDistrictContri, [khStateContri] = @khStateContri WHERE [EmailId] = @EmailId AND [Password] = @Password">
                     <DeleteParameters>
                         <asp:Parameter Name="SrNo" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="khTotalContri" Type="Int32" />
                         <asp:Parameter Name="khUnitContri" Type="Int32" />
                         <asp:Parameter Name="khDistrictContri" Type="Int32" />
                         <asp:Parameter Name="khStateContri" Type="Int32" />
                         <asp:Parameter Name="EmailId" Type="String" />
                         <asp:Parameter Name="Password" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:ControlParameter ControlID="txtTotalContri" Name="khTotalContri" 
                             PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="txtIUnitContri" Name="khUnitContri" 
                             PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="txtDistContri" Name="khDistrictContri" 
                             PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="txtStateContri" Name="khStateContri" 
                             PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                             Type="String" />
                         <asp:ControlParameter ControlID="txtPasword" Name="Password" 
                             PropertyName="Text" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/KhariKamai.aspx">Back</asp:HyperLink></center>
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

