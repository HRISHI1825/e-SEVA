<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainRajyaPuraskarGuide1.aspx.cs" Inherits="MainRajyaPuraskarGuide1" %>

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
    <script type="text/javascript">
        function printpage() {
            var printbutton = document.getElementById("printpagebutton");
            printbutton.style.visibility = 'hidden';
            window.print();
            printbutton.style.visibility = 'visible';
            document.location.href = 'Default.aspx';
        }
</script>
</head>
<body>
    
        <div class="jumbotron">
            <center>
         <h2>THE MAHARASHTRA STATE BHARAT SCOUTS AND GUIDES, MUMBAI-20
            <br />
            INFORMATION SHEET FOR GUIDE</h2><br /><h3>To be attached with Rajya Puraskar Registration Form</h3></center>
    </div>
         <hr />
  <div class="jumbotron">
        <form id="form1" runat="server" class="form-horizontal">
             <fieldset>
                 <asp:DataList ID="DataList1" runat="server" DataSourceID="SqldsRajyaPuraskar" 
                     Width="100%">
                 <ItemTemplate>
             <table width="100%">
             <tr><td>
            <asp:Label ID="lblNameOfTheDistrict" CssClass ="col-lg-3 control-label" 
                     runat="server" Text=" Name Of The District" ></asp:Label>
             </td><td>
             <asp:Label ID="DistrictLabel" CssClass ="col-lg-3 control-label" 
                     runat="server" Text='<%#Eval("District") %>'></asp:Label>
            </td></tr>
            <tr><td>
            <asp:Label ID="lblFullNameinCapitalLetters" CssClass ="col-lg-3 control-label" runat="server" 
                    Text="Full Name in Capital Letters" Font-Bold="False"></asp:Label>
            </td><td>
            <asp:Label ID="NameOfTheGuideLabel" CssClass ="col-lg-3 control-label" runat="server" 
                    Text='<%#Eval("NameOfTheGuide") %>' Font-Bold="False"></asp:Label>
            </td> </tr>   
            <tr><td>
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth"  CssClass ="col-lg-3 control-label"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%#Eval("DateOfBirth") %>'  CssClass ="col-lg-3 control-label"></asp:Label>
                  </td></tr>
            <tr><td>
            <asp:Label ID="lblNameOfUnit" runat="server" Text="Name Of Unit" CssClass ="col-lg-3 control-label" ></asp:Label>
                  </td><td>
                  <asp:Label ID="NameOfUnitLabel" runat="server" Text='<%#Eval("NameOfUnit") %>' CssClass ="col-lg-3 control-label" ></asp:Label>
                  </td></tr>
                 <tr><td>
            <asp:Label ID="lblAddressOfUnit" runat="server" Text="Address Of Unit" CssClass ="col-lg-3 control-label"></asp:Label>
                  </td><td>
                  <asp:Label ID="AddressOfUnitLabel" runat="server" Text='<%#Eval("AddressOfUnit") %>' CssClass ="col-lg-3 control-label"></asp:Label>
                  </td></tr>
            <tr><td>
            <asp:Label ID="lblDateOfInvestiture" runat="server" Text="Date Of Investiture" CssClass ="col-lg-3 control-label"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfInvestituteLabel" runat="server" Text='<%#Eval("DateOfInvestitute") %>' CssClass ="col-lg-3 control-label"></asp:Label>
                  </td></tr>
            <tr><td>
                <asp:Label ID="lblDateCompletionof" runat="server" Text="Date Completion of" CssClass ="col-lg-3 control-label"></asp:Label>
           </td><td>
            <table width="100%">
            <tr><td>
            <asp:Label ID="lblPravesh"   runat="server" Text="1) Pravesh" CssClass ="col-lg-3 control-label"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfCompletionOfPraveshLabel"   runat="server" Text='<%#Eval("DateOfCompletionOfPravesh") %>' CssClass ="col-lg-3 control-label"></asp:Label>
                  </td></tr>
             <tr><td>
            <asp:Label ID="lblPrathamSopan" runat="server" CssClass ="col-lg-3 control-label" Text="2) Pratham Sopan"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfCompletionOfPrathamSopanLabel1" runat="server" CssClass ="col-lg-3 control-label" Text='<%#Eval("DateOfCompletionOfPrathamSopan") %>'></asp:Label>
                  </td></tr>
             <tr><td>
            <asp:Label ID="lblDwitiyaSopan" runat="server" Text="3) Dwitiya Sopan" CssClass ="col-lg-3 control-label"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfCompletionOfDwitiyaSopanLabel" runat="server" Text='<%#Eval("DateOfCompletionOfDwitiyaSopan") %>' CssClass ="col-lg-3 control-label"></asp:Label>
                  </td></tr>
             <tr><td>
            <asp:Label ID="lblTritiyaSopan" runat="server" Text="4) Tritiya Sopan" CssClass ="col-lg-3 control-label"></asp:Label>
                </td><td>
                <asp:Label ID="DateOfCompletionOfTritiyaSopanLabel" runat="server" Text='<%#Eval("DateOfCompletionOfTritiyaSopan") %>' CssClass ="col-lg-3 control-label"></asp:Label>
                </td></tr>  
           <tr><td>
            <asp:Label ID="lblCertificateNo" runat="server" Text="Certificate No." 
                       CssClass ="col-lg-3 control-label"></asp:Label>
                 </td><td>
                 <asp:Label ID="CertificateNo1Label" runat="server" Text='<%#Eval("CertificateNo1") %>' 
                       CssClass ="col-lg-3 control-label"></asp:Label>
                 </td></tr>
             <tr><td>
            <asp:Label ID="lblDateOfIssue" runat="server" CssClass ="col-lg-3 control-label" 
                       Text="Date Of Issue"></asp:Label>
                  </td><td>
                  <asp:Label ID="DateOfIssueLabel" runat="server" CssClass ="col-lg-3 control-label" 
                       Text='<%#Eval("DateOfIssue") %>'></asp:Label>
                  </td></tr></table>
            </td></tr>
            </table>
             <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
             <caption>
             <asp:Label ID="lblDetailsOfDwitiyaSopan" CssClass ="control-label" runat="server" Text="11(10) Of APRO III Details Of Dwitiya Sopan Proficiency Badge"></asp:Label>
             </caption>
            <tr>
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblNameOfBadge"  runat="server" Text="Name Of Badge" CssClass ="control-label"></asp:Label>
                  </th>
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing"  CssClass ="control-label" runat="server" Text="Date Of Passing"></asp:Label>
                  </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer"  CssClass ="control-label" runat="server" Text="Name Of Examiner"></asp:Label>
                  </th></tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfBadgeLabel"  runat="server" Text='<%#Eval("NameOfBadge") %>' CssClass ="control-label"></asp:Label>
            </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="DateOfPassingLabel"  runat="server" Text='<%#Eval("DateOfPassing") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfExaminerLabel"  runat="server" Text='<%#Eval("NameOfExaminer") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           </table>
            <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
            <caption>
             <asp:Label ID="lblDetailsOfTritiyaSopan" CssClass ="control-label" runat="server" Text="Details Of Tritiya Sopan Proficiency Badge 12(13) Of APRO III"></asp:Label>
           </caption>
             <tr>
             <td style=" border-collapse:collapse">
             <asp:Label ID="lblGroupA" runat="server" CssClass ="control-label" Text="Group A"></asp:Label></td>
              </tr>
            <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge1" runat="server" Text="Name Of Badge" CssClass ="control-label"></asp:Label>
            </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblDateOfPassing1" runat="server" Text="Date Of Passing" CssClass ="control-label"></asp:Label>
                 </th>
           <th style=" border-collapse:collapse">
           <asp:Label ID="lblNameOfExaminer1" runat="server" Text="Name Of Examiner" CssClass ="control-label"></asp:Label>
                  </th></tr>
           <tr>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfBadge1Label"  runat="server" Text='<%#Eval("NameOfBadge1") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="DateOfPassing1Label"  runat="server" Text='<%#Eval("DateOfPassing1") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer1Label"  runat="server" Text='<%#Eval("NameOfExaminer1") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfBadge2Label"  runat="server" Text='<%#Eval("NameOfBadge2") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="DateOfPassing2Label"  runat="server" Text='<%#Eval("DateOfPassing2") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer2Label"  runat="server" Text='<%#Eval("NameOfExaminer2") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr style=" border-collapse:collapse">
             <td>
             <asp:Label ID="lblGroupB" runat="server" Text="Group B" CssClass="control-label"></asp:Label></td>
             </tr>
            <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge2" runat="server" CssClass="control-label" Text="Name Of Badge"></asp:Label>
                  </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblDateOfpassing2" runat="server" Text="Date Of Passing" CssClass="control-label"></asp:Label>
                  </th>
           <th style=" border-collapse:collapse">
           <asp:Label ID="lblNameOfExaminer2" runat="server" Text="Name Of Examiner" CssClass="control-label"></asp:Label>
                  </th></tr>
           <tr>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfBadge3Label"  runat="server" Text='<%#Eval("NameOfBadge3") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="DateOfpassing3Label"  runat="server" Text='<%#Eval("DateOfPassing3") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer3Label"  runat="server" Text='<%#Eval("NameOfExaminer3") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfBadge4Label"  runat="server" Text='<%#Eval("NameOfBadge4") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="DateOfPassing4Label"  runat="server" Text='<%#Eval("DateOfPassing4") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer4Label"  runat="server" Text='<%#Eval("NameOfExaminer4") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           </table>
        
           
            <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
            <caption>
             <asp:Label ID="lblDetailsOfRajyaPuraskar" runat="server" 
                    Text="Details Of Rajya Puraskar Proficiency Badge 13(2) Of APRO III" 
                    CssClass="control-label"></asp:Label>
           </caption>
             <tr style="border-collapse:collapse" >
             <td>
             <asp:Label ID="lblGroupA1" runat="server" CssClass="control-label" Text="Group A"></asp:Label></td>
         </tr>
            <tr>
            <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblNameOfBadge3" runat="server" Text="Name Of Badge" 
                    CssClass="control-label"></asp:Label>
                    </th>
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing3" runat="server" Text="Date Of Passing" CssClass="control-label"></asp:Label>
                 </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer3" runat="server" Text="Name Of Examiner" CssClass="control-label"></asp:Label>
                  </th></tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfBadge5Label"  runat="server" Text='<%#Eval("NameOfBadge5") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse"> 
            <asp:Label ID="DateOfPassing5Label"  runat="server" Text='<%#Eval("DateOfPassing5") %>' CssClass ="control-label"></asp:Label>
          </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfExaminer5Label"  runat="server" Text='<%#Eval("NameOfExaminer5") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfBadge6Label"  runat="server" Text='<%#Eval("NameOfBadge6") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="DateOfPassing6Label"  runat="server" Text='<%#Eval("DateOfPassing6") %>' CssClass ="control-label"></asp:Label>
          </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfExaminer6Label"  runat="server" Text='<%#Eval("NameOfExaminer6") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfBadge7Label"  runat="server" Text='<%#Eval("NameOfBadge7") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="DateOfPassing7Label"  runat="server" Text='<%#Eval("DateOfPassing7") %>' CssClass ="control-label"></asp:Label>
          </td>
           <td style=" border-collapse:collapse" >
           <asp:Label ID="NameOfExaminer7Label"  runat="server" Text='<%#Eval("NameOfExaminer7") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           </table>
            <table width="100%" class="table table-striped table-hover" style=" border-collapse:collapse">
            <caption>
             <asp:Label ID="lblPROFICIENCYBADGE" runat="server" Text="13(3) APRO III PROFICIENCY BADGE" Cssclass="control-label"></asp:Label>
           </caption>
             <tr style=" border-collapse:collapse">
             <td>
             <asp:Label ID="lblGroupA2" runat="server" Text="Group A" Cssclass="control-label"></asp:Label></td>
             </tr>
            <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge4" runat="server" Text="Name Of Badge"  Cssclass="control-label"></asp:Label>
                  </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblDateOfPassing4" runat="server" Text="Date Of Passing" Cssclass="control-label"></asp:Label>
                  </th>
           <th style=" border-collapse:collapse">
           <asp:Label ID="lblNameOfExaminer4" Cssclass="control-label"  runat="server" Text="Name Of Examiner"></asp:Label>
                  </th></tr>
           <tr>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfBadge8Label"  runat="server" Text='<%#Eval("NameOfBadge8") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
                       <asp:Label ID="DateOfPassing8Label"  runat="server" Text='<%#Eval("DateOfPassing8") %>' CssClass ="control-label"></asp:Label>
            </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer8Label"  runat="server" Text='<%#Eval("NameOfExaminer8") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
           <tr style=" border-collapse:collapse">
             <td>
             <asp:Label ID="lblGroupB2" runat="server" Cssclass="control-label" Text="Group B" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
             <td></td></tr>
            <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge5" runat="server" Cssclass="control-label" Text="Name Of Badge"></asp:Label>
                  </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblDateOfPassing5" runat="server" Text="Date Of Passing" Cssclass="control-label"></asp:Label>
                  </th>
           <th style=" border-collapse:collapse">
           <asp:Label ID="lblNameOfExaminer5" runat="server" Cssclass="control-label" Text="Name Of Examiner"></asp:Label>
                 </th></tr>
           <tr>
           <td style=" border-collapse:collapse">
            <asp:Label ID="NameOfBadge9Label"  runat="server" Text='<%#Eval("NameOfBadge9") %>' CssClass ="control-label"></asp:Label>
          </td>
           <td style=" border-collapse:collapse">
             <asp:Label ID="DateOfPassing9Label"  runat="server" Text='<%#Eval("DateOfPassing9") %>' CssClass ="control-label"></asp:Label>
           </td>
           <td style=" border-collapse:collapse">
           <asp:Label ID="NameOfExaminer9Label"  runat="server" Text='<%#Eval("NameOfExaminer9") %>' CssClass ="control-label"></asp:Label>
           </td>
           </tr>
                  </table>
                  <table width="100%">
                  <tr><td>
            <asp:Label ID="lblDate" runat="server" Text="Date: " CssClass="col-lg-3 control-label"></asp:Label>
            <asp:Label ID="Date2Label"  runat="server" Text='<%#Eval("Date2") %>' CssClass ="control-label"></asp:Label>
                  </td>
                  <td>
                  <asp:Label ID="lblSignatureOfGuide"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Guide"></asp:Label>
                 </td>
                  <td>
                  <img src='RajyaPuraskarGuideSignatureOfApplicant/<%#Eval("SignatureOfApplicant") %>' 
                     alt="Not available" height="30px"/>
             </td>
                  </tr>
                  </table>
                  <table width="100%">
                  <tr>
                  <td>
                  <asp:Label ID="lblSignatureOfGuider"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Guider"></asp:Label>
                  </td>
                  <td>
                <img src='RajyaPuraskarSignatureOfGuideCaptain/<%#Eval("SignatureOfGuideCaptain") %>' 
                     alt="Not available" height="30px"/>
             </td>
                  </tr>
                  <tr>
                  <td>
                  <asp:Label ID="lblName"  CssClass="col-lg-3 control-label" runat="server" Text="Name: "></asp:Label>
                  </td>
                  <td>
                  <asp:Label ID="NameOfUnitLeaderLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("NameOfUnitLeader") %>'></asp:Label>
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <asp:Label ID="lblGuideCaptainQualification"  CssClass="col-lg-3 control-label" runat="server" Text="Guider Qualification"></asp:Label>
                  </td>
                  <td>
                  <asp:Label ID="GuideCaptainQualificationLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("GuideCaptainQualification") %>'></asp:Label>
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <asp:Label ID="lblWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text="Warrent No."></asp:Label>
                  </td>
                  <td>
                  <asp:Label ID="WarrantNoLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("WarrantNo") %>'></asp:Label>
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <asp:Label ID="lblSignatureOfDOC"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of D.O.C."></asp:Label>
                  </td>
                  <td>
                  <img src='RajyaPuraskarSignatureOfDOC/<%#Eval("SignatureOfDOC") %>' 
                     alt="Not available" height="30px"/>
                  </td>
                  </tr>
                  </table>
                  </ItemTemplate>
                  </asp:DataList>
                  <asp:SqlDataSource ID="SqldsRajyaPuraskar" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                     
                     SelectCommand="SELECT [District], [NameOfTheGuide], [DateOfBirth], [NameOfUnit], [AddressOfUnit], [DateOfInvestitute], [SignatureOfDOC], [SignatureOfGuideCaptain], [SignatureOfApplicant], [NameOfUnitLeader], [GuideCaptainQualification], [CertificateNo], [WarrantNo], [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [Date2] FROM [RajyaPuraskarGuide] WHERE ([NameOfTheGuide] = @NameOfTheGuide)">
                      <SelectParameters>
                          <asp:QueryStringParameter Name="NameOfTheGuide" 
                              QueryStringField="NameOfTheGuide" Type="String" />
                      </SelectParameters>
                 </asp:SqlDataSource>
                 <div class="form-group">
    <div class="col-lg-5 col-lg-offset-3">
            <input type="button" id="printpagebutton" value="print" onclick="printpage()" class="btn btn-primary"/>
        </div></div>
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
             Font-Size="Large" ForeColor="#0099FF">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td></tr>
      <tr><td colspan="2" >
        <center>
        <marquee behavior="alternate"><asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                Font-Size="Large" ForeColor="#0099FF">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
    </form>
    </div>
</body>
</html>
