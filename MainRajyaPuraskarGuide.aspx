<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainRajyaPuraskarGuide.aspx.cs" Inherits="MainRajyaPuraskarGuide" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script><script type="text/javascript">
        function printpage() {
            var printbutton = document.getElementById("printpagebutton");
            printbutton.style.visibility = 'hidden';
            window.print();
            printbutton.style.visibility = 'visible';
            document.location.href = 'MainRajyaPuraskarGuide1.aspx';
        }
</script>
</head>
<body>
    <div class="jumbotron">
 <center><h2>THE MAHARASHTRA STATE BHARAT SCOUTS AND GUIDES,<br /> Registration Form for Rajya Puraskar Guide Award.
</h2>
 </center>
    </div>
    <hr />
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
        <asp:DataList ID="DataList1" runat="server" Width="100%" 
            DataSourceID="SqldsRajyaPuraskar">
        <ItemTemplate>
    <table width="100%">
    <tr>
    <td align="right">
     <img src='RajyaPuraskarGuideCandidatePhoto/<%#Eval("Photo") %>' alt="Not available" height="150px" width="150px "/>  
    </td></tr>
    </table>
            <table width="100%">
            <tr><td>
             <asp:Label ID="lblDistrict" runat="server"  CssClass="col-lg-3 control-label" Text="District"></asp:Label>
             </td>
             <td>
            <asp:Label ID="DistrictLabel" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("District") %>'></asp:Label>
             </td></tr>
             <tr><td>
             <asp:Label ID="lblNameOfTheGuide" runat="server"  CssClass="col-lg-3 control-label" Text="Name Of The Guide"></asp:Label>
             </td>
             <td>
            <asp:Label ID="NameOfTheGuideLabel" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("NameOfTheGuide") %>'></asp:Label>
            </td></tr>
            <tr><td>
             <asp:Label ID="lblDateOfBirth" runat="server" CssClass="col-lg-3 control-label"  Text="Date Of Birth"></asp:Label>
             </td>
             <td>
             <asp:Label ID="DateOfBirthLabel" runat="server" CssClass="col-lg-3 control-label"  Text='<%#Eval("DateOfBirth") %>'></asp:Label>
             </td></tr>
             <tr><td>
                <asp:Label ID="lblHomeAddress" runat="server" CssClass="col-lg-3 control-label"  Text="Home Address"></asp:Label>
                </td><td>
                <asp:Label ID="HomeAddressLabel" runat="server" CssClass="col-lg-3 control-label"  Text='<%#Eval("HomeAddress") %>'></asp:Label>
                </td></tr>
                <tr><td>
                <asp:Label ID="lblPinCode" runat="server"  CssClass="col-lg-3 control-label" Text="Pin Code"></asp:Label>
                </td><td>
                <asp:Label ID="PinCodeLabel" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("PinCode") %>'></asp:Label>
                </td></tr>
                <tr><td>
            <asp:Label ID="lblTelifAny" runat="server" Text="Tel. if Any"  
                CssClass="col-lg-3 control-label"></asp:Label>
                </td><td>
                <asp:Label ID="TelifAnyLabel" runat="server" Text='<%#Eval("TelifAny") %>' 
                CssClass="col-lg-3 control-label"></asp:Label>
            </td></tr>
            <tr><td>
             <asp:Label ID="lblNameOfUnit" runat="server"  CssClass="col-lg-3 control-label" Text="Name Of Unit"></asp:Label>
             </td>
             <td>
             <asp:Label ID="NameOfUnitLabel" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("NameOfUnit") %>'></asp:Label>
             </td></tr>
            <tr><td>
             <asp:Label ID="lblAddressOfUnit" runat="server"  CssClass="col-lg-3 control-label"  Text="Address Of Unit"></asp:Label>
             </td><td>
             <asp:Label ID="AddressOfUnitLabel" runat="server"  CssClass="col-lg-3 control-label"  Text='<%#Eval("AddressOfUnit") %>'></asp:Label>
             </td></tr>
             <tr><td>
             <asp:Label ID="lblCharterNo" runat="server"   CssClass="col-lg-3 control-label" Text="Charter No."></asp:Label>
             </td><td>
             <asp:Label ID="CharterNoLabel" runat="server"   CssClass="col-lg-3 control-label" Text='<%#Eval("CharterNo") %>'></asp:Label>
             </td></tr>
             <tr><td>
             <asp:Label ID="lblDateOfValidity" runat="server"  CssClass="col-lg-3 control-label" Text="Date Of Validity"></asp:Label>
             </td><td>
             <asp:Label ID="DateOfValidityLabel" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("DateOfValidity") %>'></asp:Label>
             </td></tr>
             <tr><td>
             <asp:Label ID="lblDateOfInvestitute"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Investitute"></asp:Label>
             </td><td>
             <asp:Label ID="DateOfInvestituteLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("DateOfInvestitute") %>'></asp:Label>
             </td></tr>
             <tr><td>
             <asp:Label ID="lblDateOfCompletionOfRajyaPuraskar"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Rajya Puraskar" ></asp:Label>
             </td><td>
             <asp:Label ID="DateOfCompletionOfRajyaPuraskarLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("DateOfCompletionOfRajyaPuraskar") %>' ></asp:Label>
             </td></tr>
             <tr><td align="center">
                <img src='RajyaPuraskarSignatureOfGuideCaptain/<%#Eval("SignatureOfGuideCaptain") %>' 
                     alt="Not available" height="30px"/>
             </td><td align="center">
              <img src='RajyaPuraskarGuideSignatureOfApplicant/<%#Eval("SignatureOfApplicant") %>' 
                     alt="Not available" height="30px"/>
             </td></tr>
             <tr><td align="center">
             <asp:Label ID="lblSignatureOfGuideCaptain"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Guide Captain"></asp:Label>
            </td><td align="center">
            <asp:Label ID="lblSignatureOfApplicant"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of Applicant"></asp:Label>
            </td></tr>
            <tr><td>
             <asp:Label ID="lblNameOfUnitLeader"  CssClass="col-lg-3 control-label" runat="server" Text="Name Of Unit Leader"></asp:Label>
             </td><td>
             <asp:Label ID="NameOfUnitLeaderLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("NameOfUnitLeader") %>'></asp:Label>
             </td></tr>
              <tr><td>
            <asp:Label ID="lblGuideCaptainQualification"  CssClass="col-lg-3 control-label" runat="server" Text="Guide Captain Qualification"></asp:Label>
            </td><td>
            <asp:Label ID="GuideCaptainQualificationLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("GuideCaptainQualification") %>'></asp:Label>
            </td></tr>
            <tr><td>
            <asp:Label ID="lblCertificateNo"  CssClass="col-lg-3 control-label" runat="server" 
                Text="Certificate No. Advanced/HWB"></asp:Label>
            </td><td>
            <asp:Label ID="CertificateNoLabel"  CssClass="col-lg-3 control-label" runat="server" 
                Text='<%#Eval("CertificateNo") %>'></asp:Label>
            </td></tr>
            <tr><td>
            <asp:Label ID="lblWarrantNo"  CssClass="col-lg-3 control-label" runat="server" Text="Warrent No."></asp:Label>
            </td><td>
            <asp:Label ID="WarrantNoLabel"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("WarrantNo") %>'></asp:Label>
            </td></tr>
            <tr><td>
                       <asp:Label ID="lblDateOfValidity1"  CssClass="col-lg-3 control-label" runat="server" Text="Date Of Validity"></asp:Label>
                       </td><td>
                       <asp:Label ID="DateOfValidity1Label"  CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("DateOfValidity1") %>'></asp:Label>
                       </td></tr>
            <tr><td align="center">
            <img src='RajyaPuraskarSignatureOfDOC/<%#Eval("SignatureOfDOC") %>' 
                     alt="Not available" height="30px"/>
                     </td><td align="center">
                     <img src='RajyaPuraskarGuideSignatureOfDistrictSecretary/<%#Eval("SignatureOfDistrictSecretary") %>' 
                     alt="Not available" height="30px"/>
                     </td></tr>
                     <tr><td align="center">
            <asp:Label ID="lblSignatureOfDOC"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of D.O.C."></asp:Label>
            </td><td align="center">
            <asp:Label ID="lblSignatureOfDistrictSecretary"   CssClass="col-lg-3 control-label" runat="server" Text="Signature Of District Secretary"></asp:Label>
            </td></tr>
            <tr><td align="center">
            <asp:Label ID="lblDate"   class="col-lg-3 control-label" runat="server" Text="Date: "></asp:Label>
            <asp:Label ID="DateLabel"   class="col-lg-3 control-label" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
            </td><td align="center">
            <asp:Label ID="lblDate1"   class="col-lg-3 control-label" runat="server" Text="Date: "></asp:Label>
            <asp:Label ID="Date1Label"   class="col-lg-3 control-label" runat="server" Text='<%#Eval("Date1") %>'></asp:Label>
            </td></tr>
            </table>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqldsRajyaPuraskar" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
            SelectCommand="SELECT [District], [NameOfTheGuide], [DateOfBirth], [HomeAddress], [PinCode], [TelifAny], [NameOfUnit], [AddressOfUnit], [CharterNo], [DateOfValidity], [DateOfInvestitute], [DateOfCompletionOfRajyaPuraskar], [Photo], [SignatureOfGuideCaptain], [SignatureOfApplicant], [NameOfUnitLeader], [GuideCaptainQualification], [CertificateNo], [WarrantNo], [DateOfValidity1], [SignatureOfDOC], [Date], [SignatureOfDistrictSecretary], [Date1] FROM [RajyaPuraskarGuide] WHERE ([NameOfTheGuide] = @NameOfTheGuide)">
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
                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Developers.aspx">Developer&#39;s Site</asp:HyperLink></marquee></center>
          </td></tr>
       
    
    </table>
    </div>
    </center>
    </form>
        </div>
</body>
</html>
