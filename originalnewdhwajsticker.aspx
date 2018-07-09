<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalnewdhwajsticker.aspx.cs" Inherits="WebSquat__Guide_originaldhwajsticker" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                 <asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="col-lg-3 control-label"></asp:Label>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtEmailId"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3 control-label"></asp:Label>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtPassword"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblNoOfStickers" runat="server" Text="No Of Stickers" CssClass="col-lg-3 control-label"></asp:Label>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtNoOfStickers"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                 <asp:Label ID="lblFees" runat="server" Text="Fees" CssClass="col-lg-3 control-label"></asp:Label>
           <div class="col-lg-5">
            <asp:TextBox runat="server" ID="txtFees"  CssClass="form-control"></asp:TextBox>           
             </div></div>
        <div class="form-group">
                    <asp:Label ID="lblDistrictLevel" runat="server" Text="District Level" CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5"> 
                <asp:TextBox runat="server" ID="txtDistrictLevel"  CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblStateLevel" runat="server" Text="State Level" CssClass="col-lg-3 control-label"></asp:Label>
           <div  class="col-lg-5">
             <asp:TextBox runat="server" ID="txtStateLevel" CssClass="form-control"></asp:TextBox>
               </div>
            </div>
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
     
            <hr />
        <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div>
    </fieldset>
    </form>
        </div>
</body>
</html>

