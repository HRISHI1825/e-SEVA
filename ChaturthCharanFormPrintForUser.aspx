<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChaturthCharanFormPrintForUser.aspx.cs" Inherits="ChaturthCharanFormPrintForUser" %>

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
    <form id="form1" runat="server" class="form-horizontal">
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
    <hr />
    <div class="jumbotron">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqldsChaturthCharan" Width="80%">
        <ItemTemplate>
    <fieldset><legend><asp:Label ID="lbl3" runat="server" Text="REGISTRATION FORM OF CHATURTH CHARAN" 
            Font-Underline="True"></asp:Label></legend>
            <table width="100%">
            <tr>
            <td>
             <asp:Label ID="lblNameOfTheDistrict" runat="server"  class=" control-label" Text="Name Of The District"></asp:Label></td>
           <td>
           <asp:Label ID="NameOfTheDistrict" runat="server"  class="control-label" Text='<%#Eval("NameOfTheDistrict") %>'></asp:Label></td>
          </tr>
        <tr><td>
             <asp:Label ID="lblNameOfTheCub" runat="server"  class=" control-label" Text="Name Of The Cub"></asp:Label></td>
          <td>
           <asp:Label ID="NameOfTheCub" runat="server"  class="control-label" Text='<%#Eval("NameOfTheCub") %>'></asp:Label>
           </td></tr>
       <tr><td>
             <asp:Label ID="lblAddress" runat="server" class=" control-label"  Text="Address"></asp:Label></td>
           <td>
            <asp:Label ID="Address" runat="server" class="control-label"  Text='<%#Eval("Address") %>'></asp:Label>
        </td></tr>
        <tr>
              <td>  <asp:Label ID="lblDist" runat="server" class=" control-label"  Text="Dist"></asp:Label></td>
           <td>
             <asp:Label ID="Dist" runat="server" class=" control-label"  Text='<%#Eval("Dist") %>'></asp:Label>
       </td></tr>
        <tr>
               <td> <asp:Label ID="lblPinCode" runat="server"  class=" control-label" Text="Pin Code"></asp:Label></td>
            <td>   <asp:Label ID="PinCode" runat="server" class="control-label"  Text='<%#Eval("PinCode") %>'></asp:Label>
        </td></tr>
        <tr>
        <td>
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth"  class="control-label"></asp:Label></td>
         <td>
              <asp:Label ID="DateOfBirth" runat="server" class=" control-label"  Text='<%#Eval("DateOfBirth") %>'></asp:Label>
           </td></tr>
        <tr><td>
          <asp:Label ID="lblNameOfTheGroup" runat="server"  class=" control-label" Text="Name Of The Group"></asp:Label></td>
           <td>
            <asp:Label ID="NameOfTheGroup" runat="server" class=" control-label"  Text='<%#Eval("NameOfTheGroup") %>'></asp:Label>
          </td></tr>
        <tr>
        <td>
             <asp:Label ID="lblAddressOfTheGroup" runat="server"  class=" control-label"  Text="Address Of The Group"></asp:Label></td>
           <td> <asp:Label ID="Label3" runat="server" class=" control-label"  Text='<%#Eval("AddressOfTheGroup") %>'></asp:Label></td></tr>
        <tr><td>
             <asp:Label ID="lblNameOfTheCubMaster" runat="server"   class="control-label" Text="Name Of The Cub Master"></asp:Label>
         </td><td> <asp:Label ID="NameOfTheCubMaster" runat="server" class=" control-label"  Text='<%#Eval("NameOfTheCubMaster") %>'></asp:Label></td></tr>
        <tr><td>
             <asp:Label ID="lblCertificateNo" runat="server"  class="control-label" Text="Advance/H.W.B. Certificate/Parchment No."></asp:Label>
            </td><td> <asp:Label ID="CertificateNo" runat="server" class="control-label"  Text='<%#Eval("CertificateNo") %>'></asp:Label></td></tr>
        <tr><td>
                     <asp:Label ID="lblDate"  class=" control-label" runat="server" Text="Date"></asp:Label>
                     </td><td> <asp:Label ID="Date" runat="server" class="control-label"  Text='<%#Eval("Date") %>'></asp:Label></td></tr>
        <tr><td>
                     <asp:Label ID="lblWarrantNo"  class="control-label" runat="server" Text="Warrant No."></asp:Label>
                   </td><td> <asp:Label ID="WarrantNo" runat="server" class="control-label"  Text='<%#Eval("WarrantNo") %>'></asp:Label></td></tr>
         <tr><td>
                      <asp:Label ID="lblDateOfJoiningCub"  class=" control-label" runat="server" Text="Date Of Joining Cub"></asp:Label>
           </td><td> <asp:Label ID="DateOfJoiningCub" runat="server" class="control-label"  Text='<%#Eval("DateOfJoiningCub") %>'></asp:Label> </td></tr>
         <tr><td>
            <asp:Label ID="lblDateOfCompletionOfPravesh"   class="control-label" runat="server" Text="Date Of Completion Of Pravesh"></asp:Label>
           </td><td> <asp:Label ID="DateOfCompletionOfPravesh" runat="server" class="control-label"  Text='<%#Eval("DateOfCompletionOfPravesh") %>'></asp:Label></td></tr>
         <tr><td>
           <asp:Label ID="lblDateOfInvestiture" runat="server"  class=" control-label" Text="Date Of Investiture"></asp:Label>
      </td><td> <asp:Label ID="DateOfInvestiture" runat="server" class=" control-label"  Text='<%#Eval("DateOfInvestiture") %>'></asp:Label></td></tr>
         <tr><td>
             <asp:Label ID="lblDateOfCompletionOfPrathamCharan"  class="control-label" runat="server" Text="Date Of Completion Of Pratham Charan"></asp:Label>
               </td><td> <asp:Label ID="DateOfCompletionOfPrathamCharan" runat="server" class="control-label"  Text='<%#Eval("DateOfCompletionOfPrathamCharan") %>'></asp:Label></td></tr>
            <tr><td>
             <asp:Label ID="lblDateOfCompletionOfDwitiyaCharan"  class="control-label" runat="server" Text="Date Of Completion Of Dwitiya Charan"></asp:Label>
             </td><td> <asp:Label ID="DateOfCompletionOfDwitiyaCharan" runat="server" class=" control-label"  Text='<%#Eval("DateOfCompletionOfDwitiyaCharan") %>'></asp:Label> </td></tr>
         <tr><td>
            <asp:Label ID="lblDateOfCompletionOfTritiyaCharan"  class="control-label" runat="server" Text="Date Of Completion Of Tritiya Charan"></asp:Label>
           </td><td> <asp:Label ID="DateOfCompletionOfTritiyaCharan" runat="server" class=" control-label"  Text='<%#Eval("DateOfCompletionOfTritiyaCharan") %>'></asp:Label></td></tr>
         <tr><td>
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned"  class=" control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
          </td><td> <asp:Label ID="NameOfTheProficiencyBadgeearned" runat="server" class="control-label"  Text='<%#Eval("NameOfTheProficiencyBadgeearned") %>'></asp:Label></td></tr>
         <tr><td>
                       <asp:Label ID="lblDateOfCompletionOfChaturthCharan"  class=" control-label" runat="server" Text="Date Of Completion Of Chaturth Charan"></asp:Label>
                   </td><td><asp:Label ID="DateOfCompletionOfChaturthCharan" runat="server" class=" control-label"  Text='<%#Eval("DateOfCompletionOfChaturthCharan") %>'></asp:Label></td></tr>    
         <tr><td>     
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned1"  class="control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
           </td><td><asp:Label ID="NameOfTheProficiencyBadgeearned1" runat="server" class="control-label"  Text='<%#Eval("NameOfTheProficiencyBadgeearned1") %>'></asp:Label></td></tr>
          <tr>
          <td align="center"><img src='SignatureOfCubMaster/<%#Eval("SignatureOfCubMaster") %>' alt="Not available" height="50px" width="150px" />
            </td><td align="center"> 
            <img src='SignatureOfCub/<%#Eval("SignatureOfCub") %>' alt="Not available" height="50px" width="150px" />  
          </td></tr>
          <tr><td align="center">      
            <asp:Label ID="lblSignatureOfCubMaster"  class=" control-label" runat="server" Text="Signature Of Cub Master"></asp:Label>
              </td><td align="center">    
            <asp:Label ID="lblSignatureOfCub"  class="control-label" runat="server" Text="Signature Of Cub"></asp:Label>
           </td></tr>
         </table>
      </fieldset>
         </ItemTemplate>
         </asp:DataList>
         <asp:SqlDataSource ID="SqldsChaturthCharan" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [ChaturthCharan] WHERE ([NameOfTheCub] = @NameOfTheCub)">
            <SelectParameters>
                <asp:QueryStringParameter Name="NameOfTheCub" QueryStringField="NameOfTheCub" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="form-group">
    <div class="col-lg-5 col-lg-offset-3">
            <input type="button" id="printpagebutton" value="print" onclick="printpage()" class="btn btn-primary"/>
        </div></div>
    </div>
    </form>
</body>
</html>
