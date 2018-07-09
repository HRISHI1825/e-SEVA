<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiScoutAwardForm1.aspx.cs" Inherits="RashtrapatiScoutAwardForm1" %>

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
    <h2>NHQ-12 No.</h2><br />
    <h2>THE BHARAT SCOUTS AND GUIDES</h2>
    <h3>Registration Form for Rashtrapati Scout Award</h3>
    <h4>(To be filled by the candidate in her own handwriting)</h4>
    </center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="jumbotron">
            <div class="form-group ">
            <asp:Label ID="lblSTATE" runat="server" Text="STATE"
            Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
           <div class="col-lg-5">
                <asp:TextBox ID="txtSTATE" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group ">   
          <asp:Label ID="lblNameofScoutinCapitalLetters"  CssClass="col-lg-3 control-label" runat="server" Text="1. Name of Scout "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>  
              <div class="col-lg-5 ">
                <asp:TextBox ID="txtNameofScout" CssClass="form-control" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" ></asp:TextBox>
                 <span class="help-block"><asp:Label ID="Label3" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span>
              </div></div>
         <div class="form-group ">   
               <asp:Label ID="lblNameofFatherinCapitalLetters"  CssClass="col-lg-3 control-label"  runat="server" Text="2. (A)Name of Father "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class="col-lg-5 ">
                <asp:TextBox ID="txtNameofFatherinCapitalLetters" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                 <span class="help-block"><asp:Label ID="Label4" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span> 
                    </div></div>
                       <div class="form-group ">   
          <asp:Label ID="lblNameofMotherinCapitalLetters" runat="server"  CssClass="col-lg-3 control-label" Text="(B)Name of Mother"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtNameofMotherinCapitalLetters" CssClass="form-control" runat="server"></asp:TextBox>
                <span class="help-block"><asp:Label ID="Label5" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span> 
               </div></div>
                     <div class="form-group ">   
               <asp:Label ID="lblDateofBirth" runat="server"  CssClass="col-lg-3 control-label" Text="3. Date of Birth"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofBirth" runat="server"
                Font-Names="Times New Roman" CssClass="form-control"  Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofBirth_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofBirth_CalendarExtender" 
                        TargetControlID="txtDateofBirth">
                    </ajaxToolkit:CalendarExtender>
                     <span class="help-block"><asp:Label ID="lblDateofBirthinfo" runat="server" Text="(Supported by birth certificate from Head of the Institution,if she has appeeared in the Board Examination
                 attested copy of board certificate should be attached) "
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></span> 
              </div></div>
              <div class="form-group ">   
               <asp:Label ID="lblHomeAddress" runat="server"  CssClass="col-lg-3 control-label" Text="4. Home Address"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtHomeAddress" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control" ></asp:TextBox>
                <span class="help-block"><asp:Label ID="Label6" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span> 
               </div></div>
                  <div class="form-group ">   
               <asp:Label ID="lblDistrict" CssClass="col-lg-3 control-label"  runat="server" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtDistrict" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
              </div></div>
              <div class="form-group ">   
               <asp:Label ID="lblPinCode" runat="server"  CssClass="col-lg-3 control-label" Text="(II) Pin Code"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <div class="col-lg-5 ">
                <asp:TextBox ID="txtPinCode" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
             </div></div>
             <div class="form-group ">   
               <asp:Label ID="lblTelifAny" runat="server"  CssClass="col-lg-3 control-label" Text="(III) Tel./Mob if Any"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    <div class="col-lg-5 ">
                <asp:TextBox ID="txtTelifAny" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control"  Font-Size="Large"></asp:TextBox>
             </div></div>
             <div class="form-group ">   
             <asp:Label ID="lblPhoto" runat="server" Text="5. Photo"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                 <asp:FileUpload ID="fuPhoto"  CssClass="form-control"  runat="server" 
                        Font-Size="Large" />
               </div></div>
               <div class="form-group ">   
               <asp:Label ID="lblNameofunit" runat="server"  CssClass="col-lg-3 control-label"  Text="6. Name of unit"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtNameofunit" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"  CssClass="form-control"></asp:TextBox>
              </div></div>
               <div class="form-group ">   
               <asp:Label ID="lblAddressofunit" runat="server"  CssClass="col-lg-3 control-label" Text="7. Address of unit"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <div class="col-lg-5 ">
                <asp:TextBox ID="txtAddressofunit" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"  CssClass="form-control"></asp:TextBox>
              </div></div>
               <div class="form-group ">   
               <asp:Label ID="lblUnitDistrict" runat="server"  CssClass="col-lg-3 control-label" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtUnitDistrict" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
              </div></div>
               <div class="form-group ">   
               <asp:Label ID="lblCharterNo" runat="server"  CssClass="col-lg-3 control-label" Text="8. Charter No. (Registration no.)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtCharterNo" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
          </div></div>
           <div class="form-group ">   
               <asp:Label ID="lblDateofIssue" runat="server"  CssClass="col-lg-3 control-label" Text="(I) Date of Issue"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox  CssClass="form-control" ID="txtDateofIssue" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                     <ajaxToolkit:CalendarExtender ID="txtDateofIssue_CalendarExtender" 
                         runat="server" BehaviorID="txtDateofIssue_CalendarExtender" 
                         TargetControlID="txtDateofIssue">
                     </ajaxToolkit:CalendarExtender>
             </div></div>
              <div class="form-group ">  
               <asp:Label ID="lblDateofValidity" runat="server"  CssClass="col-lg-3 control-label"  Text="(II) Date of Validity"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofValidity"  CssClass="form-control" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofValidity_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofValidity_CalendarExtender" 
                        TargetControlID="txtDateofValidity">
                    </ajaxToolkit:CalendarExtender>
              </div></div>
               <div class="form-group ">  
               <asp:Label ID="lblDateofInvestiture" runat="server"  CssClass="col-lg-3 control-label" Text="9. Date of Investiture"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                   <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofInvestiture" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateofInvestiture_CalendarExtender" 
                           runat="server" BehaviorID="txtDateofInvestiture_CalendarExtender" 
                           TargetControlID="txtDateofInvestiture">
                       </ajaxToolkit:CalendarExtender>
            </div></div>
               <div class="form-group">
               <asp:Label ID="lblRajyaPuraskarTestingCampheld" CssClass="col-lg-3 control-label" runat="server" Text="10. Rajya Puraskar Testing Camp held "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           <div class="col-lg-5">
                        <div class="form-group ">  
              <asp:Label ID="lblFrom" runat="server" Text="From"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                   <div class="col-lg-5 ">
             <asp:TextBox ID="txtFrom" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"  CssClass="form-control"></asp:TextBox>
          </div></div>
              <div class="form-group ">  
             <asp:Label ID="lblTo" runat="server" Text="To"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
             <asp:TextBox ID="txtTo" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"  CssClass="form-control"></asp:TextBox>
            </div></div>
             <div class="form-group ">  
             <asp:Label ID="lblAt" runat="server" Text="At"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class="col-lg-5 ">
             <asp:TextBox ID="txtAt" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
             </div></div>
             </div></div>
              <div class="form-group ">  
               <asp:Label ID="lblDateofCompletionofRajyaPuraskar" CssClass="col-lg-3 control-label"  runat="server" Text="Date of Completion of Rajya Puraskar"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                     <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofCompletionofRajyaPuraskar" runat="server"
                Font-Names="Times New Roman" Font-Size="Large"  CssClass="form-control"></asp:TextBox>
                         <ajaxToolkit:CalendarExtender ID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" 
                             runat="server" BehaviorID="txtDateofCompletionofRajyaPuraskar_CalendarExtender" 
                             TargetControlID="txtDateofCompletionofRajyaPuraskar">
                         </ajaxToolkit:CalendarExtender>
              </div></div>
             <div class="form-group ">  
               <asp:Label ID="lblRajyapuraskarCertificateNo" runat="server"  CssClass="col-lg-3 control-label" Text="11. Rajyapuraskar Certificate No."
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtRajyapuraskarCertificateNo" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
             </div></div>
                <div class="form-group ">  
                <asp:Label ID="lblDate" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtDate" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large" 
                       ></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                        BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                    </ajaxToolkit:CalendarExtender>
          </div></div>
          <div class="form-group "> 
            <asp:Label ID="lblSignofScoutMaster" runat="server" Text="Signature of Scout Master"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                 <asp:FileUpload ID="fuSignofScoutMaster" CssClass="form-control"  runat="server" Font-Size="Large" />
            </div></div>
             <div class="form-group "> 
            <asp:Label ID="lblSignofApplicant" runat="server" Text="Signature of Applicant"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                 <asp:FileUpload ID="fuSignofApplicant" CssClass="form-control"  runat="server" Font-Size="Large" />
            </div></div>
         
             <div class="form-group ">  
               <asp:Label ID="lblNameoftheUnitLeader" runat="server"  CssClass="col-lg-3 control-label" Text="12. Name of the Unit Leader"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class="col-lg-5 ">
                <asp:TextBox ID="txtNameoftheUnitLeader" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control"></asp:TextBox>
                <span class="help-block"><asp:Label ID="Label7" runat="server" Text="(in Capital Letters)" 
                    Font-Size="Medium"></asp:Label></span>
                </div></div>
                   <div class="form-group ">  
               <asp:Label ID="lblScoutingQualification" runat="server"  CssClass="col-lg-3 control-label" Text="Scouting Qualification-Advanced/HWB Course Certificate No. "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <div class="col-lg-5 ">
                <asp:TextBox ID="txtScoutingQualification" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
              </div></div>
                 <div class="form-group ">  
               <asp:Label ID="lblDateofScoutingQualification"  CssClass="col-lg-3 control-label"  runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofScoutingQualification" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofScoutingQualification_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofScoutingQualification_CalendarExtender" 
                        TargetControlID="txtDateofScoutingQualification">
                    </ajaxToolkit:CalendarExtender>
               </div></div>
                 <div class="form-group "> 
               <asp:Label ID="lblHWBParchmentNo" runat="server" CssClass="col-lg-3 control-label"  Text="HWB Parchment No."
                Font-Bold="True" Font-Names="Times New Roman"  Font-Size="Large"></asp:Label>
               <div class="col-lg-5 ">
                <asp:TextBox ID="txtHWBParchmentNo" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                </div></div>
               <div class="form-group "> 
               <asp:Label ID="lblDateofHWBParchmentNo" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofHWBParchmentNo" runat="server"
                Font-Names="Times New Roman"   CssClass="form-control" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateofHWBParchmentNo_CalendarExtender" 
                        runat="server" BehaviorID="txtDateofHWBParchmentNo_CalendarExtender" 
                        TargetControlID="txtDateofHWBParchmentNo">
                    </ajaxToolkit:CalendarExtender>
              </div></div>
              <div class="form-group "> 
               <asp:Label ID="lblWarrantNo" runat="server" Text="Warrant No."
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                <div class="col-lg-5 ">
                <asp:TextBox ID="txtWarrantNo" runat="server"
                Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
                   </div></div>
                <div class="form-group "> 
               <asp:Label ID="lblDateofIssueofWarrantNo" runat="server" Text="Date of Issue"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                 <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofIssueofWarrantNo" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control"  Font-Size="Large"></asp:TextBox>
                     <ajaxToolkit:CalendarExtender ID="txtDateofIssueofWarrantNo_CalendarExtender" 
                         runat="server" BehaviorID="txtDateofIssueofWarrantNo_CalendarExtender" 
                         TargetControlID="txtDateofIssueofWarrantNo">
                     </ajaxToolkit:CalendarExtender>
                 </div></div>
                   <div class="form-group "> 
               <asp:Label ID="lblDateofValidityofWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text="Date of Validity"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                   <div class="col-lg-5 ">
                <asp:TextBox ID="txtDateofValidityofWarrantNo" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDateofValidityofWarrantNo_CalendarExtender" 
                           runat="server" BehaviorID="txtDateofValidityofWarrantNo_CalendarExtender" 
                           TargetControlID="txtDateofValidityofWarrantNo">
                       </ajaxToolkit:CalendarExtender>
            </div></div>
             <div class ="form-group ">
            <asp:Label ID="lblSignatureOfDistrictCommissionerS" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of District Commissioner(S)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignatureOfDistrictCommissioner"  CssClass="form-control"   runat="server" Font-Size="Large" />
                  </div></div> 
                  <div class ="form-group ">
                <asp:Label ID="lblDateSignDistCommS" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                  <div class = "col-lg-5 "> 
                <asp:TextBox ID="txtDateSignDistCommG" runat="server"
                Font-Names="Times New Roman"  CssClass="form-control" Font-Size="Large"></asp:TextBox>
                      <ajaxToolkit:CalendarExtender ID="txtDateSignDistCommG_CalendarExtender" 
                          runat="server" BehaviorID="txtDateSignDistCommG_CalendarExtender" 
                          TargetControlID="txtDateSignDistCommG" />
              </div></div> 
                   <div class ="form-group ">
            <asp:Label ID="lblSignatureOfDisttCommissioner" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of Distt. Commissioner"
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
            <asp:Label ID="lblSignStateOrgCommS" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of State Org. Commissioner(S)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               <div class = "col-lg-5 "> 
                 <asp:FileUpload ID="fuSignStateOrgCommS"  CssClass="form-control"   runat="server" Font-Size="Large" />
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
             <div class="col-lg-5 col-lg-offset-3">
     <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-default" />
                 <asp:Button ID="btn1" runat="server" Text="Submit" Font-Bold="True" 
            Font-Names="Times New Roman"  CssClass="btn btn-primary" Font-Size="Large" 
                     onclick="btn1_Click" />
          </div> 
          <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
    </div>
    </fieldset> 
    <asp:SqlDataSource ID="SqlDsRastraptiScout1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [RashtrapatiPuraskarScout] WHERE [SrNo] = @SrNo" 
        InsertCommand="INSERT INTO [RashtrapatiPuraskarScout] ([STATE], [NameofScout], [NameofFather], [NameofMother], [DateOfBirth], [HomeAddress], [HomeAdDistrict], [HomeAdPinCode], [HomeTel], [Photo], [NameofUnit], [AddressofUnit], [UnitDistrict], [CharterNo], [CharteNoDateofIssue], [CharterNoDateofValidity], [DateOfInvestiture], [TestingCampFrom], [TestingCampTo], [TestingCampAt], [DateOfCompletionOfRajyapuraskar], [RajyaPuraskarCertificateNo], [RajyaPuraskarDate], [NameOfUnitLeader], [ScoutingInformation], [DateofScoutingQualification], [HWBMParchmentNo], [DateofHWBMParchmentNo], [WarrantNo], [DateOfIssueWarrantNo], [DateOfBithCertificate], [DateOfReceiptofAboveInformation], [CheckedBy], [ActionTaken], [Designation]) VALUES (@STATE, @NameofScout, @NameofFather, @NameofMother, @DateOfBirth, @HomeAddress, @HomeAdDistrict, @HomeAdPinCode, @HomeTel, @Photo, @NameofUnit, @AddressofUnit, @UnitDistrict, @CharterNo, @CharteNoDateofIssue, @CharterNoDateofValidity, @DateOfInvestiture, @TestingCampFrom, @TestingCampTo, @TestingCampAt, @DateOfCompletionOfRajyapuraskar, @RajyaPuraskarCertificateNo, @RajyaPuraskarDate, @NameOfUnitLeader, @ScoutingInformation, @DateofScoutingQualification, @HWBMParchmentNo, @DateofHWBMParchmentNo, @WarrantNo, @DateOfIssueWarrantNo, @DateOfBithCertificate, @DateOfReceiptofAboveInformation, @CheckedBy, @ActionTaken, @Designation)" 
        SelectCommand="SELECT [STATE], [SrNo], [NameofScout], [NameofFather], [NameofMother], [DateOfBirth], [HomeAddress], [HomeAdDistrict], [HomeAdPinCode], [HomeTel], [Photo], [NameofUnit], [AddressofUnit], [UnitDistrict], [CharterNo], [CharteNoDateofIssue], [CharterNoDateofValidity], [DateOfInvestiture], [TestingCampFrom], [TestingCampTo], [TestingCampAt], [DateOfCompletionOfRajyapuraskar], [RajyaPuraskarCertificateNo], [RajyaPuraskarDate], [NameOfUnitLeader], [ScoutingInformation], [DateofScoutingQualification], [HWBMParchmentNo], [DateofHWBMParchmentNo], [WarrantNo], [DateOfIssueWarrantNo], [DateOfBithCertificate], [DateOfReceiptofAboveInformation], [CheckedBy], [ActionTaken], [Designation] FROM [RashtrapatiPuraskarScout]" 
        UpdateCommand="UPDATE [RashtrapatiPuraskarScout] SET [STATE] = @STATE, [NameofScout] = @NameofScout, [NameofFather] = @NameofFather, [NameofMother] = @NameofMother, [DateOfBirth] = @DateOfBirth, [HomeAddress] = @HomeAddress, [HomeAdDistrict] = @HomeAdDistrict, [HomeAdPinCode] = @HomeAdPinCode, [HomeTel] = @HomeTel, [Photo] = @Photo, [NameofUnit] = @NameofUnit, [AddressofUnit] = @AddressofUnit, [UnitDistrict] = @UnitDistrict, [CharterNo] = @CharterNo, [CharteNoDateofIssue] = @CharteNoDateofIssue, [CharterNoDateofValidity] = @CharterNoDateofValidity, [DateOfInvestiture] = @DateOfInvestiture, [TestingCampFrom] = @TestingCampFrom, [TestingCampTo] = @TestingCampTo, [TestingCampAt] = @TestingCampAt, [DateOfCompletionOfRajyapuraskar] = @DateOfCompletionOfRajyapuraskar, [RajyaPuraskarCertificateNo] = @RajyaPuraskarCertificateNo, [RajyaPuraskarDate] = @RajyaPuraskarDate, [NameOfUnitLeader] = @NameOfUnitLeader, [ScoutingInformation] = @ScoutingInformation, [DateofScoutingQualification] = @DateofScoutingQualification, [HWBMParchmentNo] = @HWBMParchmentNo, [DateofHWBMParchmentNo] = @DateofHWBMParchmentNo, [WarrantNo] = @WarrantNo, [DateOfIssueWarrantNo] = @DateOfIssueWarrantNo, [DateOfBithCertificate] = @DateOfBithCertificate, [DateOfReceiptofAboveInformation] = @DateOfReceiptofAboveInformation, [CheckedBy] = @CheckedBy, [ActionTaken] = @ActionTaken, [Designation] = @Designation WHERE [SrNo] = @SrNo">
        <DeleteParameters>
            <asp:Parameter Name="SrNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="lblSTATE" Name="STATE" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtNameofScout" Name="NameofScout" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtNameofFatherinCapitalLetters" 
                Name="NameofFather" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtNameofMotherinCapitalLetters" 
                Name="NameofMother" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDateofBirth" DbType="Date" 
                Name="DateOfBirth" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtHomeAddress" Name="HomeAddress" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDistrict" Name="HomeAdDistrict" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPinCode" Name="HomeAdPinCode" 
                PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtTelifAny" Name="HomeTel" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="fuPhoto" Name="Photo" PropertyName="FileName" 
                Type="String" />
            <asp:ControlParameter ControlID="txtNameofunit" Name="NameofUnit" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtAddressofunit" Name="AddressofUnit" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtUnitDistrict" Name="UnitDistrict" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtCharterNo" Name="CharterNo" 
                PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtDateofIssue" DbType="Date" 
                Name="CharteNoDateofIssue" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDateofValidity" DbType="Date" 
                Name="CharterNoDateofValidity" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDateofInvestiture" DbType="Date" 
                Name="DateOfInvestiture" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtFrom" DbType="Date" Name="TestingCampFrom" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtTo" DbType="Date" Name="TestingCampTo" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtAt" Name="TestingCampAt" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDateofCompletionofRajyaPuraskar" 
                DbType="Date" Name="DateOfCompletionOfRajyapuraskar" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtRajyapuraskarCertificateNo" 
                Name="RajyaPuraskarCertificateNo" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtDate" DbType="Date" 
                Name="RajyaPuraskarDate" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtNameoftheUnitLeader" 
                Name="NameOfUnitLeader" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtScoutingQualification" 
                Name="ScoutingInformation" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDateofScoutingQualification" DbType="Date" 
                Name="DateofScoutingQualification" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtHWBParchmentNo" Name="HWBMParchmentNo" 
                PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtDateofHWBParchmentNo" DbType="Date" 
                Name="DateofHWBMParchmentNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtWarrantNo" Name="WarrantNo" 
                PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtDateofIssueofWarrantNo" DbType="Date" 
                Name="DateOfIssueWarrantNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="FUDateofBirthCertificate" 
                Name="DateOfBithCertificate" PropertyName="FileName" Type="String" />
            <asp:ControlParameter ControlID="txtDateofReceiptofaboveInformation" 
                DbType="Date" Name="DateOfReceiptofAboveInformation" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtCheckedby" Name="CheckedBy" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtActionTaken" Name="ActionTaken" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblDesignation" Name="Designation" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="STATE" Type="String" />
            <asp:Parameter Name="NameofScout" Type="String" />
            <asp:Parameter Name="NameofFather" Type="String" />
            <asp:Parameter Name="NameofMother" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="HomeAddress" Type="String" />
            <asp:Parameter Name="HomeAdDistrict" Type="String" />
            <asp:Parameter Name="HomeAdPinCode" Type="Int32" />
            <asp:Parameter Name="HomeTel" Type="String" />
            <asp:Parameter Name="Photo" Type="String" />
            <asp:Parameter Name="NameofUnit" Type="String" />
            <asp:Parameter Name="AddressofUnit" Type="String" />
            <asp:Parameter Name="UnitDistrict" Type="String" />
            <asp:Parameter Name="CharterNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="CharteNoDateofIssue" />
            <asp:Parameter DbType="Date" Name="CharterNoDateofValidity" />
            <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
            <asp:Parameter DbType="Date" Name="TestingCampFrom" />
            <asp:Parameter DbType="Date" Name="TestingCampTo" />
            <asp:Parameter Name="TestingCampAt" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyapuraskar" />
            <asp:Parameter Name="RajyaPuraskarCertificateNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="RajyaPuraskarDate" />
            <asp:Parameter Name="NameOfUnitLeader" Type="String" />
            <asp:Parameter Name="ScoutingInformation" Type="String" />
            <asp:Parameter DbType="Date" Name="DateofScoutingQualification" />
            <asp:Parameter Name="HWBMParchmentNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DateofHWBMParchmentNo" />
            <asp:Parameter Name="WarrantNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DateOfIssueWarrantNo" />
            <asp:Parameter Name="DateOfBithCertificate" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfReceiptofAboveInformation" />
            <asp:Parameter Name="CheckedBy" Type="String" />
            <asp:Parameter Name="ActionTaken" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="SrNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form> 
  
</body>
</html>
