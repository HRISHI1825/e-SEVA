<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pragatipat1.aspx.cs" Inherits="WebSquat__Guide_originalpragatipat" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
                 <asp:Label ID="lblEmailId" runat="server" Text="Email Id" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                     ControlToValidate="txtEmailId" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ControlToValidate="txtEmailId" ErrorMessage="Enter valid EmailId" 
                     Font-Bold="True" ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      <div class="col-lg-5">
                                <asp:TextBox ID="txtEmailId" runat="server"  CssClass="form-control"></asp:TextBox>           </div></div>
        <div class="form-group">
                 <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                     ControlToValidate="txtPassword" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5">
                                <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control" 
                                    TextMode="Password"></asp:TextBox>           </div></div>
        
        <div class="form-group">
                 <asp:Label ID="lblParticipants" runat="server" Text="Participants" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                     ControlToValidate="txtParticipants" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5">
                                <asp:TextBox ID="txtParticipants" runat="server"  CssClass="form-control"></asp:TextBox>           </div></div>
        <div class="form-group">
               <asp:Label ID="lblCertiNo" runat="server" Text="Certificate No" CssClass="col-lg-3 control-label"></asp:Label>
                     
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                   ControlToValidate="txtCertiNo" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                     
            <div class="col-lg-5"> 
                                   <asp:TextBox ID="txtCertiNo" runat="server"  CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
           <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ControlToValidate="txtDate" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                     <div  class="col-lg-5">
             <asp:TextBox ID="txtDate" runat="server"  CssClass="form-control"></asp:TextBox>
                         <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
                         <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                             BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                         </ajaxToolkit:CalendarExtender>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblExaminerName" runat="server" Text="Examiner Name"  CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                 ControlToValidate="txtExaminerName" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
                   <div  class="col-lg-5">
             <asp:TextBox ID="txtExaminerName" runat="server"  CssClass="form-control"></asp:TextBox>         </div> </div>
        <div class="form-group">
             <asp:Label ID="lblLetter" runat="server" Text="Letter"  CssClass="col-lg-3 control-label"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                 ControlToValidate="fuPragatiPatLetter" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:FileUpload ID="fuPragatiPatLetter" runat="server" 
                    CssClass="form-control" />
           </div></div>  
           <hr />
        <div class="form-group">
                <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
    </div>
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
                <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                    PropertyName="Text" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/PragatiPat.aspx">Back</asp:HyperLink></center>
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


