<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalpragatipat.aspx.cs" Inherits="WebSquat__Guide_originalpragatipat" %>

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
                 <asp:Label ID="lblParticipants" runat="server" Text="Participants" CssClass="col-lg-3 control-label"></asp:Label>
                      <div class="col-lg-5">
                                <asp:TextBox ID="txtParticipants" runat="server"  CssClass="form-control"></asp:TextBox>           </div></div>
        <div class="form-group">
               <asp:Label ID="lblCertiNo" runat="server" Text="Certificate No" CssClass="col-lg-3 control-label"></asp:Label>
                     
            <div class="col-lg-5"> 
                                   <asp:TextBox ID="txtCertiNo" runat="server"  CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
           <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label"></asp:Label>
                     <div  class="col-lg-3">
             <asp:TextBox ID="txtDate" runat="server"  CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblExaminerName" runat="server" Text="Examiner Name"  CssClass="col-lg-3 control-label"></asp:Label>
                   <div  class="col-lg-5">
             <asp:TextBox ID="txtExaminerName" runat="server"  CssClass="form-control"></asp:TextBox>         </div> </div>
        <div class="form-group">
             <asp:Label ID="lblLetter" runat="server" Text="Letter"  CssClass="col-lg-3 control-label"></asp:Label>
            <div class="col-lg-5">
                <asp:FileUpload ID="fuPragatiPatLetter" runat="server" 
                    CssClass="form-control" />
           </div></div>  
        <div class="form-group">
                <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
    </div>    <hr />
        <asp:SqlDataSource ID="SqldsPragatiPat" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [SchoolTable] ([EmailId], [Password], [PragatiPatParticipants], [PragatiPatCertificateNo], [PragatiPatDate], [PragatiPatExaminerName], [PragatiPatLetter]) VALUES (@EmailId, @Password, @PragatiPatParticipants, @PragatiPatCertificateNo, @PragatiPatDate, @PragatiPatExaminerName, @PragatiPatLetter)" 
            SelectCommand="SELECT [SrNo], [EmailId], [Password], [PragatiPatParticipants], [PragatiPatCertificateNo], [PragatiPatDate], [PragatiPatExaminerName], [PragatiPatLetter] FROM [SchoolTable]" 
            
            UpdateCommand="UPDATE [SchoolTable] SET [PragatiPatParticipants] = @PragatiPatParticipants, [PragatiPatCertificateNo] = @PragatiPatCertificateNo, [PragatiPatDate] = @PragatiPatDate, [PragatiPatExaminerName] = @PragatiPatExaminerName, [PragatiPatLetter] = @PragatiPatLetter WHERE [EmailId] = @EmailId AND [Password] = @Password">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="PragatiPatParticipants" Type="Int32" />
                <asp:Parameter Name="PragatiPatCertificateNo" Type="String" />
                <asp:Parameter DbType="Date" Name="PragatiPatDate" />
                <asp:Parameter Name="PragatiPatExaminerName" Type="String" />
                <asp:Parameter Name="PragatiPatLetter" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:SessionParameter Name="EmailId" SessionField="EmailID" Type="String" />
                <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
                <asp:ControlParameter ControlID="txtParticipants" Name="PragatiPatParticipants" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtCertiNo" Name="PragatiPatCertificateNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="PragatiPatDate" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtExaminerName" Name="PragatiPatExaminerName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuPragatiPatLetter" Name="PragatiPatLetter" 
                    PropertyName="FileName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
                </div></div> 
    </fieldset>
    </form>
        </div>
</body>
</html>


