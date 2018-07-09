<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChaturthCharanFormn.aspx.cs" Inherits="ChaturthCharanFormn" %>

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
            <asp:Label ID="lbl3" runat="server" Text="REGISTRATION FORM OF CHATURTH CHARAN" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" 
            Font-Underline="True"></asp:Label></legend>
            <div class="form-group">
             <asp:Label ID="lblNameOfTheDistrict" runat="server" CssClass="col-lg-3 control-label" Text="Name Of The District"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNameOfTheDistrict" ForeColor="Red" ToolTip="Enter Name of the District">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheDistrict" CssClass="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblNameOfTheCub" runat="server" CssClass="col-lg-3 control-label" Text="Name Of The Cub"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNameOfTheCub" ForeColor="Red" ToolTip="Enter Name of the Cub">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheCub" CssClass="form-control" runat="server"></asp:TextBox>
            <span class="help-block"> <asp:Label ID="lbl4" runat="server" Text="(in block capitals)"></asp:Label></span>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblAddress" runat="server" CssClass="col-lg-3 control-label"  Text="Address"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ForeColor="Red" ToolTip="Enter Address">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox><br />
            </div></div>
        <div class="form-group">
                <asp:Label ID="lblDist" runat="server" CssClass="col-lg-3 control-label"  Text="Dist"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDist" ForeColor="Red" ToolTip="Enter Dist">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDist" runat="server" CssClass="form-control"></asp:TextBox>
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblPinCode" runat="server"  CssClass="col-lg-3 control-label" Text="Pin Code"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPinCode" ForeColor="Red" ToolTip="Enter Pin Code">*</asp:RequiredFieldValidator>
            <div class="col-lg-5"> <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth" CssClass="col-lg-3 control-label"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDateOfBirth" ForeColor="Red" ToolTip="Enter Date of Birth">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
             <asp:TextBox ID="txtDateOfBirth" CssClass="form-control"  runat="server"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" BehaviorID="txtDateOfBirth_CalendarExtender" TargetControlID="txtDateOfBirth">
               </ajaxToolkit:CalendarExtender>
             <span class="help-block"><asp:Label ID="lbl5" runat="server" 
                    Text="(As Per School Record)"></asp:Label></span>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblNameOfTheGroup" runat="server" CssClass="col-lg-3 control-label" Text="Name Of The Group"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNameOfTheGroup" ForeColor="Red" ToolTip="Enter Name of the Group">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheGroup" CssClass="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblAddressOfTheGroup" runat="server"  CssClass="col-lg-3 control-label"  Text="Address Of The Group"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddressOfTheGroup" ForeColor="Red" ToolTip="Enter Address of the Group">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtAddressOfTheGroup" runat="server" CssClass="form-control" ></asp:TextBox>
         </div> </div>
        <div class="form-group">
             <asp:Label ID="lblNameOfTheCubMaster" runat="server"   CssClass="col-lg-3 control-label" Text="Name Of The Cub Master"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNameOfTheCubMaster" ForeColor="Red" ToolTip="Enter Name of the Cub Master">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheCubMaster" runat="server" CssClass="form-control"></asp:TextBox>
          </div> </div>
        <div class="form-group">
             <asp:Label ID="lblCertificateNo" runat="server"  CssClass="col-lg-3 control-label" Text="Advance/H.W.B. Certificate/Parchment No."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCertificateNo" ForeColor="Red" ToolTip="Enter Certificate no.">*</asp:RequiredFieldValidator>
            <div class="col-lg-5"><asp:TextBox ID="txtCertificateNo" runat="server"  CssClass="form-control" ></asp:TextBox>
           </div> </div>
        <div class="form-group">
                     <asp:Label ID="lblDate"  CssClass="col-lg-3 control-label" runat="server" Text="Date"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtDate" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
                    <div  class="col-lg-5"> <asp:TextBox  CssClass="form-control" ID="txtDate" runat="server" ></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                        </ajaxToolkit:CalendarExtender>
          </div>  </div>
        <div class="form-group">
                     <asp:Label ID="lblWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text="Warrant No."></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtWarrantNo" ForeColor="Red" ToolTip="Enter Warrent No.">*</asp:RequiredFieldValidator>
                     <div  class="col-lg-5"> <asp:TextBox ID="txtWarrantNo" class="form-control"  runat="server" ></asp:TextBox>
          </div>  </div>
        <div class="form-group">
                      <asp:Label ID="lblDateOfJoiningCub"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Joining Cub"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtDateOfJoiningCub" ForeColor="Red" ToolTip="Enter Date of Joining Cub">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5"> <asp:TextBox ID="txtDateOfJoiningCub" CssClass="form-control"  runat="server" ></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateOfJoiningCub_CalendarExtender" runat="server" BehaviorID="txtDateOfJoiningCub_CalendarExtender" TargetControlID="txtDateOfJoiningCub">
                       </ajaxToolkit:CalendarExtender>
          </div> </div>
        <div class="form-group">
            <asp:Label ID="lblDateOfCompletionOfPravesh"   CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Pravesh"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtDateOfCompletionOfPravesh" ForeColor="Red" ToolTip="Enter Date of completion of pravesh">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfPravesh" runat="server" CssClass="form-control"  ></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfPravesh_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfPravesh_CalendarExtender" TargetControlID="txtDateOfCompletionOfPravesh">
               </ajaxToolkit:CalendarExtender>
                 </div>   </div>
        <div class="form-group">
           <asp:Label ID="lblDateOfInvestiture" runat="server"  CssClass="col-lg-3 control-label" Text="Date Of Investiture"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtDateOfInvestiture" ForeColor="Red" ToolTip="Enter Date of Investiture">*</asp:RequiredFieldValidator>
         <div class="col-lg-5">  <asp:TextBox ID="txtDateOfInvestiture"  CssClass="form-control" runat="server" ></asp:TextBox>
                   <ajaxToolkit:CalendarExtender ID="txtDateOfInvestiture_CalendarExtender" runat="server" BehaviorID="txtDateOfInvestiture_CalendarExtender" TargetControlID="txtDateOfInvestiture">
             </ajaxToolkit:CalendarExtender>
                   </div>   </div>
        <div class="form-group">
             <asp:Label ID="lblDateOfCompletionOfPrathamCharan"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Pratham Charan"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtDateOfCompletionOfPrathamCharan" ForeColor="Red" ToolTip="Enter Date of completion of Pratham charan">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">   <asp:TextBox ID="txtDateOfCompletionOfPrathamCharan"  CssClass="form-control" runat="server" ></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfPrathamCharan_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfPrathamCharan_CalendarExtender" TargetControlID="txtDateOfCompletionOfPrathamCharan">
                    </ajaxToolkit:CalendarExtender>
           </div></div>
        <div class="form-group">
            <asp:Label ID="lblDateOfCompletionOfDwitiyaCharan"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Dwitiya Charan"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtDateOfCompletionOfDwitiyaCharan" ForeColor="Red" ToolTip="Enter Date of Completion of Dwitiya  Charan">*</asp:RequiredFieldValidator>
                  <div class="col-lg-5"> <asp:TextBox ID="txtDateOfCompletionOfDwitiyaCharan" CssClass="form-control"  runat="server" ></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfDwitiyaCharan_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfDwitiyaCharan_CalendarExtender" TargetControlID="txtDateOfCompletionOfDwitiyaCharan">
                      </ajaxToolkit:CalendarExtender>
           </div>
           </div>
        <div class="form-group">
            <asp:Label ID="lblDateOfCompletionOfTritiyaCharan"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Tritiya Charan"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtDateOfCompletionOfTritiyaCharan" ForeColor="Red" ToolTip="Enter Date of Completion of Tritiya Charan">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfCompletionOfTritiyaCharan" runat="server" CssClass="form-control" ></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfTritiyaCharan_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfTritiyaCharan_CalendarExtender" TargetControlID="txtDateOfCompletionOfTritiyaCharan">
               </ajaxToolkit:CalendarExtender>
         </div>  </div>
        <div class="form-group">
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned"  CssClass="col-lg-3 control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtNameOfTheProficiencyBadgeearned" ForeColor="Red" ToolTip="Enter Name of The Proficiency Badge earned">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">  <asp:TextBox ID="txtNameOfTheProficiencyBadgeearned"  CssClass="form-control" runat="server"></asp:TextBox>
             </div> </div>
        <div class="form-group">
                       <asp:Label ID="lblDateOfCompletionOfChaturthCharan"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Chaturth Charan"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtDateOfCompletionOfChaturthCharan" ForeColor="Red" ToolTip="Enter Date of Completion of Chaturth Charan">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5"> <asp:TextBox ID="txtDateOfCompletionOfChaturthCharan" CssClass="form-control"  runat="server"></asp:TextBox>
                          <ajaxToolkit:CalendarExtender ID="txtDateOfCompletionOfChaturthCharan_CalendarExtender" runat="server" BehaviorID="txtDateOfCompletionOfChaturthCharan_CalendarExtender" TargetControlID="txtDateOfCompletionOfChaturthCharan">
                          </ajaxToolkit:CalendarExtender>
          </div>  </div>    
        <div class="form-group">      
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned1"  CssClass="col-lg-3 control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtNameOfTheProficiencyBadgeearned1" ForeColor="Red" ToolTip="Enter Name of the Proficiency Badge earned">*</asp:RequiredFieldValidator>
           <div class="col-lg-5"> <asp:TextBox ID="txtNameOfTheProficiencyBadgeearned1" CssClass="form-control"  runat="server"> </asp:TextBox>
           </div> </div>
            <div class="form-group">      
            <asp:Label ID="lblSignatureOfCubMaster"  CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Cub Master"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="fuSignatureOfCubMaster" ForeColor="Red" ToolTip="Enter Name of the Proficiency Badge earned">*</asp:RequiredFieldValidator>
           <div class="col-lg-5"> <asp:FileUpload ID="fuSignatureOfCubMaster" CssClass="form-control"  runat="server"> </asp:FileUpload>
           </div> </div>
            <div class="form-group">      
            <asp:Label ID="lblSignatureOfCub"  CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Cub"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="fuSignatureOfCub" ForeColor="Red" ToolTip="Enter Name of the Proficiency Badge earned">*</asp:RequiredFieldValidator>
           <div class="col-lg-5"> <asp:FileUpload ID="fuSignatureOfCub" CssClass="form-control"  runat="server"> </asp:FileUpload>
           </div> </div><hr />
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
        <asp:SqlDataSource ID="SqldsChaturthCharan" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [ChaturthCharan] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [ChaturthCharan] ([NameOfTheDistrict], [NameOfTheCub], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheCubMaster], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningCub], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfPrathamCharan], [DateOfCompletionOfDwitiyaCharan], [DateOfCompletionOfTritiyaCharan], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfChaturthCharan], [NameOfTheProficiencyBadgeearned1], [SignatureOfCubMaster], [SignatureOfCub], [Status]) VALUES (@NameOfTheDistrict, @NameOfTheCub, @Address, @Dist, @PinCode, @DateOfBirth, @NameOfTheGroup, @AddressOfTheGroup, @NameOfTheCubMaster, @CertificateNo, @Date, @WarrantNo, @DateOfJoiningCub, @DateOfCompletionOfPravesh, @DateOfInvestiture, @DateOfCompletionOfPrathamCharan, @DateOfCompletionOfDwitiyaCharan, @DateOfCompletionOfTritiyaCharan, @NameOfTheProficiencyBadgeearned, @DateOfCompletionOfChaturthCharan, @NameOfTheProficiencyBadgeearned1, @SignatureOfCubMaster, @SignatureOfCub, @Status)" 
            SelectCommand="SELECT [SrNo], [NameOfTheDistrict], [NameOfTheCub], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheCubMaster], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningCub], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfPrathamCharan], [DateOfCompletionOfDwitiyaCharan], [DateOfCompletionOfTritiyaCharan], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfChaturthCharan], [NameOfTheProficiencyBadgeearned1], [SignatureOfCubMaster], [SignatureOfCub], [Status] FROM [ChaturthCharan]" 
            
            UpdateCommand="UPDATE [ChaturthCharan] SET [NameOfTheDistrict] = @NameOfTheDistrict, [NameOfTheCub] = @NameOfTheCub, [Address] = @Address, [Dist] = @Dist, [PinCode] = @PinCode, [DateOfBirth] = @DateOfBirth, [NameOfTheGroup] = @NameOfTheGroup, [AddressOfTheGroup] = @AddressOfTheGroup, [NameOfTheCubMaster] = @NameOfTheCubMaster, [CertificateNo] = @CertificateNo, [Date] = @Date, [WarrantNo] = @WarrantNo, [DateOfJoiningCub] = @DateOfJoiningCub, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfInvestiture] = @DateOfInvestiture, [DateOfCompletionOfPrathamCharan] = @DateOfCompletionOfPrathamCharan, [DateOfCompletionOfDwitiyaCharan] = @DateOfCompletionOfDwitiyaCharan, [DateOfCompletionOfTritiyaCharan] = @DateOfCompletionOfTritiyaCharan, [NameOfTheProficiencyBadgeearned] = @NameOfTheProficiencyBadgeearned, [DateOfCompletionOfChaturthCharan] = @DateOfCompletionOfChaturthCharan, [NameOfTheProficiencyBadgeearned1] = @NameOfTheProficiencyBadgeearned1, [SignatureOfCubMaster] = @SignatureOfCubMaster, [SignatureOfCub] = @SignatureOfCub, [Status] = @Status WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNameOfTheDistrict" Name="NameOfTheDistrict" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtNameOfTheCub" Name="NameOfTheCub" 
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
                <asp:ControlParameter ControlID="txtNameOfTheCubMaster" 
                    Name="NameOfTheCubMaster" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtCertificateNo" Name="CertificateNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtWarrantNo" Name="WarrantNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDateOfJoiningCub" DbType="Date" 
                    Name="DateOfJoiningCub" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfPravesh" DbType="Date" 
                    Name="DateOfCompletionOfPravesh" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfInvestiture" DbType="Date" 
                    Name="DateOfInvestiture" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfPrathamCharan" 
                    DbType="Date" Name="DateOfCompletionOfPrathamCharan" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfDwitiyaCharan" 
                    DbType="Date" Name="DateOfCompletionOfDwitiyaCharan" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfTritiyaCharan" 
                    DbType="Date" Name="DateOfCompletionOfTritiyaCharan" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNameOfTheProficiencyBadgeearned" 
                    Name="NameOfTheProficiencyBadgeearned" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDateOfCompletionOfChaturthCharan" 
                    DbType="Date" Name="DateOfCompletionOfChaturthCharan" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNameOfTheProficiencyBadgeearned1" 
                    Name="NameOfTheProficiencyBadgeearned1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuSignatureOfCubMaster" 
                    Name="SignatureOfCubMaster" PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuSignatureOfCub" Name="SignatureOfCub" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                    PropertyName="Value" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NameOfTheDistrict" Type="String" />
                <asp:Parameter Name="NameOfTheCub" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Dist" Type="String" />
                <asp:Parameter Name="PinCode" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="NameOfTheGroup" Type="String" />
                <asp:Parameter Name="AddressOfTheGroup" Type="String" />
                <asp:Parameter Name="NameOfTheCubMaster" Type="String" />
                <asp:Parameter Name="CertificateNo" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="WarrantNo" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfJoiningCub" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
                <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamCharan" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaCharan" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaCharan" />
                <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfCompletionOfChaturthCharan" />
                <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
                <asp:Parameter Name="SignatureOfCubMaster" Type="String" />
                <asp:Parameter Name="SignatureOfCub" Type="String" />
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
