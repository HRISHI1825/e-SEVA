<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HeerakhPankhForm.aspx.cs" Inherits="HeerakhPankh" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

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
    <asp:Label ID="lbl1" runat="server" Text="THE MAHARASHTRA STATE BHARAT SCOUTS AND GUIDES," 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" 
            Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="lbl2" runat="server" Text="79 F Road, Marine Drive, Mumbai-400 021." 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" 
            Font-Underline="True"></asp:Label>
    </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset><legend>
         <asp:Label ID="lbl3" runat="server" Text="REGISTRATION FORM OF HEERAK PANKH" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" 
            Font-Underline="True"></asp:Label>
           
              </legend>
            <div class="form-group">
             <asp:Label ID="lblNameofTheDistrict" runat="server"  
                   cssclass="col-lg-3 control-label" Text="Name of The District" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtNameofTheDistrict" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameofTheDistrict" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblNameOfTheBulbul" runat="server"  class="col-lg-3 control-label" 
                 Text="Name Of The Bulbul" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtNameOfTheBulbul" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheBulbul"  class="form-control" runat="server"></asp:TextBox>
           <span class="help-block"> <asp:Label ID="Label1" runat="server"  class="col-lg-3 control-label" 
                   Text="(in Blocks Capital)" Font-Bold="False"></asp:Label></span>
           </div> </div>
       
        <div class="form-group">
             <asp:Label ID="lblAddress" runat="server" class="col-lg-3 control-label"  
                 Text="Address" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div></div>
           
        <div class="form-group">
                <asp:Label ID="lblDist" runat="server" class="col-lg-3 control-label"  
                    Text="Dist" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtDist" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDist" runat="server"  class="form-control"></asp:TextBox>
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblPinCode" runat="server"  class="col-lg-3 control-label" 
                    Text="Pin Code" Font-Bold="False"></asp:Label>
           
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtPinCode" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           
            <div class="col-lg-5"> <asp:TextBox ID="txtPinCode" runat="server" class="form-control"></asp:TextBox>
            </div></div>
            <div class="form-group">
                <asp:Label ID="lblDateOfBirth" runat="server" class="col-lg-3 control-label"  
                    Text="Date Of Birth" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="txtDateOfBirth" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfBirth" runat="server"  class="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" BehaviorID="txtDateOfBirth_CalendarExtender" TargetControlID="txtDateOfBirth">
               </ajaxToolkit:CalendarExtender>
           </div></div>
           <div class="form-group">
                <asp:Label ID="lblNameOfTheGroup" runat="server" 
                    class="col-lg-3 control-label"  Text="Name Of The Group" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="txtNameOfTheGroup" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtNameOfTheGroup" runat="server"  class="form-control"></asp:TextBox>
               </div></div>
               
                 <div class="form-group">
               <asp:Label ID="lblAddressOfTheGroup" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" Text="Address Of The Group"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="txtAddressOfTheGroup" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
             <asp:TextBox ID="txtAddressOfTheGroup" runat="server"  class="form-control"></asp:TextBox>
             </div></div>
             <div class="form-group">
               <asp:Label ID="lblNameOfTheFlockLeader" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                     Text="Name Of The Flock Leader"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        ControlToValidate="txtNameOfTheFlockLeader" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
             <asp:TextBox ID="txtNameOfTheFlockLeader" runat="server"  class="form-control" ></asp:TextBox>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblCertificateNo" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Advanced/H.W.B Certificate/ParchmentNo"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        ControlToValidate="txtCertificateNo" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
             <asp:TextBox ID="txtCertificateNo" runat="server"  class="form-control" ></asp:TextBox>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDate" runat="server" 
                   class="col-lg-3 control-label" Text="Date"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                        ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
             <asp:TextBox ID="txtDate" runat="server"  class="form-control" ></asp:TextBox>
                   <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                   </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblWarrentNo" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" Text="Warrent No"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                        ControlToValidate="txtWarrentNo" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtWarrentNo" runat="server"  class="form-control"></asp:TextBox>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfJoiningBulbul" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" Text="Date Of Joining Bulbul"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                        ControlToValidate="txtDateOfJoiningBulbul" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfJoiningBulbul" runat="server"  class="form-control"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateOfJoiningBulbul_CalendarExtender" runat="server" BehaviorID="txtDateOfJoiningBulbul_CalendarExtender" TargetControlID="txtDateOfJoiningBulbul">
                       </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfCompletionOfPravesh" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Date Of Completion Of Pravesh"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                        ControlToValidate="txtDateOfCompletionOfPravesh" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfPravesh" runat="server"  class="form-control"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfPravesh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfPravesh_CalendarExtender" TargetControlID="txtDateOfCompletionOfPravesh">
                 </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfInvestiture" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" Text="Date Of Investiture"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                        ControlToValidate="txtDateOfInvestiture" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfInvestiture" runat="server"  class="form-control" ></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateOfInvestiture_CalendarExtender" runat="server" BehaviorID="txtDateOfInvestiture_CalendarExtender" TargetControlID="txtDateOfInvestiture">
                       </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfCompletionOfKomalPankh" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Date Of Completion Of Komal Pankh"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                        ControlToValidate="txtDateOfCompletionOfKomalPankh" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfKomalPankh" runat="server"  class="form-control" ></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfKomalPankh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfKomalPankh_CalendarExtender" TargetControlID="txtDateOfCompletionOfKomalPankh">
                    </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfCompletionOfRajatPankh" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Date Of Completion Of Rajat Pankh"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                        ControlToValidate="txtDateOfCompletionOfRajatPankh" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfRajatPankh" runat="server"  class="form-control"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfRajatPankh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfRajatPankh_CalendarExtender" TargetControlID="txtDateOfCompletionOfRajatPankh">
                       </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfCompletionOfSuvarnaPankh" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Date Of Completion Of Suvarna Pankh"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                        ControlToValidate="txtDateOfCompletionOfSuvarnaPankh" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfSuvarnaPankh" runat="server"  class="form-control"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfSuvarnaPankh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfSuvarnaPankh_CalendarExtender" TargetControlID="txtDateOfCompletionOfSuvarnaPankh">
                       </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblNameOfTheProficencyBadgeEarned" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Name Of The Proficency Badge Earned"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="txtNameOfTheProficencyBadgeEarned" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
             <asp:TextBox ID="txtNameOfTheProficencyBadgeEarned" runat="server"  class="form-control"></asp:TextBox>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblDateOfCompletionOfHeerakPankh" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Date Of Completion Of Heerak Pankh"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="txtDateOfCompletionOfHeerakPankh" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfHeerakPankh" runat="server"  class="form-control"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfHeerakPankh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfHeerakPankh_CalendarExtender" TargetControlID="txtDateOfCompletionOfHeerakPankh">
                 </ajaxToolkit:CalendarExtender>
               </div></div>
               <div class="form-group">
               <asp:Label ID="lblNameOfTheProficencyBadgeEarned1" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Name Of The Proficency Badge Earned"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                        ControlToValidate="txtNameOfTheProficencyBadgeEarned1" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
             <asp:TextBox ID="txtNameOfTheProficencyBadgeEarned1" runat="server"  class="form-control"></asp:TextBox>
           </div></div>
            <div class="form-group">
               <asp:Label ID="lblSignatureOfFlockLeader" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Signature Of Flock Leader"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="fuSignatureOfFlockLeader" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
             <asp:FileUpload ID="fuSignatureOfFlockLeader" runat="server"  class="form-control"></asp:FileUpload>
           </div></div>
            <div class="form-group">
               <asp:Label ID="lblSignatureOfBulbul" runat="server" 
                   class="col-lg-3 control-label" Font-Bold="False" 
                       Text="Signature Of Bulbul"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                        ControlToValidate="fuSignatureOfBulbul" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
             <asp:FileUpload ID="fuSignatureOfBulbul" runat="server"  class="form-control"></asp:FileUpload>
           </div></div><hr />
          <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:HiddenField ID="HiddenField1" runat="server" />
      </div>
    </div>
        <asp:SqlDataSource ID="SqldsHeerakPankh" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [HeerakPankh] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [HeerakPankh] ([NameOfTheDistrict], [NameOfTheBulbul], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheFlockLeader], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningBulbul], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfKomalPankh], [DateOfCompletionOfRajatPankh], [DateOfCompletionOfSuvarnaPankh], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfHeerakPankh], [NameOfTheProficiencyBadgeearned1], [SignatureOfFlockLeader], [SignatureOfBulbul], [Status]) VALUES (@NameOfTheDistrict, @NameOfTheBulbul, @Address, @Dist, @PinCode, @DateOfBirth, @NameOfTheGroup, @AddressOfTheGroup, @NameOfTheFlockLeader, @CertificateNo, @Date, @WarrantNo, @DateOfJoiningBulbul, @DateOfCompletionOfPravesh, @DateOfInvestiture, @DateOfCompletionOfKomalPankh, @DateOfCompletionOfRajatPankh, @DateOfCompletionOfSuvarnaPankh, @NameOfTheProficiencyBadgeearned, @DateOfCompletionOfHeerakPankh, @NameOfTheProficiencyBadgeearned1, @SignatureOfFlockLeader, @SignatureOfBulbul, @Status)" 
            SelectCommand="SELECT [SrNo], [NameOfTheDistrict], [NameOfTheBulbul], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheFlockLeader], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningBulbul], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfKomalPankh], [DateOfCompletionOfRajatPankh], [DateOfCompletionOfSuvarnaPankh], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfHeerakPankh], [NameOfTheProficiencyBadgeearned1], [SignatureOfFlockLeader], [SignatureOfBulbul], [Status] FROM [HeerakPankh]" 
            
            UpdateCommand="UPDATE [HeerakPankh] SET [NameOfTheDistrict] = @NameOfTheDistrict, [NameOfTheBulbul] = @NameOfTheBulbul, [Address] = @Address, [Dist] = @Dist, [PinCode] = @PinCode, [DateOfBirth] = @DateOfBirth, [NameOfTheGroup] = @NameOfTheGroup, [AddressOfTheGroup] = @AddressOfTheGroup, [NameOfTheFlockLeader] = @NameOfTheFlockLeader, [CertificateNo] = @CertificateNo, [Date] = @Date, [WarrantNo] = @WarrantNo, [DateOfJoiningBulbul] = @DateOfJoiningBulbul, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfInvestiture] = @DateOfInvestiture, [DateOfCompletionOfKomalPankh] = @DateOfCompletionOfKomalPankh, [DateOfCompletionOfRajatPankh] = @DateOfCompletionOfRajatPankh, [DateOfCompletionOfSuvarnaPankh] = @DateOfCompletionOfSuvarnaPankh, [NameOfTheProficiencyBadgeearned] = @NameOfTheProficiencyBadgeearned, [DateOfCompletionOfHeerakPankh] = @DateOfCompletionOfHeerakPankh, [NameOfTheProficiencyBadgeearned1] = @NameOfTheProficiencyBadgeearned1, [SignatureOfFlockLeader] = @SignatureOfFlockLeader, [SignatureOfBulbul] = @SignatureOfBulbul, [Status] = @Status WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNameofTheDistrict" Name="NameOfTheDistrict" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNameOfTheBulbul" Name="NameOfTheBulbul" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtAddress" Name="Address" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtDist" Name="Dist" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtPinCode" Name="PinCode" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtDateOfBirth" DbType="Date" 
                    Name="DateOfBirth" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNameOfTheGroup" Name="NameOfTheGroup" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtAddressOfTheGroup" Name="AddressOfTheGroup" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNameOfTheFlockLeader" 
                    Name="NameOfTheFlockLeader" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtCertificateNo" Name="CertificateNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtWarrentNo" Name="WarrantNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDateOfJoiningBulbul" DbType="Date" 
                    Name="DateOfJoiningBulbul" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfPravesh" DbType="Date" 
                    Name="DateOfCompletionOfPravesh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfInvestiture" DbType="Date" 
                    Name="DateOfInvestiture" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfKomalPankh" DbType="Date" 
                    Name="DateOfCompletionOfKomalPankh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfRajatPankh" DbType="Date" 
                    Name="DateOfCompletionOfRajatPankh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfSuvarnaPankh" 
                    DbType="Date" Name="DateOfCompletionOfSuvarnaPankh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNameOfTheProficencyBadgeEarned" 
                    Name="NameOfTheProficiencyBadgeearned" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfHeerakPankh" 
                    DbType="Date" Name="DateOfCompletionOfHeerakPankh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNameOfTheProficencyBadgeEarned1" 
                    Name="NameOfTheProficiencyBadgeearned1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuSignatureOfFlockLeader" 
                    Name="SignatureOfFlockLeader" PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuSignatureOfBulbul" Name="SignatureOfBulbul" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                    PropertyName="Value" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NameOfTheDistrict" Type="String" />
                <asp:Parameter Name="NameOfTheBulbul" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Dist" Type="String" />
                <asp:Parameter Name="PinCode" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="NameOfTheGroup" Type="String" />
                <asp:Parameter Name="AddressOfTheGroup" Type="String" />
                <asp:Parameter Name="NameOfTheFlockLeader" Type="String" />
                <asp:Parameter Name="CertificateNo" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="WarrantNo" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfJoiningBulbul" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
                <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfKomalPankh" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajatPankh" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfSuvarnaPankh" />
                <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfHeerakPankh" />
                <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
                <asp:Parameter Name="SignatureOfFlockLeader" Type="String" />
                <asp:Parameter Name="SignatureOfBulbul" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Schooldashboard.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" 
             NavigateUrl="~/Schooldashboard.aspx">Home</asp:HyperLink></center>
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


