<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiGuideAward4.aspx.cs" Inherits="RashtrapatiGuideAward4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="themes/bootstrap_9.css" rel="stylesheet" type="text/css" />
    <link href="themes/custom_9.css" rel="stylesheet" type="text/css" />
  
</head>
<body>
<div class ="jumbotron">
    <center >
    <h2>XIII-XIV No.</h2><br />
    <h2>THE BHARAT SCOUTS AND GUIDES</h2>
    <h3>Registration Form for Rashtrapati Scout Award</h3>
    <h4>(To be filled by the candidate in her own handwriting)</h4>
    </center>
    </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <form id="form1" runat="server" class="form-horizontal">
        <fieldset>
        <table>
        <tr>
        <td align="right"><td align="center"><img src='Photo/<%#Eval("Photo") %>' alt="Not available" />
              </td>
        </tr>
        </table>
        <table style="width: 100%;">
          <tr>
                <td>
                     <asp:Label ID="lblSTATE" runat="server" Text="STATE"
            Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
               </td>
                <td>
                   <asp:Label ID="State" runat="server" Text='<%#Eval("STATE") %>'
            Font-Bold="False" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label> 
                </td>
               </tr>
            <tr>
                <td>
                   <asp:Label ID="lblNameofGuideinCapitalLetters"  CssClass="col-lg-3 control-label" runat="server" Text="1. Name of Guide "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>  
          
                </td>
                <td>
                 <asp:Label ID="NameofGuide"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("NameofGuide") %>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>  
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNameofFatherinCapitalLetters"  CssClass="col-lg-3 control-label"  runat="server" Text="2. (A)Name of Father "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="NameofFather"  CssClass="col-lg-3 control-label"  runat="server" Text='<%#Eval("NameofFather") %>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </td>      
           </tr>
           <tr>
                <td>
                 <asp:Label ID="lblNameofMotherinCapitalLetters" runat="server"  CssClass="col-lg-3 control-label" Text="(B)Name of Mother"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </td>
                 <td>
                  <asp:Label ID="NameofMother" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("NameofMother") %>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblDateofBirth" runat="server"  CssClass="col-lg-3 control-label" Text="3. Date of Birth"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="DOB" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("DateofBirth")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblHomeAddress" runat="server"  CssClass="col-lg-3 control-label" Text="4. Home Address"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="HomeAddress" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("HomeAddress")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblDistrict" CssClass="col-lg-3 control-label"  runat="server" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="District" CssClass="col-lg-3 control-label"  runat="server" Text='<%#Eval("District")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblPinCode" runat="server"  CssClass="col-lg-3 control-label" Text="(II) Pin Code"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="PinCode" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("PinCode")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblTelifAny" runat="server"  CssClass="col-lg-3 control-label" Text="(III) Tel./Mob if Any"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="TelifAny" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("TelifAny")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblNameofunit" runat="server"  CssClass="col-lg-3 control-label"  Text="6. Name of unit"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="NameofUnit" runat="server"  CssClass="col-lg-3 control-label"  Text='<%#Eval("NameofUnit")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblAddressofunit" runat="server"  CssClass="col-lg-3 control-label" Text="7. Address of unit"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="Addressofunit" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("Addressofunit")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblUnitDistrict" runat="server"  CssClass="col-lg-3 control-label" Text="(I) District"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="UnitDistrict" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("UnitDistrict")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblCharterNo" runat="server"  CssClass="col-lg-3 control-label" Text="8. Charter No. (Registration no.)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID=" Charter No. (Registration no.)" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("CharterNo")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
               <td><asp:Label ID="lblDateofIssue" runat="server"  CssClass="col-lg-3 control-label" Text="(I) Date of Issue"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
               <td><asp:Label ID=" Date of Issue" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("CharterNoDateofIssue")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
               <td><asp:Label ID="lblDateofValidity" runat="server"  CssClass="col-lg-3 control-label"  Text="(II) Date of Validity"
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
               <td><asp:Label ID=" Date of Validity" runat="server"  CssClass="col-lg-3 control-label"  Text='<%#Eval("CharterNoDateofValidity")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblDateofInvestiture" runat="server"  CssClass="col-lg-3 control-label" Text="9. Date of Investiture"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID=" Date of Investiture" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("DateofInvestiture")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblRajyaPuraskarTestingCampheld" CssClass="col-lg-3 control-label" runat="server" Text="10. Rajya Puraskar Testing Camp held "
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
          </td>
          <td> <asp:Label ID="lblFrom" runat="server" Text="From"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
             </td>
             <td> <asp:Label ID="From" runat="server" Text='<%#Eval("TestingCampFrom")%>'
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
             </td>
             <td> <asp:Label ID="lblTo" runat="server" Text="To"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
            </td>
            <td> <asp:Label ID="To" runat="server" Text='<%#Eval("TestingCampTo")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
            </td>
            <td> <asp:Label ID="lblAt" runat="server" Text="At"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
            </td>
            <td> <asp:Label ID="At" runat="server" Text='<%#Eval("TestingCampAt")%>'
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
            </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblDateofCompletionofRajyaPuraskar" CssClass="col-lg-3 control-label"  runat="server" Text="Date of Completion of Rajya Puraskar"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="DateofCompletionofRajyaPuraskar" CssClass="col-lg-3 control-label"  runat="server" Text='<%#Eval("DateofCompletionofRajyaPuraskar")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblRajyapuraskarCertificateNo" runat="server"  CssClass="col-lg-3 control-label" Text="11. Rajyapuraskar Certificate No."
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="RajyapuraskarCertificateNo" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("RajyapuraskarCertificateNo")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
              <td> <asp:Label ID="lblDate" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
              <td> <asp:Label ID="Date" runat="server" Text='<%#Eval("RajyapuraskarDate")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td align="center"><img src='RashtrapatiGuideAwardForm2SignatureOfGuideCaptain/<%#Eval("SignOfGuideCaptain") %>' alt="Not available" />
           </td>
          <td align="center"><img src='RashtrapatiGuideAwardForm1SignofApplicant/<%#Eval("SignofApplicant") %>' alt="Not available" />
         </td>
          </tr>
          <tr>
          <td> <asp:Label ID="SignatureofGuideCaptain" runat="server" Text="Signature of Guide Captain"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
           </td>
          <td><asp:Label ID="SignatureofApplicant" runat="server" Text="Signature of Applicant"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
            </td>
          </tr>
          <tr>
          <td><asp:Label ID="lblNameoftheUnitLeader" runat="server"  CssClass="col-lg-3 control-label" Text="12. Name of the Unit Leader"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="NameoftheUnitLeader" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("NameoftheUnitLeader")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblGuidingQualification" runat="server"  CssClass="col-lg-3 control-label" Text="Guiding Qualification"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="GuidingQualification" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("GuidingQualification")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
              <td><asp:Label ID="lblDateofGuidingQualification"  CssClass="col-lg-3 control-label"  runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          <td><asp:Label ID="DateofGuidingQualification"  CssClass="col-lg-3 control-label"  runat="server" Text='<%#Eval("DateofGuidingQualification")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
          </tr>
          <tr>
          <td> <asp:Label ID="lblWarrantNo" runat="server" Text="Warrant No."
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
              </td>
          <td> <asp:Label ID="WarrantNo" runat="server" Text='<%#Eval("WarrantNo")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
              </td>
              <td> <asp:Label ID="lblDateofIssueofWarrantNo" runat="server" Text="Date of Issue"
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
             </td>
              <td> <asp:Label ID="DateofIssueofWarrantNo" runat="server" Text='<%#Eval("DateofIssueofWarrantNo")%>'
                Font-Bold="True" Font-Names="Times New Roman" CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
             </td>
             <td> <asp:Label ID="lblDateofValidityofWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text="Date of Validity"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
             <td> <asp:Label ID="DateofValidityofWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("DateofValidityofWarrantNo")%>'
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </td>
          </tr>
          <tr>
          <td align="center"></td><img src='RashtrapatiGuideAwardForm1SignofDistCommG/<%#Eval("SignOfDistrictCommissionerG") %>' alt="Not available" /></td>
          <td align="center"></td><img src='RashtrapatiGuideAwardForm1SignofDistComm/<%#Eval("SignOfDisttCommissioner") %>' alt="Not available" /></td>
          </tr>
           <tr>
          <td><asp:Label ID="lblSignatureOfDistrictCommissionerG" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of District Commissioner(G)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
          <td> <asp:Label ID="lblSignatureOfDisttCommissioner" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of Distt. Commissioner"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           </td>
          </tr>
           <tr>
          <td>
          <tr><td><asp:Label ID="lblDateSignDistCommG" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                </td>
                <td><asp:Label ID="DateSignDistCommG" runat="server" Text='<%#Eval("DateSignDistCommG")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
                </td>
           </tr>
           </td> 
          <td>
          <tr>
          <td> <asp:Label ID="lblDateSignDistComm" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          <td> <asp:Label ID="DateSignDistComm" runat="server" Text='<%#Eval("DateSignDistComm")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          </tr>
          </td>
          </tr>
          <tr>
          <td align="center"></td><img src='RashtrapatiGuideAwardForm1SignofStateOrgCommG/<%#Eval("SignStateOrgCommG") %>' alt="Not available" /></td> 
          <td align="center"></td><img src='RashtrapatiGuideAwardForm1SignofStateSec/<%#Eval("SignStateSecretary") %>' alt="Not available" /></td> 
           </tr>
           <tr>
          <td><asp:Label ID="lblSignStateOrgCommG" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of State Org. Commissioner(G)"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
          <td><asp:Label ID="lblSignStateSecretary" runat="server"  CssClass="col-lg-3 control-label" Text="Signature Of State Secretary"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
          </tr>
           <tr>
          <td>
          <tr>
          <td> <asp:Label ID="lblDateSignStateOrgComm" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          <td> <asp:Label ID="DateSignStateOrgComm" runat="server" Text='<%#Eval("DateSignStateOrgCommG")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          </tr>
          </td>
          <td>
          <tr>
          <td> <asp:Label ID="lblDateSignStateSecretary" runat="server" Text="Date"
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          <td> <asp:Label ID="DateSignStateSecretary" runat="server" Text='<%#Eval("DateSignStateSecretary")%>'
                Font-Bold="True" Font-Names="Times New Roman"  CssClass="col-lg-3 control-label"  Font-Size="Large"></asp:Label>
               </td>
          </tr>
          </td>
          </tr>
        </table>
        </fieldset> 
        </form> 
        </ItemTemplate>
 </asp:DataList>
    </div> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</body>
</html>
