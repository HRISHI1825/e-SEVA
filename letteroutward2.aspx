<%@ Page Language="C#" AutoEventWireup="true" CodeFile="letteroutward2.aspx.cs" Inherits="letteroutward2" %>

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
    <center><h1>New Outward Letter</h1></center>
</div>
 <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
     <div class="form-group">
                    <asp:Label ID="lblDate" runat="server" Text="Date" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="ddl1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                                <asp:TextBox ID="txtDate" runat="server" cssclass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                                    BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate" />
</div></div>
            <div class="form-group">
                     <asp:Label ID="lblTo" runat="server" Text="To" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtTo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                     <asp:TextBox ID="txtTo" runat="server" cssclass="form-control" ></asp:TextBox></div></div>
                <div class="form-group">     
                               <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                                   <asp:TextBox ID="txtAddress" runat="server" cssclass="form-control"></asp:TextBox></div></div>
                <div class="form-group">
                    <asp:Label ID="lblTopic" runat="server" Text="Topic" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtTopic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                     <asp:TextBox ID="txtTopic" runat="server" cssclass="form-control"></asp:TextBox></div></div>
               <div class="form-group">
                     <asp:Label ID="lblFileNo" runat="server" Text="File No." Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtFileNo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                      <asp:TextBox ID="txtFileNo" runat="server" cssclass="form-control"></asp:TextBox></div></div>
                      <div class="form-group">
                       <asp:Label ID="lblHowSend" runat="server" Text="How Send" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtHowSend" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5">
                       <asp:TextBox ID="txtHowSend" runat="server" cssclass="form-control"></asp:TextBox></div></div>
             <div class="form-group">
                     <asp:Label ID="lblLetter" runat="server" Text="Letter" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="fuOutwardLetter" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                    <asp:FileUpload ID="fuOutwardLetter" runat="server" CssClass="form-control" /></div></div>
               <div class="form-group">
                      <asp:Label ID="lblStampUsed" runat="server" Text="Stamp Used" Font-Names="Arial Black"  CssClass="col-lg-3 control-label" Font-Size="medium"></asp:Label>
               <div class="col-lg-5">
                    <asp:TextBox ID="txtStampUsedRs" runat="server" cssclass="form-control"></asp:TextBox>
                    <asp:Label ID="lblRs" runat="server" Text="Rs." Font-Names="Arial Black" Font-Size="medium"></asp:Label>
                     &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtStampUsedRs" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                     <asp:TextBox ID="txtStampUsedPs" runat="server" cssclass="form-control"></asp:TextBox>
                       <asp:Label ID="lblPs" runat="server" Text="Ps." Font-Names="Arial Black" Font-Size="medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtStampUsedPs" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                      </div></div>
              <div class="form-group">
                     <asp:Label ID="lblStampPurchased" runat="server" Text="Stamp Purchased" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                <div class="col-lg-5">
                     <asp:TextBox ID="txtStampPurchasedRs" runat="server" cssclass="form-control"></asp:TextBox>
                    <asp:Label ID="lblStampPurchasedRs" runat="server" Text="Rs." Font-Names="Arial Black" Font-Size="medium" ></asp:Label>
                     &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtStampPurchasedRs" 
                         ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;<asp:TextBox ID="txtStampPurchasedPs" runat="server" cssclass="form-control"></asp:TextBox>
                       <asp:Label ID="lblStampPurchasedPs" runat="server" Text="Ps." Font-Names="Arial Black" Font-Size="medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtStampPurchasedPs" 
                         ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                     </div></div>
                <div class="form-group">
                     <asp:Label ID="lblRemainingStamp" runat="server" Text="Remaining Stamp" Font-Names="Arial Black" Font-Size="medium" CssClass="col-lg-3 control-label"></asp:Label>
                <div class="col-lg-5">
                       <asp:TextBox ID="txtRemainingStampRs" runat="server" cssclass="form-control"></asp:TextBox>
                       <asp:Label ID="lblRemainingStampRs" runat="server" Text="Rs." Font-Names="Arial Black" Font-Size="medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtRemainingStampRs" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                     <asp:TextBox ID="txtRemainingStampPs" runat="server" cssclass="form-control"></asp:TextBox>
                       <asp:Label ID="lblRemainingStampPs" runat="server" Text="Ps." Font-Names="Arial Black" Font-Size="medium"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtRemainingStampPs" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                     </div></div>
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
            <asp:SqlDataSource ID="SqlDsOutwardLetters" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [OutwardLetter] WHERE [OutwardLetterNo1] = @original_OutwardLetterNo1" 
            InsertCommand="INSERT INTO [OutwardLetter] ([OutwardDate], [OutwardTo], [OutwardAddress], [Outwardtopic], [OutwardFileNo], [HowSend], [Outletter], [StampUsed], [Ps], [Stamppurchased], [Ps1], [RemainingStamp], [Ps3], [OutwardStatus]) VALUES (@OutwardDate, @OutwardTo, @OutwardAddress, @Outwardtopic, @OutwardFileNo, @HowSend, @Outletter, @StampUsed, @Ps, @Stamppurchased, @Ps1, @RemainingStamp, @Ps3, @OutwardStatus)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [OutwardLetter]" 
            
            
            
            UpdateCommand="UPDATE [OutwardLetter] SET [OutwardDate] = @OutwardDate, [OutwardTo] = @OutwardTo, [OutwardAddress] = @OutwardAddress, [Outwardtopic] = @Outwardtopic, [OutwardFileNo] = @OutwardFileNo, [HowSend] = @HowSend, [Outletter] = @Outletter, [StampUsed] = @StampUsed, [Ps] = @Ps, [Stamppurchased] = @Stamppurchased, [Ps1] = @Ps1, [RemainingStamp] = @RemainingStamp, [Ps3] = @Ps3, [OutwardStatus] = @OutwardStatus WHERE [OutwardLetterNo1] = @original_OutwardLetterNo1">
                <DeleteParameters>
                    <asp:Parameter Name="original_OutwardLetterNo1" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="OutwardDate" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtTo" Name="OutwardTo" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="OutwardAddress" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtTopic" Name="Outwardtopic" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtFileNo" Name="OutwardFileNo" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtHowSend" Name="HowSend" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="fuOutwardLetter" Name="Outletter" 
                        PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="txtStampUsedRs" Name="StampUsed" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtStampUsedPs" Name="Ps" PropertyName="Text" 
                        Type="Int32" />
                    <asp:ControlParameter ControlID="txtStampPurchasedRs" Name="Stamppurchased" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtStampPurchasedPs" Name="Ps1" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtRemainingStampRs" Name="RemainingStamp" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtRemainingStampPs" Name="Ps3" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="CheckBox1" Name="OutwardStatus" 
                        PropertyName="Checked" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="OutwardDate" />
                    <asp:Parameter Name="OutwardTo" Type="String" />
                    <asp:Parameter Name="OutwardAddress" Type="String" />
                    <asp:Parameter Name="Outwardtopic" Type="String" />
                    <asp:Parameter Name="OutwardFileNo" Type="Int32" />
                    <asp:Parameter Name="HowSend" Type="String" />
                    <asp:Parameter Name="Outletter" Type="String" />
                    <asp:Parameter Name="StampUsed" Type="String" />
                    <asp:Parameter Name="Ps" Type="Int32" />
                    <asp:Parameter Name="Stamppurchased" Type="String" />
                    <asp:Parameter Name="Ps1" Type="Int32" />
                    <asp:Parameter Name="RemainingStamp" Type="String" />
                    <asp:Parameter Name="Ps3" Type="Int32" />
                    <asp:Parameter Name="OutwardStatus" Type="String" />
                    <asp:Parameter Name="original_OutwardLetterNo1" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/letteroutward1.aspx">Back</asp:HyperLink></center>
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
