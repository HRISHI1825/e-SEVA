<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dhwajsticker1.aspx.cs" Inherits="WebSquat__Guide_originaldhwajsticker" %>
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
                 <asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="Enter valid EmailId" 
                        Font-Bold="True" ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtEmailId"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtPassword"  CssClass="form-control" TextMode="Password"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblNoOfStickers" runat="server" Text="No Of Stickers" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtNoOfStickers" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtNoOfStickers"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblFees" runat="server" Text="Fees" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtFees" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtFees"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                    <asp:Label ID="lblDistrictLevel" runat="server" Text="District Level" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtDistrictLevel" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5"> 
                <asp:TextBox runat="server" ID="txtDistrictLevel"  CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblStateLevel" runat="server" Text="State Level" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtStateLevel" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
             <asp:TextBox runat="server" ID="txtStateLevel" CssClass="form-control"></asp:TextBox>
               </div>
            </div>
            <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
              <asp:SqlDataSource ID="SqldsDhwajSticker" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
                    InsertCommand="INSERT INTO [SchoolTable] ([EmailId], [Password], [NoOfStickers], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel]) VALUES (@EmailId, @Password, @NoOfStickers, @DhwajStickerFees, @DhwajStickerDistrictLevel, @DhwajStickerStateLevel)" 
                    SelectCommand="SELECT [SrNo], [EmailId], [Password], [NoOfStickers], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel] FROM [SchoolTable]" 
                    
            UpdateCommand="UPDATE [SchoolTable] SET [NoOfStickers] = @NoOfStickers, [DhwajStickerFees] = @DhwajStickerFees, [DhwajStickerDistrictLevel] = @DhwajStickerDistrictLevel, [DhwajStickerStateLevel] = @DhwajStickerStateLevel WHERE [EmailId] = @EmailId AND [Password] = @Password ">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="NoOfStickers" Type="Int32" />
                        <asp:Parameter Name="DhwajStickerFees" Type="Int32" />
                        <asp:Parameter Name="DhwajStickerDistrictLevel" Type="Int32" />
                        <asp:Parameter Name="DhwajStickerStateLevel" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtNoOfStickers" Name="NoOfStickers" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtFees" Name="DhwajStickerFees" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtDistrictLevel" 
                            Name="DhwajStickerDistrictLevel" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtStateLevel" Name="DhwajStickerStateLevel" 
                            PropertyName="Text" Type="Int32" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/DhwajSticker.aspx">Back</asp:HyperLink></center>
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

    </form>
        </div>
</body>
</html>

