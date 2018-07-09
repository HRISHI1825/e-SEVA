<%@ Page Language="C#" AutoEventWireup="true" CodeFile="letterinward2.aspx.cs" Inherits="letterinward2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <center><h1>New Inward Letter</h1></center>
</div>
 <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
                <asp:Label ID="lblLetterAcceptingDate" runat="server" CssClass="col-lg-3 control-label" Text="Letter Accepting Date" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtLetterAcceptingDate" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                 <asp:TextBox ID="txtLetterAcceptingDate" runat="server" CssClass="form-control"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txtLetterAcceptingDate_CalendarExtender" 
                     runat="server" BehaviorID="txtLetterAcceptingDate_CalendarExtender" 
                     TargetControlID="txtLetterAcceptingDate" />
                </div></div>
 <div class="form-group">
                <asp:Label ID="lblLetterNo1" runat="server" Text="Letter No." CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtLetterNo1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:TextBox ID="txtLetterNo1" runat="server" CssClass="form-control"></asp:TextBox></div></div>
             <div class="form-group">
                <asp:Label ID="lblLetterDate" runat="server" Text="Letter Date" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtLetterDate" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                 <asp:TextBox ID="txtLetterDate" runat="server" CssClass="form-control"></asp:TextBox>

                 <ajaxToolkit:CalendarExtender ID="txtLetterDate_CalendarExtender" 
                     runat="server" BehaviorID="txtLetterDate_CalendarExtender" 
                     TargetControlID="txtLetterDate" />
                     </div></div>
            <div class="form-group">
                <asp:Label ID="lblFrom" runat="server" Text="From" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtFrom" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
                <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control"></asp:TextBox></div></div>
            <div class="form-group">
                <asp:Label ID="lblTopic" runat="server" Text="Topic" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtTopic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:TextBox ID="txtTopic" runat="server" CssClass="form-control"></asp:TextBox></div></div>
                <div class="form-group">
                     <asp:Label ID="lblLetter" runat="server" Text="Letter" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="fuInwardLetter" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                    <asp:FileUpload ID="fuInwardLetter" runat="server" CssClass="form-control" /></div></div>
             
           <div class="form-group">
                <asp:Label ID="lblFileNo" runat="server" Text="File No." CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtFileNo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
                <asp:TextBox ID="txtFileNo" runat="server" CssClass="form-control"></asp:TextBox></div></div>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                  <div class="form-group">
                     <asp:Label ID="lblStatus" runat="server" Text="Status" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                <div class="col-lg-5">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Completed"/>
        </div></div>
       
        <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary"
              Text="Submit" onclick="Button1_Click" />
      </div>
    </div>
                 <asp:SqlDataSource ID="SqlDsInwardLetter" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                     DeleteCommand="DELETE FROM [InwardLetters] WHERE [InwardNo] = @original_InwardNo" 
                     InsertCommand="INSERT INTO [InwardLetters] ([LetterAcceptingDate], [LetterNo1], [LetterDate], [LetterFrom], [InLetter], [TopicLetter], [FileNo], [InwardStatus]) VALUES (@LetterAcceptingDate, @LetterNo1, @LetterDate, @LetterFrom, @InLetter, @TopicLetter, @FileNo, @InwardStatus)" 
                     OldValuesParameterFormatString="original_{0}" 
                     SelectCommand="SELECT * FROM [InwardLetters]" 
                     
                     
            
                UpdateCommand="UPDATE [InwardLetters] SET [LetterAcceptingDate] = @LetterAcceptingDate, [LetterNo1] = @LetterNo1, [LetterDate] = @LetterDate, [LetterFrom] = @LetterFrom, [InLetter] = @InLetter, [TopicLetter] = @TopicLetter, [FileNo] = @FileNo, [InwardStatus] = @InwardStatus WHERE [InwardNo] = @original_InwardNo">
                     <DeleteParameters>
                         <asp:Parameter Name="original_InwardNo" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:ControlParameter ControlID="txtLetterAcceptingDate" DbType="Date" 
                             Name="LetterAcceptingDate" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtLetterNo1" Name="LetterNo1" 
                             PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="txtLetterDate" DbType="Date" Name="LetterDate" 
                             PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtFrom" Name="LetterFrom" PropertyName="Text" 
                             Type="String" />
                         <asp:ControlParameter ControlID="fuInwardLetter" Name="InLetter" 
                             PropertyName="FileName" Type="String" />
                         <asp:ControlParameter ControlID="txtTopic" Name="TopicLetter" 
                             PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="txtFileNo" Name="FileNo" PropertyName="Text" 
                             Type="Int32" />
                         <asp:ControlParameter ControlID="CheckBox1" Name="InwardStatus" 
                             PropertyName="Checked" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="LetterAcceptingDate" DbType="Date" />
                         <asp:Parameter Name="LetterNo1" Type="Int32" />
                         <asp:Parameter Name="LetterDate" DbType="Date" />
                         <asp:Parameter Name="LetterFrom" Type="String" />
                         <asp:Parameter Name="InLetter" Type="String" />
                         <asp:Parameter Name="TopicLetter" Type="String" />
                         <asp:Parameter Name="FileNo" Type="Int32" />
                         <asp:Parameter Name="InwardStatus" Type="String" />
                         <asp:Parameter Name="original_InwardNo" Type="Int32" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/letterinward1.aspx">Back</asp:HyperLink></center>
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
