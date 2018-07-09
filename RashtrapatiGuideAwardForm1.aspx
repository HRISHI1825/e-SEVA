<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiGuideAwardForm1.aspx.cs" Inherits="RashtrapatiGuideAwardForm1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" type="text/css" />
    <link href="themes/custom_9.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    
    <div class ="jumbotron">
    <center >
    <h2>XIII-XIV No.</h2><br />
    <h2>THE BHARAT SCOUTS AND GUIDES</h2>
    <h3>Registration Form for  Rashtrapati Guide Award</h3>
    <h4>(To be filled by the candidate in her own handwriting)</h4>
    </center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            
             <div class="form-group">     
            <asp:Label ID="lblSTATE" runat="server" Text="STATE"
            Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtSTATE" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:TextBox ID="txtSTATE" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </div></div> 
            <div class="form-group">   
               <asp:Label ID="lblNameofGuide" runat="server" Text="1. Name of Guide "
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNameofGuide" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
                <asp:TextBox ID="txtNameofGuide" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large" ></asp:TextBox>
                  <span class="help-block"><asp:Label ID="Label3" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span> 
             </div></div> 
             
              <div class="form-group">   
               <asp:Label ID="lblNameofFatherinCapitalLetters" runat="server" Text="2. (A)Name of Father "
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                     ControlToValidate="txtNameofFatherinCapitalLetters" 
                     ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
                <asp:TextBox ID="txtNameofFatherinCapitalLetters" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                   <span class="help-block"><asp:Label ID="Label4" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span>&nbsp;</div> </div> 
           
               <div class="form-group">  
               <asp:Label ID="lblNameofMotherinCapitalLetters" runat="server" Text="(B)Name of Mother"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="txtNameofMotherinCapitalLetters" 
                     ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <div class="col-lg-5">
                <asp:TextBox ID="txtNameofMotherinCapitalLetters" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large" ></asp:TextBox>
                   <span class="help-block"><asp:Label ID="Label5" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span>
     
             </div> </div> 
             <div class="form-group">  
               <asp:Label ID="lblDateofBirth" runat="server" Text="3. Date of Birth"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                     ControlToValidate="txtDateofBirth" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                <asp:TextBox ID="txtDateofBirth" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large" ></asp:TextBox>
                <span class="help-block"><asp:Label ID="lblDateofBirthinfo" runat="server" Text="(Supported by birth certificate from Head of the Institution,
                if she has appeeared in the Board Examination
                 attested copy of board certificate should be attached) "
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></span>
                    <ajaxToolkit:CalendarExtender ID="txtDateofBirth_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofBirth_CalendarExtender" 
                        TargetControlID="txtDateofBirth">
                    </ajaxToolkit:CalendarExtender>
            </div> </div>
             
             <div class ="form-group">
             <asp:Label ID="lblHomeAddress" runat="server" Text="4. Home Address"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
             <div class="col-lg-5 ">
              <asp:TextBox ID="txtHomeAddress" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control" ></asp:TextBox>
                <span class="help-block" ><asp:Label ID="Label6" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span>   
            </div>
             </div>
             <div class ="form-group">
              <asp:Label ID="lblDistrict" runat="server" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
             <div class="col-lg-5 ">
             <asp:TextBox ID="txtDistrict" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div>
             </div>
             <div class ="form-group ">
               <asp:Label ID="lblPinCode" runat="server" Text="(II) Pin Code"
                Font-Bold="False" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                     ControlToValidate="txtPinCode" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class ="col-lg-5" >
                <asp:TextBox ID="txtPinCode" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div></div> 
              <div class ="form-group ">
               <asp:Label ID="lblTelifAny" runat="server" Text="(III) Tel. if Any"
                Font-Bold="False" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                     ControlToValidate="txtTelifAny" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class = "col-lg-5 ">
                <asp:TextBox ID="txtTelifAny" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div></div> 
             <div class ="form-group ">
             <asp:Label ID="lblPhoto" runat="server" Text="5. Photo"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <div class ="col-lg-5 ">
                <asp:FileUpload ID="FUPhoto"  CssClass="form-control" runat="server" Font-Size="Large" />
            </div></div>
            <div class ="form-group ">
               <asp:Label ID="lblNameofunit" runat="server" Text="6. Name of unit"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                     ControlToValidate="txtNameofunit" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtNameofunit" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
                </div></div> 
                 <div class ="form-group ">
                <asp:Label ID="lblAddressofunit" runat="server" Text="7. Address of unit"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                   <asp:TextBox ID="txtAddressofunit" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
                  </div></div> 
           <div class ="form-group ">
               <asp:Label ID="lblUnitDistrict" runat="server" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                     ControlToValidate="txtUnitDistrict" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtUnitDistrict" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
          </div></div> 
              <div class ="form-group ">
               <asp:Label ID="lblCharterNo" runat="server" Text="8. Charter No. (Registration no.)"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtCharterNo" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtCharterNo" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div></div> 
                  <div class ="form-group ">
               <asp:Label ID="lblDateofIssue" runat="server" Text="(I) Date of Issue"
                Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtDateofIssue" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofIssue" runat="server"
                Font-Names="Times New Roman" CssClass="form-control"  Font-Size="Large"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txtDateofIssue_CalendarExtender" 
                     runat="server" BehaviorID="txtDateofIssue_CalendarExtender" 
                     TargetControlID="txtDateofIssue">
                 </ajaxToolkit:CalendarExtender>
              </div></div> 
              <div class ="form-group ">
               <asp:Label ID="lblDateofValidity" runat="server" Text="(II) Date of Validity"
                Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtDateofValidity" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofValidity" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofValidity_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofValidity_CalendarExtender" 
                        TargetControlID="txtDateofValidity">
                    </ajaxToolkit:CalendarExtender>
                    </div></div> 
          
                 <div class ="form-group ">
               <asp:Label ID="lblDateofInvestiture" runat="server" Text="9. Date of Investiture"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                     ControlToValidate="txtDateofInvestiture" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofInvestiture" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateofInvestiture_CalendarExtender" 
                          runat="server" BehaviorID="txtDateofInvestiture_CalendarExtender" 
                          TargetControlID="txtDateofInvestiture">
                      </ajaxToolkit:CalendarExtender>
                      </div></div> 
          
              <div class ="form-group ">
               <asp:Label ID="lblRajyaPuraskarTestingCampheld" CssClass="col-lg-3 control-label" runat="server" Text="10. Rajya Puraskar Testing Camp held "
               Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           <div class ="col-lg-5 ">
           <div class ="form-group ">
              <asp:Label ID="lblFrom" runat="server" Text="From"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                     ControlToValidate="txtFrom" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class = "col-lg-5 "> 
             <asp:TextBox ID="txtFrom"  CssClass="form-control" runat="server"
                Font-Names="Times New Roman" Font-Size="Large">
                    </asp:TextBox>
                  </div></div> 
             <div class ="form-group ">
             <asp:Label ID="lblTo" runat="server" Text="To"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 
              <div class = "col-lg-5 "> 
             <asp:TextBox ID="txtTo" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
            </div></div> 
            <div class ="form-group ">
             <asp:Label ID="lblAt" runat="server" Text="At"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                     ControlToValidate="txtAt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class = "col-lg-5 "> 
             <asp:TextBox ID="txtAt" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control">
                     </asp:TextBox>
             </div></div> 
             </div></div>
               <div class ="form-group ">
               <asp:Label ID="lblDateofCompletionofRajyaPuraskar" runat="server" Text="Date of Completion of Rajya Puraskar"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofCompletionofRajyaPuraskar" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:CalendarExtender ID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" 
                       runat="server" BehaviorID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" 
                       TargetControlID="txtDateofCompletionofRajyaPuraskar">
                   </ajaxToolkit:CalendarExtender>
              </div></div> 
                <div class ="form-group ">
               <asp:Label ID="lblRajyapuraskarCertificateNo" runat="server" Text="11. Rajyapuraskar Certificate No."
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtRajyapuraskarCertificateNo" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control">
                    </asp:TextBox>
          </div></div> 
           <div class ="form-group ">
                <asp:Label ID="lblDate" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDate" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                          BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                      </ajaxToolkit:CalendarExtender>
              </div></div> 
               <div class ="form-group ">
            <asp:Label ID="lblSignatureOfGuideCaptain" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of Guide Captain"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignatureOfGuideCaptain"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
              <div class ="form-group ">
            <asp:Label ID="lblSignatureOfApplicant" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of Applicant"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignatureOfApplicant"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
             
               <div class ="form-group ">
               <asp:Label ID="lblNameoftheUnitLeader" runat="server"  CssClass="col-lg-3 control-label" Text="12. Name of the Unit Leader"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtNameoftheUnitLeader" runat="server"
                Font-Names="Times New Roman" CssClass="form-control"  Font-Size="Large" ></asp:TextBox>
                <span class="help-block"><asp:Label ID="Label7" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span> 
               </div></div> 
                <div class ="form-group ">
               <asp:Label ID="lblScoutingQualification" runat="server" CssClass="col-lg-3 control-label"  Text="Guiding Qualification"
                               Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtGuidingQualification" runat="server"
                Font-Names="Times New Roman" CssClass="form-control"   Font-Size="Large"></asp:TextBox>
            <span class="help-block"><asp:Label ID="lblWithCertificateParchmentNoAdvancedHWB" runat="server" CssClass="control-label"  Text="(With Certificate/Parchment No. Advanced HWB)"
                               Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></span>        
           </div></div> 
                  <div class ="form-group ">
               <asp:Label ID="lblDateofGuidingQualification" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" 
                          Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofGuidingQualification" runat="server"
                Font-Names="Times New Roman" CssClass="form-control"  Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateofGuidingQualification_CalendarExtender" 
                          runat="server" BehaviorID="txtDateofScoutingQualification_CalendarExtender" 
                          TargetControlID="txtDateofGuidingQualification">
                      </ajaxToolkit:CalendarExtender>
           </div></div> 
               
                <div class ="form-group ">
               <asp:Label ID="lblWarrantNo" runat="server"  CssClass="col-lg-3 control-label" Text="Warrant No."
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtWarrantNo" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div></div> 
                  <div class ="form-group ">
               <asp:Label ID="lblDateofIssueofWarrantNo" runat="server"  CssClass="col-lg-3 control-label" Text="Date of Issue"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofIssueofWarrantNo" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofIssueofWarrantNo_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofIssueofWarrantNo_CalendarExtender" 
                        TargetControlID="txtDateofIssueofWarrantNo">
                    </ajaxToolkit:CalendarExtender>
            </div></div> 
              <div class ="form-group ">
               <asp:Label ID="lblDateofValidityofWarrantNo" runat="server" Text="Date of Validity"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateofValidityofWarrantNo" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                     <ajaxToolkit:CalendarExtender ID="txtDateofValidityofWarrantNo_CalendarExtender" 
                         runat="server" BehaviorID="txtDateofValidityofWarrantNo_CalendarExtender" 
                         TargetControlID="txtDateofValidityofWarrantNo">
                     </ajaxToolkit:CalendarExtender>
             </div></div> 
              <div class ="form-group ">
            <asp:Label ID="lblSignatureOfDistrictCommissionerG" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of District Commissioner(G)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignatureOfDistrictCommissioner"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
                  <div class ="form-group ">
                <asp:Label ID="lblDateSignDistCommG" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateSignDistCommG" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateSignDistCommG_CalendarExtender" 
                          runat="server" BehaviorID="txtDateSignDistCommG_CalendarExtender" 
                          TargetControlID="txtDateSignDistCommG" />
              </div></div> 
                   <div class ="form-group ">
            <asp:Label ID="lblSignatureOfDisttCommissioner" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of District Commissioner"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignatureOfDisttCommissioner"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
                  <div class ="form-group ">
                <asp:Label ID="lblDateSignDistComm" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateSignDistComm" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateSignDistComm_CalendarExtender" 
                          runat="server" BehaviorID="txtDateSignDistComm_CalendarExtender" 
                          TargetControlID="txtDateSignDistComm" />
              </div></div> 
                   <div class ="form-group ">
            <asp:Label ID="lblSignStateOrgCommG" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of State Org. Commissioner(G)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignStateOrgCommG"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
                  <div class ="form-group ">
                <asp:Label ID="lblDateSignStateOrgComm" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateSignStateOrgComm" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateSignStateOrgComm_CalendarExtender" 
                          runat="server" BehaviorID="txtDateSignStateOrgComm_CalendarExtender" 
                          TargetControlID="txtDateSignStateOrgComm" />
              </div></div> 
                   <div class ="form-group ">
            <asp:Label ID="lblSignStateSecretary" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of State Secretary"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignStateSecretary"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
                  <div class ="form-group ">
                <asp:Label ID="lblDateSignStateSecretary" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateSignStateSecretary" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateSignStateSecretary_CalendarExtender" 
                          runat="server" BehaviorID="txtDateSignStateSecretary_CalendarExtender" 
                          TargetControlID="txtDateSignStateSecretary" />
              </div></div> 
             
             <hr />
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
          <div class="col-lg-5 col-lg-offset-3">
     <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
    <asp:Button ID="btn2" runat="server" Text="Submit" Font-Bold="True" 
            Font-Names="Times New Roman"  CssClass="btn btn-primary" Font-Size="Large" 
             onclick="btn2_Click" />
          <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [RashtrapatiPuraskarGuide] WHERE [Sr No] = @Sr_No" 
             InsertCommand="INSERT INTO [RashtrapatiPuraskarGuide] ([STATE], [NameofGuide], [NameofFather], [NameofMother], [DateofBirth], [HomeAddress], [HomeAdDistrict], [HomeAdPincode], [HomeAdTel], [Photo], [NmaeofUnit], [AddressofUnit], [CharterNo], [CharterNoDateOfIssue], [CharterNoDateOfValidity], [DateOfInvestiture], [TestingCampFrom], [TestingCampTo], [TestingCampAt], [DateOfCompletionOfRajyaPuraskar], [RajyaPuraskarCaertificateNo], [NameofUnitLeader], [GuidingQualification], [DateofGuidingQualification], [HWBMParchmentNo], [DateofHWBMParchmentNo], [WarrantNo], [DateofIssueWarrantNo], [DateOfValidityWarrantNo], [DateofBirthCertificate], [DateofReceiptOfAboveinformation], [Checkedby], [ActionTaken], [Designation]) VALUES (@STATE, @NameofGuide, @NameofFather, @NameofMother, @DateofBirth, @HomeAddress, @HomeAdDistrict, @HomeAdPincode, @HomeAdTel, @Photo, @NmaeofUnit, @AddressofUnit, @CharterNo, @CharterNoDateOfIssue, @CharterNoDateOfValidity, @DateOfInvestiture, @TestingCampFrom, @TestingCampTo, @TestingCampAt, @DateOfCompletionOfRajyaPuraskar, @RajyaPuraskarCaertificateNo, @NameofUnitLeader, @GuidingQualification, @DateofGuidingQualification, @HWBMParchmentNo, @DateofHWBMParchmentNo, @WarrantNo, @DateofIssueWarrantNo, @DateOfValidityWarrantNo, @DateofBirthCertificate, @DateofReceiptOfAboveinformation, @Checkedby, @ActionTaken, @Designation)" 
             SelectCommand="SELECT [Sr No] AS Sr_No, [STATE], [NameofGuide], [NameofFather], [NameofMother], [DateofBirth], [HomeAddress], [HomeAdDistrict], [HomeAdPincode], [HomeAdTel], [Photo], [NmaeofUnit], [AddressofUnit], [CharterNo], [CharterNoDateOfIssue], [CharterNoDateOfValidity], [DateOfInvestiture], [TestingCampFrom], [TestingCampTo], [TestingCampAt], [DateOfCompletionOfRajyaPuraskar], [RajyaPuraskarCaertificateNo], [NameofUnitLeader], [GuidingQualification], [DateofGuidingQualification], [HWBMParchmentNo], [DateofHWBMParchmentNo], [WarrantNo], [DateofIssueWarrantNo], [DateOfValidityWarrantNo], [DateofBirthCertificate], [DateofReceiptOfAboveinformation], [Checkedby], [ActionTaken], [Designation] FROM [RashtrapatiPuraskarGuide]" 
             UpdateCommand="UPDATE [RashtrapatiPuraskarGuide] SET [STATE] = @STATE, [NameofGuide] = @NameofGuide, [NameofFather] = @NameofFather, [NameofMother] = @NameofMother, [DateofBirth] = @DateofBirth, [HomeAddress] = @HomeAddress, [HomeAdDistrict] = @HomeAdDistrict, [HomeAdPincode] = @HomeAdPincode, [HomeAdTel] = @HomeAdTel, [Photo] = @Photo, [NmaeofUnit] = @NmaeofUnit, [AddressofUnit] = @AddressofUnit, [CharterNo] = @CharterNo, [CharterNoDateOfIssue] = @CharterNoDateOfIssue, [CharterNoDateOfValidity] = @CharterNoDateOfValidity, [DateOfInvestiture] = @DateOfInvestiture, [TestingCampFrom] = @TestingCampFrom, [TestingCampTo] = @TestingCampTo, [TestingCampAt] = @TestingCampAt, [DateOfCompletionOfRajyaPuraskar] = @DateOfCompletionOfRajyaPuraskar, [RajyaPuraskarCaertificateNo] = @RajyaPuraskarCaertificateNo, [NameofUnitLeader] = @NameofUnitLeader, [GuidingQualification] = @GuidingQualification, [DateofGuidingQualification] = @DateofGuidingQualification, [HWBMParchmentNo] = @HWBMParchmentNo, [DateofHWBMParchmentNo] = @DateofHWBMParchmentNo, [WarrantNo] = @WarrantNo, [DateofIssueWarrantNo] = @DateofIssueWarrantNo, [DateOfValidityWarrantNo] = @DateOfValidityWarrantNo, [DateofBirthCertificate] = @DateofBirthCertificate, [DateofReceiptOfAboveinformation] = @DateofReceiptOfAboveinformation, [Checkedby] = @Checkedby, [ActionTaken] = @ActionTaken, [Designation] = @Designation WHERE [Sr No] = @Sr_No">
             <DeleteParameters>
                 <asp:Parameter Name="Sr_No" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:ControlParameter ControlID="txtSTATE" Name="STATE" PropertyName="Text" 
                     Type="String" />
                 <asp:ControlParameter ControlID="txtNameofGuide" Name="NameofGuide" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtNameofFatherinCapitalLetters" 
                     Name="NameofFather" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtNameofMotherinCapitalLetters" 
                     Name="NameofMother" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtDateofBirth" DbType="Date" 
                     Name="DateofBirth" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtHomeAddress" Name="HomeAddress" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtDistrict" Name="HomeAdDistrict" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtPinCode" Name="HomeAdPincode" 
                     PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtTelifAny" Name="HomeAdTel" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="FUPhoto" Name="Photo" PropertyName="FileName" 
                     Type="String" />
                 <asp:ControlParameter ControlID="txtNameofunit" Name="NmaeofUnit" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtAddressofunit" Name="AddressofUnit" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtCharterNo" Name="CharterNo" 
                     PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtDateofIssue" DbType="Date" 
                     Name="CharterNoDateOfIssue" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtDateofValidity" DbType="Date" 
                     Name="CharterNoDateOfValidity" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtDateofInvestiture" DbType="Date" 
                     Name="DateOfInvestiture" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtFrom" DbType="Date" Name="TestingCampFrom" 
                     PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtTo" DbType="Date" Name="TestingCampTo" 
                     PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtAt" Name="TestingCampAt" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtDateofCompletionofRajyaPuraskar" 
                     DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtRajyapuraskarCertificateNo" 
                     Name="RajyaPuraskarCaertificateNo" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtNameoftheUnitLeader" 
                     Name="NameofUnitLeader" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtGuidingQualification" 
                     Name="GuidingQualification" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtDateofGuidingQualification" DbType="Date" 
                     Name="DateofGuidingQualification" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtHWBParchmentNo" Name="HWBMParchmentNo" 
                     PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtDateofHWBParchmentNo" DbType="Date" 
                     Name="DateofHWBMParchmentNo" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtWarrantNo" Name="WarrantNo" 
                     PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtDateofIssueofWarrantNo" DbType="Date" 
                     Name="DateofIssueWarrantNo" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtDateofValidityofWarrantNo" DbType="Date" 
                     Name="DateOfValidityWarrantNo" PropertyName="Text" />
                 <asp:ControlParameter ControlID="FUDateofBirthCertificate" 
                     Name="DateofBirthCertificate" PropertyName="FileBytes" Type="String" />
                 <asp:ControlParameter ControlID="txtDateofReceiptofaboveInformation" 
                     DbType="Date" Name="DateofReceiptOfAboveinformation" PropertyName="Text" />
                 <asp:ControlParameter ControlID="txtCheckedby" Name="Checkedby" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtActionTaken" Name="ActionTaken" 
                     PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtDesignation" Name="Designation" 
                     PropertyName="Text" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="STATE" Type="String" />
                 <asp:Parameter Name="NameofGuide" Type="String" />
                 <asp:Parameter Name="NameofFather" Type="String" />
                 <asp:Parameter Name="NameofMother" Type="String" />
                 <asp:Parameter DbType="Date" Name="DateofBirth" />
                 <asp:Parameter Name="HomeAddress" Type="String" />
                 <asp:Parameter Name="HomeAdDistrict" Type="String" />
                 <asp:Parameter Name="HomeAdPincode" Type="Int32" />
                 <asp:Parameter Name="HomeAdTel" Type="String" />
                 <asp:Parameter Name="Photo" Type="String" />
                 <asp:Parameter Name="NmaeofUnit" Type="String" />
                 <asp:Parameter Name="AddressofUnit" Type="String" />
                 <asp:Parameter Name="CharterNo" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="CharterNoDateOfIssue" />
                 <asp:Parameter DbType="Date" Name="CharterNoDateOfValidity" />
                 <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
                 <asp:Parameter DbType="Date" Name="TestingCampFrom" />
                 <asp:Parameter DbType="Date" Name="TestingCampTo" />
                 <asp:Parameter Name="TestingCampAt" Type="String" />
                 <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
                 <asp:Parameter Name="RajyaPuraskarCaertificateNo" Type="Int32" />
                 <asp:Parameter Name="NameofUnitLeader" Type="String" />
                 <asp:Parameter Name="GuidingQualification" Type="String" />
                 <asp:Parameter DbType="Date" Name="DateofGuidingQualification" />
                 <asp:Parameter Name="HWBMParchmentNo" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="DateofHWBMParchmentNo" />
                 <asp:Parameter Name="WarrantNo" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="DateofIssueWarrantNo" />
                 <asp:Parameter DbType="Date" Name="DateOfValidityWarrantNo" />
                 <asp:Parameter Name="DateofBirthCertificate" Type="String" />
                 <asp:Parameter DbType="Date" Name="DateofReceiptOfAboveinformation" />
                 <asp:Parameter Name="Checkedby" Type="String" />
                 <asp:Parameter Name="ActionTaken" Type="String" />
                 <asp:Parameter Name="Designation" Type="String" />
                 <asp:Parameter Name="Sr_No" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
          </div> 
          </fieldset> 
          </form> 
          </div> 
      </body> 
      </html>          