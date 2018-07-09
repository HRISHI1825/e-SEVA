<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RajyaPuraskarScout1.aspx.cs" Inherits="RajyaPuraskarScout1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
 <center><h2>THE MAHARASHTRA STATE BHARAT SCOUTS AND GUIDES,<br /> Registration Form for Rajya Puraskar Scout Award.
</h2>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
             <asp:Label ID="lblDistrict" runat="server"  class="col-lg-3 control-label" Text="District"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtDistrict" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtDistrict" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblNameOfTheScout" runat="server" class="col-lg-3 control-label" Text="Name Of The Scout"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                 ControlToValidate="txtNameOfTheScout" ForeColor="Red" 
                 ToolTip="Enter Name of Scout">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfTheScout"  class="form-control" runat="server"></asp:TextBox>
            <span class="help-block"> <asp:Label ID="lbl4" runat="server" Text="(in capital letters)"></asp:Label></span>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblDateofBirth" runat="server" class="col-lg-3 control-label"  Text="Date of Birth" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtDateOfBirth" ForeColor="Red" 
                    ToolTip="Enter Date of Birth">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtDateofBirth" runat="server" class="form-control"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateofBirth_CalendarExtender" runat="server" BehaviorID="txtDateofBirth_CalendarExtender" TargetControlID="txtDateofBirth">
                </ajaxToolkit:CalendarExtender>
            <span class="help-block"> <asp:Label ID="Label1" runat="server" Text="(Supported by birth certificate from Head of the institution, if he has appeared in the Board Examination attested copy of board certificate should be attach)" ></asp:Label></span>
            </div></div>
        <div class="form-group">
                <asp:Label ID="lblHomeAddress" runat="server" class="col-lg-3 control-label"  Text="Home Address" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtHomeAddress" ForeColor="Red" ToolTip="Enter Home Address">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtHomeAddress" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblPinCode" runat="server"  class="col-lg-3 control-label" Text="Pin Code" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtPinCode" ForeColor="Red" ToolTip="Enter Pin Code">*</asp:RequiredFieldValidator>
            <div class="col-lg-5"> <asp:TextBox ID="txtPinCode" runat="server" class="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblTelifAny" runat="server" Text="Tel. if Any"  
                class="col-lg-3 control-label"></asp:Label>
           <div  class="col-lg-5">
             <asp:TextBox ID="txtTelifAny" class="form-control"  runat="server"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblNameOfUnit" runat="server"  class="col-lg-3 control-label" Text="Name Of Unit" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtNameOfUnit" ForeColor="Red" ToolTip="Enter Name of Unit">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtNameOfUnit"  class="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblAddressOfUnit" runat="server"  class="col-lg-3 control-label"  Text="Address Of Unit"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtAddressOfUnit" ForeColor="Red" 
                    ToolTip="Enter Address of Unit">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtAddressOfUnit" runat="server" class="form-control" 
                   TextMode="MultiLine"></asp:TextBox>
         </div> </div>
        <div class="form-group">
             <asp:Label ID="lblCharterNo" runat="server"   class="col-lg-3 control-label" Text="Charter No."></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtCharterNo" ForeColor="Red" ToolTip="Enter Character No.">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtCharterNo" runat="server" class="form-control"></asp:TextBox>
          </div> </div>
        <div class="form-group">
             <asp:Label ID="lblDateofValidity" runat="server"  class="col-lg-3 control-label" Text="Date of Validity"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtDateOfValidity" ForeColor="Red" 
                    ToolTip="Enter Date of Validity">*</asp:RequiredFieldValidator>
            <div class="col-lg-5"><asp:TextBox ID="txtDateofValidity" runat="server"  class="form-control" ></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateofValidity_CalendarExtender" runat="server" BehaviorID="txtDateofValidity_CalendarExtender" TargetControlID="txtDateofValidity">
                </ajaxToolkit:CalendarExtender>
           </div> </div>
        <div class="form-group">
                     <asp:Label ID="lblDateofInvestitute"  class="col-lg-3 control-label" runat="server" Text="Date of Investitute"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtDateOfInvestitute" ForeColor="Red" 
                    ToolTip="Enter Date of Investiture">*</asp:RequiredFieldValidator>
                    <div  class="col-lg-5"> <asp:TextBox  class="form-control" ID="txtDateofInvestitute" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDateofInvestitute_CalendarExtender" runat="server" BehaviorID="txtDateofInvestitute_CalendarExtender" TargetControlID="txtDateofInvestitute">
                        </ajaxToolkit:CalendarExtender>
          </div>  </div>
        <div class="form-group">
                     <asp:Label ID="lblDateofCompletionofRajyaPuraskar"  class="col-lg-3 control-label" runat="server" Text="Date of Completion of Rajya Puraskar"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtDateOfCompletionOfRajyaPuraskar" ForeColor="Red" 
                    ToolTip="Enter Date Of Completion of Rajya Puraskar ">*</asp:RequiredFieldValidator>
                     <div  class="col-lg-5"> <asp:TextBox ID="txtDateofCompletionofRajyaPuraskar" class="form-control"  runat="server"></asp:TextBox>
                         <ajaxToolkit:CalendarExtender ID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" runat="server" BehaviorID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" TargetControlID="txtDateofCompletionofRajyaPuraskar">
                         </ajaxToolkit:CalendarExtender>
          </div>  </div>
        <div class="form-group">
                      <asp:Label ID="lblPhoto"  class="col-lg-3 control-label" runat="server" Text="Photo"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="fuphoto" ForeColor="Red" ToolTip="Enter Photo">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5"> 
                       <asp:FileUpload ID="fuphoto" runat="server" CssClass="form-control"  />
          </div> </div>
        <div class="form-group">
            <asp:Label ID="lblDateOfBirthCertificate"   class="col-lg-3 control-label" runat="server" Text="Date Of Birth Certificate"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="fuDateOfBirthCertificate" ForeColor="Red" 
                    ToolTip="Enter Date of Birth Certificate">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:FileUpload ID="fuDateOfBirthCertificate" runat="server" CssClass="form-control"  />
                 </div>   </div> 
                  <div class="form-group">
            <asp:Label ID="lblSignatureOfScoutMaster"   class="col-lg-3 control-label" runat="server" Text="Signature Of Scout Master"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fuSignatureOfScoutMaster" ForeColor="Red" 
                    ToolTip="Enter Signature Of Scout Master">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:FileUpload ID="fuSignatureOfScoutMaster" runat="server" CssClass="form-control"  />
                 </div>   </div>
        <div class="form-group">
            <asp:Label ID="lblSignatureOfApplicant"   class="col-lg-3 control-label" runat="server" Text="Signature Of Applicant"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="fuSignatureOfApplicant" ForeColor="Red" 
                    ToolTip="Enter Signature Of Applicant">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:FileUpload ID="fuSignatureOfApplicant" runat="server" CssClass="form-control"  />
                 </div>   </div>
      
        <div class="form-group">
        <center>
           <h2>Unit Leader Information</h2></center>
                    </div>
        <div class="form-group">
             <asp:Label ID="lblNameofUnitLeader"  class="col-lg-3 control-label" runat="server" Text="Name of Unit Leader"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtNameOfUnitLeader" ForeColor="Red" 
                    ToolTip="Enter Name Of Unit Leader">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">   <asp:TextBox ID="txtNameofUnitLeader"  class="form-control" runat="server"></asp:TextBox>
           </div></div>
        <div class="form-group">
            <asp:Label ID="lblScoutLeaderQualification"  class="col-lg-3 control-label" 
                runat="server" Text="Scout Leader Qualifiction"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="txtScoutLeaderQualification" ForeColor="Red" 
                    ToolTip="Enter Guide Caption Qualification ">*</asp:RequiredFieldValidator>
                  <div class="col-lg-5"> <asp:TextBox ID="txtScoutLeaderQualification" class="form-control"  runat="server"></asp:TextBox>
           </div>
           </div>
        <div class="form-group">
            <asp:Label ID="lblCertificateNo"  class="col-lg-3 control-label" runat="server" 
                Text="Certificate No. Advanced/HWB"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="txtCertificateNo" ForeColor="Red" 
                    ToolTip="Enter Certificate No. Advanced/HWB">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtCertificateNo" runat="server" class="form-control" ></asp:TextBox>
             </div>  </div>
        <div class="form-group">
            <asp:Label ID="lblWarrantNo"  class="col-lg-3 control-label" runat="server" Text="Warrent No."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="txtWarrantNo" ForeColor="Red" ToolTip="Enter Warrent No.">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">  <asp:TextBox ID="txtWarrantNo"  class="form-control" runat="server"></asp:TextBox>
             </div> </div>
        <div class="form-group">
                       <asp:Label ID="lblDateOfValidity1"  class="col-lg-3 control-label" runat="server" Text="Date Of Validity"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="txtDateOfValidity1" ForeColor="Red" 
                    ToolTip="Enter Date Of Validity">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5"> <asp:TextBox ID="txtDateOfValidity1" class="form-control"  runat="server"></asp:TextBox>
                          <ajaxToolkit:CalendarExtender ID="txtDateOfValidity1_CalendarExtender" runat="server" BehaviorID="txtDateOfValidity1_CalendarExtender" TargetControlID="txtDateOfValidity1">
                          </ajaxToolkit:CalendarExtender>
          </div>  </div>
          <div class="form-group">
            <asp:Label ID="lblSignatureOfDistrictOrganisor"   class="col-lg-3 control-label" runat="server" Text="Signature Of District Organisor(S)"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="fuSignatureOfDistrictOrganisor" ForeColor="Red" 
                    ToolTip="Enter Date of Birth Certificate">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:FileUpload ID="fuSignatureOfDistrictOrganisor" runat="server" CssClass="form-control"  />
                 </div>   </div>
        <div class="form-group">
            <asp:Label ID="lblDate"   class="col-lg-3 control-label" runat="server" Text="Date"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtDate" ForeColor="Red" 
                    ToolTip="Enter Date">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"  />
                 <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
               </ajaxToolkit:CalendarExtender>
                 </div>   </div>
        <div class="form-group">
            <asp:Label ID="lblSignatureOfDistrictSecretary"   class="col-lg-3 control-label" runat="server" Text="Signature Of District Secretary"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="fuSignatureOfDistrictSecretary" ForeColor="Red" 
                    ToolTip="Enter Date of Birth Certificate">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:FileUpload ID="fuSignatureOfDistrictSecretary" runat="server" CssClass="form-control"  />
                 </div>   </div>
          <div class="form-group">
        <asp:Label ID="lblDate1"   class="col-lg-3 control-label" runat="server" Text="Date"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtDate1" ForeColor="Red" 
                    ToolTip="Enter Date">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
           <asp:TextBox ID="txtDate1" runat="server" CssClass="form-control"  />
                 <ajaxToolkit:CalendarExtender ID="txtDate1_CalendarExtender" runat="server" BehaviorID="txtDate1_CalendarExtender" TargetControlID="txtDate1">
               </ajaxToolkit:CalendarExtender>
                 </div>   </div>
                 <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
            <asp:SqlDataSource ID="SqldsRajyaPuraskar" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [RajyaPuraskarScout] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [RajyaPuraskarScout] ([District], [NameOfTheScout], [DateOfBirth], [HomeAddress], [PinCode], [TelifAny], [NameOfUnit], [AddressOfUnit], [CharterNo], [DateOfValidity], [DateOfInvestitute], [DateOfCompletionOfRajyaPuraskar], [Photo], [DateOfBirthCertificate], [SignatureOfScoutMaster], [SignatureOfApplicant], [NameOfUnitLeader], [ScoutLeaderQualification], [CertificateNo], [WarrantNo], [DateOfValidity1], [SignatureOfDistrictOrganisor], [Date], [SignatureOfDistrictSecretary], [Date1]) VALUES (@District, @NameOfTheScout, @DateOfBirth, @HomeAddress, @PinCode, @TelifAny, @NameOfUnit, @AddressOfUnit, @CharterNo, @DateOfValidity, @DateOfInvestitute, @DateOfCompletionOfRajyaPuraskar, @Photo, @DateOfBirthCertificate, @SignatureOfScoutMaster, @SignatureOfApplicant, @NameOfUnitLeader, @ScoutLeaderQualification, @CertificateNo, @WarrantNo, @DateOfValidity1, @SignatureOfDistrictOrganisor, @Date, @SignatureOfDistrictSecretary, @Date1)" 
                SelectCommand="SELECT [SrNo], [District], [NameOfTheScout], [DateOfBirth], [HomeAddress], [PinCode], [TelifAny], [NameOfUnit], [AddressOfUnit], [CharterNo], [DateOfValidity], [DateOfInvestitute], [DateOfCompletionOfRajyaPuraskar], [Photo], [DateOfBirthCertificate], [SignatureOfScoutMaster], [SignatureOfApplicant], [NameOfUnitLeader], [ScoutLeaderQualification], [CertificateNo], [WarrantNo], [DateOfValidity1], [SignatureOfDistrictOrganisor], [Date], [SignatureOfDistrictSecretary], [Date1] FROM [RajyaPuraskarScout]" 
                UpdateCommand="UPDATE [RajyaPuraskarScout] SET [District] = @District, [NameOfTheScout] = @NameOfTheScout, [DateOfBirth] = @DateOfBirth, [HomeAddress] = @HomeAddress, [PinCode] = @PinCode, [TelifAny] = @TelifAny, [NameOfUnit] = @NameOfUnit, [AddressOfUnit] = @AddressOfUnit, [CharterNo] = @CharterNo, [DateOfValidity] = @DateOfValidity, [DateOfInvestitute] = @DateOfInvestitute, [DateOfCompletionOfRajyaPuraskar] = @DateOfCompletionOfRajyaPuraskar, [Photo] = @Photo, [DateOfBirthCertificate] = @DateOfBirthCertificate, [SignatureOfScoutMaster] = @SignatureOfScoutMaster, [SignatureOfApplicant] = @SignatureOfApplicant, [NameOfUnitLeader] = @NameOfUnitLeader, [ScoutLeaderQualification] = @ScoutLeaderQualification, [CertificateNo] = @CertificateNo, [WarrantNo] = @WarrantNo, [DateOfValidity1] = @DateOfValidity1, [SignatureOfDistrictOrganisor] = @SignatureOfDistrictOrganisor, [Date] = @Date, [SignatureOfDistrictSecretary] = @SignatureOfDistrictSecretary, [Date1] = @Date1 WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtDistrict" Name="District" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNameOfTheScout" Name="NameOfTheScout" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtDateofBirth" DbType="Date" 
                        Name="DateOfBirth" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtHomeAddress" Name="HomeAddress" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPinCode" Name="PinCode" PropertyName="Text" 
                        Type="Int32" />
                    <asp:ControlParameter ControlID="txtTelifAny" Name="TelifAny" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNameOfUnit" Name="NameOfUnit" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddressOfUnit" Name="AddressOfUnit" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtCharterNo" Name="CharterNo" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtDateofValidity" DbType="Date" 
                        Name="DateOfValidity" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDateofInvestitute" DbType="Date" 
                        Name="DateOfInvestitute" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDateofCompletionofRajyaPuraskar" 
                        DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" PropertyName="Text" />
                    <asp:ControlParameter ControlID="fuphoto" Name="Photo" PropertyName="FileName" 
                        Type="String" />
                    <asp:ControlParameter ControlID="fuDateOfBirthCertificate" 
                        Name="DateOfBirthCertificate" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="fuSignatureOfScoutMaster" 
                        Name="SignatureOfScoutMaster" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="fuSignatureOfApplicant" 
                        Name="SignatureOfApplicant" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="txtNameofUnitLeader" Name="NameOfUnitLeader" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtScoutLeaderQualification" 
                        Name="ScoutLeaderQualification" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtCertificateNo" Name="CertificateNo" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtWarrentNo" Name="WarrantNo" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtDateOfValidity1" DbType="Date" 
                        Name="DateOfValidity1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="fuSignatureOfDistrictOrganisor" 
                        Name="SignatureOfDistrictOrganisor" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="fuSignatureOfDistrictSecretary" 
                        Name="SignatureOfDistrictSecretary" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="txtDate1" DbType="Date" Name="Date1" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="District" Type="String" />
                    <asp:Parameter Name="NameOfTheScout" Type="String" />
                    <asp:Parameter DbType="Date" Name="DateOfBirth" />
                    <asp:Parameter Name="HomeAddress" Type="String" />
                    <asp:Parameter Name="PinCode" Type="Int32" />
                    <asp:Parameter Name="TelifAny" Type="String" />
                    <asp:Parameter Name="NameOfUnit" Type="String" />
                    <asp:Parameter Name="AddressOfUnit" Type="String" />
                    <asp:Parameter Name="CharterNo" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DateOfValidity" />
                    <asp:Parameter DbType="Date" Name="DateOfInvestitute" />
                    <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
                    <asp:Parameter Name="Photo" Type="String" />
                    <asp:Parameter Name="DateOfBirthCertificate" Type="String" />
                    <asp:Parameter Name="SignatureOfScoutMaster" Type="String" />
                    <asp:Parameter Name="SignatureOfApplicant" Type="String" />
                    <asp:Parameter Name="NameOfUnitLeader" Type="String" />
                    <asp:Parameter Name="ScoutLeaderQualification" Type="String" />
                    <asp:Parameter Name="CertificateNo" Type="String" />
                    <asp:Parameter Name="WarrantNo" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DateOfValidity1" />
                    <asp:Parameter Name="SignatureOfDistrictOrganisor" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="SignatureOfDistrictSecretary" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date1" />
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
