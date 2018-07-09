<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalnewkharikamai.aspx.cs" Inherits="WebSquat__Guide_originalnewkharikamai" %>

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
                <asp:Label ID="lblEmailId" runat="server" Text="EmailId" CssClass="col-lg-3 control-label  "></asp:Label>
                
            <div class="col-lg-5">
                  <asp:TextBox ID="txtEmailId" runat="Server" CssClass="form-control"></asp:TextBox>
            </div></div>
     <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3 control-label  "></asp:Label>
                
            <div class="col-lg-5">
                  <asp:TextBox ID="txtPasword" runat="Server" CssClass="form-control"></asp:TextBox>
            </div></div>     
        <div class="form-group">
                <asp:Label ID="lblTotalContri" runat="server" Text="Total Contribution" CssClass="col-lg-3 control-label"></asp:Label>
           
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
        <div class="form-group">
             <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
                 <br />
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

