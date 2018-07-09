<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission4.aspx.cs" Inherits="admission4" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
                    <asp:Label ID="lblEmailId" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Email Id"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="Enter valid EmailId" 
                        Font-Bold="True" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <div class="col-lg-5">
                    <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div></div>
                    <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Password"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" 
                        TextMode="Password"></asp:TextBox>
                    </div></div>
                    <div class="form-group">
                    <asp:Label ID="lblCharterNo" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Charter No."></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCharterNo" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                <asp:TextBox ID="txtCharterNo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div></div>
                    <div class="form-group">
                    <asp:Label ID="lblWarrantNo" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Warrant No."></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtWarrantNo" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                <asp:TextBox ID="txtWarrantNo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div></div>
                <div class="form-group">
                    <asp:Label ID="lblDate" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Date"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
              <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                        BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate" />
              </div></div>
                    
               <div class="form-group">

                    <asp:Label ID="lblRegFees" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Registration Fees"></asp:Label>

                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtRegFees" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                    
                        <div class="col-lg-5">
        <asp:TextBox ID="txtRegFees" runat="server" CssClass="form-control"></asp:TextBox>

        
                    <asp:Label ID="lbl1" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
                        Text="Rs."></asp:Label></div></div>

    <div class="form-group">

                    <asp:Label ID="lblReceiptNo" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Receipt No"></asp:Label>

                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtReceiptNo" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                
                    <div class="col-lg-5">
              <asp:TextBox ID="txtReceiptNo" runat="server" CssClass="form-control"></asp:TextBox></div></div>

                   
                   <div class="form-group">

                    <asp:Label ID="lblReceiptDate" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Date"></asp:Label>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                           ControlToValidate="txtReceiptDate" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                       <div class="col-lg-5">
              <asp:TextBox ID="txtReceiptDate" runat="server" CssClass="form-control"></asp:TextBox>
                           <ajaxToolkit:CalendarExtender ID="txtReceiptDate_CalendarExtender" 
                               runat="server" BehaviorID="txtReceiptDate_CalendarExtender" 
                               TargetControlID="txtReceiptDate" />
                    </div></div>   
                    <div class="form-group">

                    <asp:Label ID="lblRegFees1" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Registration Fees"></asp:Label>

                    
                        <div class="col-lg-5">
        <asp:TextBox ID="txtRegFees1" runat="server" CssClass="form-control"></asp:TextBox>

        
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
                        Text="Rs."></asp:Label></div></div>

    <div class="form-group">

                    <asp:Label ID="lblReceiptNo1" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Receipt No"></asp:Label>

                
                    <div class="col-lg-5">
              <asp:TextBox ID="txtReceiptNo1" runat="server" CssClass="form-control"></asp:TextBox></div></div>

                   
                   <div class="form-group">

                    <asp:Label ID="lblReceiptDate1" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Date"></asp:Label>

                       <div class="col-lg-5">
              <asp:TextBox ID="txtReceiptDate1" runat="server" CssClass="form-control"></asp:TextBox>
                           <ajaxToolkit:CalendarExtender ID="txtReceiptDate1_CalendarExtender" 
                               runat="server" BehaviorID="txtReceiptDate1_CalendarExtender" 
                               TargetControlID="txtReceiptDate1" />
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1" 
                               runat="server" BehaviorID="txtReceiptDate_CalendarExtender" 
                               TargetControlID="txtReceiptDate" />
                    </div></div>                    
                                
                    <div class="form-group">

                    <asp:Label ID="lblDistSign" runat="server" Font-Names="Arial Black" cssclass="col-lg-3 control-label"
                        Font-Size="Medium" Text="District Signanture"></asp:Label>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="fuDistSign" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                        <div class="col-lg-5">

                    <asp:FileUpload ID="fuDistSign" runat="server" cssclass="form-control" /></div></div>
                    <div class="form-group">

                    <asp:Label ID="lblMagzineFees" runat="server" Font-Names="Arial Black" cssclass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Magzine Fees"></asp:Label>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="fuDistSign" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                        <div class="col-lg-5">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>        </div></div>
                    
                    <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
              Text="Submit" onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
                       <asp:SqlDataSource ID="SqlDs" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                           DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @original_SrNo" 
                           InsertCommand="INSERT INTO [SchoolTable] ([EmailId], [Password], [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature], [FeesPaidMagzine]) VALUES (@EmailId, @Password, @Date, @UnitLeaderSignature, @PrincipalSignature, @CharterNo, @WarrantNo, @RegistrationFess, @ReceiptNo, @PayDate, @RegistrationFees1, @ReceiptNo1, @PayDate1, @DistrictSignature, @FeesPaidMagzine)" 
                           OldValuesParameterFormatString="original_{0}" 
                           SelectCommand="SELECT [EmailId], [Password], [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature], [FeesPaidMagzine], [SrNo] FROM [SchoolTable]" 
                           
                           
            
            
            
            
            UpdateCommand="UPDATE SchoolTable SET Date = @Date, CharterNo = @CharterNo, WarrantNo = @WarrantNo, RegistrationFess = @RegistrationFess, ReceiptNo = @ReceiptNo, PayDate = @PayDate, RegistrationFees1 = @RegistrationFees1, ReceiptNo1 = @ReceiptNo1, PayDate1 = @PayDate1, DistrictSignature = @DistrictSignature, FeesPaidMagzine = @FeesPaidMagzine, Status = @Status WHERE (EmailId = @EmailId) AND (Password = @Password)">
                           <DeleteParameters>
                               <asp:Parameter Name="original_SrNo" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="EmailId" Type="String" />
                               <asp:Parameter Name="Password" Type="String" />
                               <asp:Parameter Name="Date" DbType="Date" />
                               <asp:Parameter Name="UnitLeaderSignature" Type="String" />
                               <asp:Parameter Name="PrincipalSignature" Type="String" />
                               <asp:Parameter Name="CharterNo" Type="Int32" />
                               <asp:Parameter Name="WarrantNo" Type="Int32" />
                               <asp:Parameter Name="RegistrationFess" Type="Int32" />
                               <asp:Parameter Name="ReceiptNo" Type="Int32" />
                               <asp:Parameter Name="PayDate" DbType="Date" />
                               <asp:Parameter Name="RegistrationFees1" Type="Int32" />
                               <asp:Parameter Name="ReceiptNo1" Type="Int32" />
                               <asp:Parameter Name="PayDate1" DbType="Date" />
                               <asp:Parameter Name="DistrictSignature" Type="String" />
                               <asp:Parameter Name="FeesPaidMagzine" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date" 
                                   PropertyName="Text" />
                               <asp:ControlParameter ControlID="txtCharterNo" Name="CharterNo" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtWarrantNo" Name="WarrantNo" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtRegFees" Name="RegistrationFess" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtReceiptNo" Name="ReceiptNo" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtReceiptDate" DbType="Date" Name="PayDate" 
                                   PropertyName="Text" />
                               <asp:ControlParameter ControlID="txtRegFees1" Name="RegistrationFees1" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtReceiptNo1" Name="ReceiptNo1" 
                                   PropertyName="Text" Type="Int32" />
                               <asp:ControlParameter ControlID="txtReceiptDate1" DbType="Date" Name="PayDate1" 
                                   PropertyName="Text" />
                               <asp:ControlParameter ControlID="fuDistSign" Name="DistrictSignature" 
                                   PropertyName="FileName" Type="String" />
                               <asp:ControlParameter ControlID="RadioButtonList1" Name="FeesPaidMagzine" 
                                   PropertyName="SelectedValue" Type="String" />
                               <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                                   Type="String" />
                               <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                                   PropertyName="Text" Type="String" />
                               <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                                   PropertyName="Value" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDs0" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                           DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @original_SrNo" 
                           InsertCommand="INSERT INTO [UnitLeaderTable] ([EmailId], [Password], [Status]) VALUES (@EmailId, @Password, @Status)" 
                           OldValuesParameterFormatString="original_{0}" 
                           SelectCommand="SELECT [EmailId], [Password], [SrNo], [Status] FROM [UnitLeaderTable]" 
                           
                           
            
            
            
            
            
            UpdateCommand="UPDATE [UnitLeaderTable] SET [Status] = @Status WHERE [EmailId] = @EmailId AND [Password] = @Password">
                           <DeleteParameters>
                               <asp:Parameter Name="original_SrNo" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="EmailId" Type="String" />
                               <asp:Parameter Name="Password" Type="String" />
                               <asp:Parameter Name="Status" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                                   Type="String" />
                               <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                                   PropertyName="Text" Type="String" />
                               <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                                   PropertyName="Value" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDs1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                           DeleteCommand="DELETE FROM [StudentTable] WHERE [SrNo] = @original_SrNo" 
                           InsertCommand="INSERT INTO [StudentTable] ([EmailId], [Password], [Status]) VALUES (@EmailId, @Password, @Status)" 
                           OldValuesParameterFormatString="original_{0}" 
                           SelectCommand="SELECT [EmailId], [Password], [SrNo], [Status] FROM [StudentTable]" 
                           
                           
            
            
            
            
            
            UpdateCommand="UPDATE [StudentTable] SET [Status] = @Status WHERE [EmailId] = @EmailId AND [Password] = @Password">
                           <DeleteParameters>
                               <asp:Parameter Name="original_SrNo" Type="Int32" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="EmailId" Type="String" />
                               <asp:Parameter Name="Password" Type="String" />
                               <asp:Parameter Name="Status" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                                   Type="String" />
                               <asp:ControlParameter ControlID="txtPassword" Name="Password" 
                                   PropertyName="Text" Type="String" />
                               <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                                   PropertyName="Value" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
               <asp:HiddenField ID="HiddenField1" runat="server" />
    
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
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

