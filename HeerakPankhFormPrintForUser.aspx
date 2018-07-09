<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HeerakPankhFormPrintForUser.aspx.cs" Inherits="HeerakPankhFormPrintForUser" %>

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
function printpage()
{
var printbutton=document.getElementById("printpagebutton");
printbutton.style.visibility='hidden';
window.print();
printbutton.style.visibility='visible';
document.location.href='Default.aspx';
}
</script>
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
<hr />
    <div class="jumbotron">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqldsHeerakPankh" Width="80%">
        <ItemTemplate>
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset><legend>
         <asp:Label ID="lbl3" runat="server" Text="REGISTRATION FORM OF HEERAK PANKH" 
            Font-Underline="True"></asp:Label>
              </legend>
            <table width="100%">
            <tr>
            <td>
             <asp:Label ID="lblNameOfTheDistrict" runat="server"  class="col-lg-3 control-label" Text="Name Of The District"></asp:Label></td>
           <td>
           <asp:Label ID="NameOfTheDistrict" runat="server"  class="col-lg-3 control-label" Text='<%#Eval("NameOfTheDistrict") %>'></asp:Label></td>
          </tr>
        <tr><td>
             <asp:Label ID="lblNameOfTheBulbul" runat="server"  class="col-lg-3 control-label" Text="Name Of The Bulbul"></asp:Label></td>
          <td>
           <asp:Label ID="NameOfTheBulbul" runat="server"  class="col-lg-3 control-label" Text='<%#Eval("NameOfTheBulbul") %>'></asp:Label>
           </td></tr>
       <tr><td>
             <asp:Label ID="lblAddress" runat="server" class="col-lg-3 control-label"  Text="Address"></asp:Label></td>
           <td>
            <asp:Label ID="Address" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("Address") %>'></asp:Label>
        </td></tr>
        <tr>
              <td>  <asp:Label ID="lblDist" runat="server" class="col-lg-3 control-label"  Text="Dist"></asp:Label></td>
           <td>
             <asp:Label ID="Dist" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("Dist") %>'></asp:Label>
       </td></tr>
        <tr>
               <td> <asp:Label ID="lblPinCode" runat="server"  class="col-lg-3 control-label" Text="Pin Code"></asp:Label></td>
            <td>   <asp:Label ID="PinCode" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("PinCode") %>'></asp:Label>
        </td></tr>
        <tr>
        <td>
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth"  class="col-lg-3 control-label"></asp:Label></td>
         <td>
              <asp:Label ID="DateOfBirth" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfBirth") %>'></asp:Label>
           </td></tr>
        <tr><td>
          <asp:Label ID="lblNameOfTheGroup" runat="server"  class="col-lg-3 control-label" Text="Name Of The Group"></asp:Label></td>
           <td>
            <asp:Label ID="NameOfTheGroup" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("NameOfTheGroup") %>'></asp:Label>
          </td></tr>
        <tr>
        <td>
             <asp:Label ID="lblAddressOfTheGroup" runat="server"  class="col-lg-3 control-label"  Text="Address Of The Group"></asp:Label></td>
           <td> <asp:Label ID="Label3" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("AddressOfTheGroup") %>'></asp:Label></td></tr>
        <tr><td>
             <asp:Label ID="lblNameOfTheFlockLeader" runat="server"   class="col-lg-3 control-label" Text="Name Of The Flock Leader"></asp:Label>
         </td><td> <asp:Label ID="NameOfTheFlockLeader" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("NameOfTheFlockLeader") %>'></asp:Label></td></tr>
        <tr><td>
             <asp:Label ID="lblCertificateNo" runat="server"  class="col-lg-3 control-label" Text="Advance/H.W.B. Certificate/Parchment No."></asp:Label>
            </td><td> <asp:Label ID="CertificateNo" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("CertificateNo") %>'></asp:Label></td></tr>
        <tr><td>
                     <asp:Label ID="lblDate"  class="col-lg-3 control-label" runat="server" Text="Date"></asp:Label>
                     </td><td> <asp:Label ID="Date" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("Date") %>'></asp:Label></td></tr>
        <tr><td>
                     <asp:Label ID="lblWarrantNo"  class="col-lg-3 control-label" runat="server" Text="Warrant No."></asp:Label>
                   </td><td> <asp:Label ID="WarrantNo" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("WarrantNo") %>'></asp:Label></td></tr>
         <tr><td>
                      <asp:Label ID="lblDateOfJoiningCub"  class="col-lg-3 control-label" runat="server" Text="Date Of Joining Cub"></asp:Label>
           </td><td> <asp:Label ID="DateOfJoiningCub" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfJoiningBulbul") %>'></asp:Label> </td></tr>
         <tr><td>
            <asp:Label ID="lblDateOfCompletionOfPravesh"   class="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Pravesh"></asp:Label>
           </td><td> <asp:Label ID="DateOfCompletionOfPravesh" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfCompletionOfPravesh") %>'></asp:Label></td></tr>
         <tr><td>
           <asp:Label ID="lblDateOfInvestiture" runat="server"  class="col-lg-3 control-label" Text="Date Of Investiture"></asp:Label>
      </td><td> <asp:Label ID="DateOfInvestiture" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfInvestiture") %>'></asp:Label></td></tr>
         <tr><td>
             <asp:Label ID="lblDateOfCompletionOfKomalPankh"  class="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Komal Pankh"></asp:Label>
               </td><td> <asp:Label ID="DateOfCompletionOfKomalPankh" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfCompletionOfKomalPankh") %>'></asp:Label></td></tr>
            <tr><td>
             <asp:Label ID="lblDateOfCompletionOfRajatPankh"  class="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Rajat Pankh"></asp:Label>
             </td><td> <asp:Label ID="DateOfCompletionOfRajatPankh" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfCompletionOfRajatPankh") %>'></asp:Label> </td></tr>
         <tr><td>
            <asp:Label ID="lblDateOfCompletionOfSuvarnaPankh"  class="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Suvarna Pankh"></asp:Label>
           </td><td> <asp:Label ID="DateOfCompletionOfSuvarnaPankh" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfCompletionOfSuvarnaPankh") %>'></asp:Label></td></tr>
         <tr><td>
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned"  class="col-lg-3 control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
          </td><td> <asp:Label ID="NameOfTheProficiencyBadgeearned" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("NameOfTheProficiencyBadgeearned") %>'></asp:Label></td></tr>
         <tr><td>
                       <asp:Label ID="lblDateOfCompletionOfHeerakPankh"  class="col-lg-3 control-label" runat="server" Text="Date Of Completion Of Heerak Pankh"></asp:Label>
                   </td><td><asp:Label ID="DateOfCompletionOfHeerakPankh" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("DateOfCompletionOfHeerakPankh") %>'></asp:Label></td></tr>    
         <tr><td>     
            <asp:Label ID="lblNameOfTheProficiencyBadgeearned1"  class="col-lg-3 control-label" runat="server" Text="Name Of The Proficiency Badge earned"></asp:Label>
           </td><td><asp:Label ID="NameOfTheProficiencyBadgeearned1" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("NameOfTheProficiencyBadgeearned1") %>'></asp:Label></td></tr>
          <tr>
          <td align="center"><img src='SignatureOfFlockLeader/<%#Eval("SignatureOfFlockLeader") %>' alt="Not available" />
            </td><td align="center"> 
            <img src='SignatureOfBulbul/<%#Eval("SignatureOfBulbul") %>' alt="Not available" />  
          </td></tr>
          <tr><td align="center">      
            <asp:Label ID="lblSignatureOfFlockLeader"  class="col-lg-3 control-label" runat="server" Text="Signature Of Flock Leader"></asp:Label>
              </td><td align="center">    
            <asp:Label ID="lblSignatureOfBulbul"  class="col-lg-3 control-label" runat="server" Text="Signature Of Bulbul"></asp:Label>
           </td></tr>
         </table>
      </fieldset>
    </form>
         </ItemTemplate>
         </asp:DataList>
         <asp:SqlDataSource ID="SqldsHeerakPankh" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [HeerakPankh] WHERE ([NameOfTheBulbul] = @NameOfTheBulbul)">
            <SelectParameters>
                <asp:QueryStringParameter Name="NameOfTheBulbul" QueryStringField="NameOfTheBulbul" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <div class="form-group">
    <div class="col-lg-5 col-lg-offset-3">
            <input type="button" id="printpagebutton" value="print" onclick="printpage()" class="btn btn-primary"/>
        </div></div>
</body>
</html>
