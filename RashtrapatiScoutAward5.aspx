<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiScoutAward5.aspx.cs" Inherits="RashtrapatiScoutAward5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="themes/custom_9.css" rel="stylesheet" type="text/css" />
    <link href="themes/bootstrap_9.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class ="jumbotron">
    <h2>No.</h2>
    <center>
    <h2>THE BHARAT SCOUTS & GUIDES, NATIONAL HEADQUARTERS, NEW DELHI</h2>
    <h2>INFORMATION SHEET FOR SCOUT</h2>
    <h2>To be attatched with Rashtrapati Registration Form</h2>
    <h3>(Please fill up the details carefully, overwritting will not be accepted)</h3>
    </center>
     </div>
     <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
        <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <form id="form1" runat="server" class ="form-horizontal "> 
        <fieldset >
            <table style="width: 100%;">
                <tr>
                    <td>
                      <asp:Label ID="lblNameoftheState" runat="server" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large" 
                    Text=" 1. Name of the State"></asp:Label>
                    </td>
                    <td><asp:Label ID="State" runat="server" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large" 
                    Text='<%#Eval("STATE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblNameoftheScout" runat="server" CssClass="col-lg-3 control-label "  Font-Size="Large" Font-Names="Times New Roman" 
                    Text="2. Name of the Scout"></asp:Label>
                     </td>
                    <td><asp:Label ID="Label1" runat="server" CssClass="col-lg-3 control-label "  Font-Size="Large" Font-Names="Times New Roman" 
                    Text='<%#Eval("NameofScout") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td> <asp:Label ID="lblfathersname" CssClass="col-lg-3 control-label " runat="server" 
                    Text="3. (A)Father's Name" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                     </td>
                    <td> <asp:Label ID="NameofFather"  CssClass="col-lg-3 control-label"  runat="server" Text='<%#Eval("NameofFather") %>'
                      Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                     </td>
                </tr>
                <tr>
                 <td> <asp:Label ID="lblMothersName" runat="server" CssClass="col-lg-3 control-label " Font-Size="Large" Font-Names="Times New Roman"
                    Text=" (B)Mother's Name"></asp:Label>
              </td>
                 <td><asp:Label ID="NameofMother" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("NameofMother") %>'
                      Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 </td>
                </tr>
                <tr>
                <td> <asp:Label ID="lblDateofBirth" CssClass="col-lg-3 control-label " runat="server" Font-Names="Times New Roman"
                 Font-Size="Large" Text=" 4. Date of Birth"></asp:Label>
               </td>
                <td><asp:Label ID="Label2" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("DateofBirth")%>'
                Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
                </tr>
                <tr>
                <td> <asp:Label ID="lblNameoftheUnit" CssClass="col-lg-3 control-label " runat="server" Font-Size="Large"  
                Font-Names="Times New Roman" Text=" 5. Name of the Unit" ></asp:Label>
               </td>
                <td><asp:Label ID="NameofUnit" runat="server"  CssClass="col-lg-3 control-label"  Text='<%#Eval("NameofUnit")%>'
                 Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
                </tr>
                 <tr>
                <td>  <asp:Label ID="lblAddressoftheUnit" CssClass="col-lg-3 control-label"  Font-Names="Times New Roman" Font-Size="Large"
                 runat="server" Text="6. Address of the unit"></asp:Label>
                </td>
                <td><asp:Label ID="Addressofunit" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("Addressofunit")%>'
                                 Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
                </tr>
                 <tr>
                <td><asp:Label ID="lblDistrict" runat="server" Font-Size="Large" CssClass="col-lg-3 control-label"
                 Font-Names="Times New Roman" Text=" 7. Ditrict" ></asp:Label>
                </td>
                <td><asp:Label ID="UnitDistrict" runat="server"  CssClass="col-lg-3 control-label" Text='<%#Eval("District")%>'
                Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </td>
                </tr>
                 <tr>
                <td> <asp:Label ID="lblPMSCNHQRegistrationNo" runat="server" Font-Size="Large" CssClass="col-lg-3 control-label" 
                Text="PMSC NHQ Registration No."  Font-Names="Times New Roman"></asp:Label>
                </td>
                <td>
                 <asp:Label ID="PMSCNHQRegistrationNo" runat="server" Font-Size="Large" CssClass="col-lg-3 control-label"
                  Text='<%#Eval("PMSCNHQRegNo")%>'  Font-Names="Times New Roman"></asp:Label>
                 </td>
                </tr>
                <tr>
                <td><asp:Label ID="lblDateofCompletionof" runat="server" Font-Size="Large" CssClass="col-lg-3 control-label" 
                Font-Names="Times New Roman" Text=" Date of Completion of:" ></asp:Label>
                </td>
                <td>
                <table>
                <tr>
                <td><asp:Label ID="lblPravesh" runat="server" Text="(1) Pravesh" Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                            </td>
                <td><asp:Label ID="Pravesh" runat="server" Text='<%#Eval("Pravesh")%>' Font-Names="Times New Roman" CssClass="col-lg-3 control-label" Font-Size="Large"></asp:Label>
                            </td>
                </tr>
                 <tr>
                <td> <asp:Label ID="lblPrathamSopan" runat="server" Text="(2) Pratham Sopan" CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label> 
                       </td>
                <td> <asp:Label ID="PrathamSopan" runat="server" Text='<%#Eval("PrathamSopan")%>' CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label> 
                       </td>
                </tr>
                 <tr>
                <td> <asp:Label ID="lblDwitiyaSopan" runat="server" Text="(3) Dwitiya Sopan" CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                           </td>
                <td> <asp:Label ID="DwitiyaSopan" runat="server" Text='<%#Eval("DwitiyaSopan")%>' CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                           </td>
                </tr>
                 <tr>
                <td><asp:Label ID="lblTritiyaSopan" runat="server" Text="(4) Tritiya Sopan" CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            </td>
                <td><asp:Label ID="TritiyaSopan" runat="server" Text='<%#Eval("TritiyaSopan")%>' CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            </td>
                </tr>
                <tr>
                <td><asp:Label ID="lblTritiyaSopanCertificateNo" runat="server" Text="Certificate No." CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            </td>
                <td><asp:Label ID="TritiyaSopanCertificateNo" runat="server" Text='<%#Eval("TritiyaSopanCertificateNo")%>' CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            </td>
                </tr>
                <tr>
                <td> <asp:Label ID="lblTritiyaSopanDateofIssue" runat="server" Text="Date of Issue" CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
                           </td>
                <td> <asp:Label ID="TritiyaSopanDateofIssue" runat="server" Text='<%#Eval("TritiyaSopanDateofIssue")%>' CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
                           </td>
                </tr>
                <tr>
                <td> <asp:Label ID="lblRajyaPurskar" runat="server" CssClass="col-lg-3 control-label" Text="(5) Rajya Puraskar" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                           </td>
                <td> <asp:Label ID="RajyaPurskar" runat="server" CssClass="col-lg-3 control-label" Text='<%#Eval("RajyaPurskar")%>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                           </td>
                </tr>
                <tr>
                <td> <asp:Label  ID="lblRajyaPuraskarCertificateNo" CssClass="col-lg-3 control-label" runat="server" Text="Certificate No." Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                               </td>
                <td> <asp:Label  ID="RajyaPuraskarCertificateNo" CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("RajyaPuraskarCertificateNo")%>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                               </td>
                </tr>
                <tr>
                <td> <asp:Label ID="lblRajyaPuraskarDateofIssue" CssClass="col-lg-3 control-label" runat="server" Text="Date of Issue" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                           </td>
                <td> <asp:Label ID="RajyaPuraskarDateofIssue" CssClass="col-lg-3 control-label" runat="server" Text='<%#Eval("RajyaPuraskarDateofIssue")%>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                          </td>
                </tr>
                </table>
                </td>
                </tr>
 </table> 
   <table width="100%"  class="table table-striped table-hover " style=" border-collapse:collapse" >
        <caption>
        <asp:Label ID="lblofAPRODetailofDwitiyaSopanProficiencyBadge" runat="server" 
        Font-Bold="True" class="control-label"  Font-Size="Large" Font-Names="Times New Roman"
        Text="11(10) of APRO II (Detail of Dwitiya Sopan Proficiency Badge)" 
                ForeColor="White"></asp:Label>
        </caption>
        <tr >
         <th style=" border-collapse:collapse"  >
         <asp:Label ID="lblNameOfBadge" runat="server" class="control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
            </th>
           <th style=" border-collapse:collapse"><asp:Label ID="lblDateofPassing" class="control-label"  runat="server" Text="Date of Passing" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
              </th>  
            <th style=" border-collapse:collapse"><asp:Label ID="lblNameoftheExaminer" class="control-label"  runat="server" Text="Name of the Examiner" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 </th>  
        </tr>
        <tr>
        <td style=" border-collapse:collapse" >
        <asp:Label ID="NameOfBadge" runat="server" class="control-label" 
                    Text='<%#Eval("NameofBadge") %>' Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
         
                 </td >
        <td style=" border-collapse:collapse">
                <asp:Label ID="Label3" runat="server" class="control-label" 
                    Text='<%#Eval("DateofPassing") %>' Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
       </td>
        <td style=" border-collapse:collapse">
                 <asp:Label ID="Label4" runat="server" class="control-label" 
                    Text='<%#Eval("NameoftheExaminer") %>' Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
         </td>
        </tr>
        </table>
    <br />
           <table width="100%"  class="table table-striped table-hover "  style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRODetailofTritiyaSopanProficiency" runat="server" 
                Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
                Text="12(13) of APRO II (Detail of Tritiya Sopan Proficiency Badge)" 
                ForeColor="White"></asp:Label> 
        </caption>
        <tr >
        <td>
            <asp:Label ID="lblGroupA" runat="server"  class="control-label"  Font-Size="Medium" Text="Group A."></asp:Label>
        </td>
        
        </tr>
        <tr>
        <th style=" border-collapse:collapse"><asp:Label  class=" control-label"  ID="lblNameofBadge1" runat="server" Text="Name of Badge" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </th>
           <th style=" border-collapse:collapse"><asp:Label  class="control-label"  ID="lblDateofPassing1" runat="server" Text="Date of Passing" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </th>  
            <th style=" border-collapse:collapse"><asp:Label  class="control-label"  ID="lblNameoftheExamine1" runat="server" Text="Name of the Examiner" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </th>
         </tr>
             
         <tr>
         <td style=" border-collapse:collapse">
                <asp:Label  class=" control-label"  ID="Label5" runat="server" Text='<%#Eval("NameofBadge1") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
        </td>
         <td style=" border-collapse:collapse">
                <asp:Label  class=" control-label"  ID="Label6" runat="server" Text='<%#Eval("DateofPassing1") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
          </td>
         <td style=" border-collapse:collapse">
                <asp:Label  class=" control-label"  ID="Label7" runat="server" Text='<%#Eval("NameoftheExamine1") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
          </td>
         </tr>
         </table> 
<br />
        <table width="100%" class="table table-striped table-hover "  style=" border-collapse:collapse">
        <tr>
        <td>
         <asp:Label ID="lblGroupB"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Group B"></asp:Label>
        </td>
       
        </tr>
        <tr>
         <th style=" border-collapse:collapse"> <asp:Label ID="lblNameofBadge2"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
            </th>
           <th style=" border-collapse:collapse" > <asp:Label ID="lblDateofPassing2"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
              </th>  
            <th style=" border-collapse:collapse"> <asp:Label ID="lblNameoftheExaminer2"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
               </th>
         </tr>   
       
         <tr>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label8"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge2") %>'></asp:Label>
           </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label9"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing2") %>'></asp:Label>
           </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label10"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExamine2") %>'></asp:Label>
            </td>
            </tr>
            </table> 
    <br />  
      <table width="100%"  class="table table-striped table-hover "  style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRODetailofRajyaPuraskarProficiency2" runat="server" 
                Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
                Text="13(2) of APRO II  (Detail of Rajya Puraskar Proficiency Badge)" 
                ForeColor="White"></asp:Label>
        </caption> 
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge3" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                 </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDateofPassing3" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                 </th>
            <th style=" border-collapse:collapse">
             <asp:Label ID="lblNameoftheExaminer3" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                 </th>
        </tr>
           
        <tr>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label11" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge3") %>'></asp:Label>
                 </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label12" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing3") %>'></asp:Label>
               </td >
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label13" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer3") %>'></asp:Label>
               </td>
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label14" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge4") %>'></asp:Label>
               </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label15" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing4") %>'></asp:Label>
               </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label16" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer4") %>'></asp:Label>
               </td>
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
               <asp:Label ID="Label17" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge5") %>'></asp:Label>
                </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label18" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing5") %>'></asp:Label>
                </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label19" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer5") %>'></asp:Label>
               </td>
        </tr>
         </table>
         <br />
        <table width="100%"  class="table table-striped table-hover "  style=" border-collapse:collapse">
        <caption>
        <asp:Label ID="lblofAPROProficiency3"  class="control-label"  runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
        Text="13(3) of APRO II (Proficiency Badge)" ForeColor="White"></asp:Label>
        </caption>
        <tr>
        <td>
        <asp:Label ID="lblGroupA1"  class="control-label"  runat="server" Font-Size="Medium" Text="Group A."></asp:Label>
        </td>
        </tr>
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge4" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
               </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateofPassing4" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheExaminer4"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label20" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge6") %>'></asp:Label>
              </td>
            <td style=" border-collapse:collapse" >
                <asp:Label ID="Label21" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing6") %>'></asp:Label>
              </td>
            <td style=" border-collapse:collapse">
               <asp:Label ID="Label22" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer6") %>'></asp:Label>
              </td>
        </tr>
        </table>
        <br />
        <table width="100%"  class="table table-striped table-hover "  style=" border-collapse:collapse">
        <tr>
        <td>
            <asp:Label ID="lblGroupB1"  class="control-label"  runat="server" Font-Size="Large" Text="Group B." Font-Names="Times New Roman" ></asp:Label>
        </td>
        </tr>
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge5"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateOfPassing5"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheExaminer5"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
               </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                  <asp:Label ID="Label23"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge7") %>'></asp:Label>
                </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label24"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing7") %>'></asp:Label>
              </td>
            <td style=" border-collapse:collapse">
                  <asp:Label ID="Label25"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer7") %>'></asp:Label>
              </td>
        </tr>
      </table>
      <br />
       <center >
               <asp:Label ID="lblRashtrapatiScoutDetailsofWorkDone"  class="control-label"  
                   runat="server" Font-Bold="True" Font-Size="X-Large" 
        Text="Rashtrapati Scout Details of Work Done 14(B)" Font-Names="Times New Roman"></asp:Label>
        
      </center> 
      <br />
      <table width="100%"  class="table table-striped table-hover " style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRO"  class="control-label" runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
        Text="14-B( 2) of APRO II" ForeColor="White"></asp:Label>
    </caption>
    
        <tr>
         <th style=" border-collapse:collapse">
                <asp:Label ID="lblCampingPlace" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Camping Place"></asp:Label>
               </th>
            <th style=" border-collapse:collapse" colspan="2" width="250px">
               <asp:Label ID="lblDates" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Dates"></asp:Label></th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheLeaderoftheCamp" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Leader of the camp"></asp:Label>
                </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                &nbsp;</td>
            <th style=" border-collapse:collapse">               
             <asp:Label ID="lblFrom" class="col-lg-3 control-label"  Font-Names="Times New Roman" Font-Size="Large"   runat="server" Font-Bold="True" Text="From"></asp:Label>
                </th>
             <th style=" border-collapse:collapse">
                <asp:Label ID="lblTo"  class="col-lg-3 control-label" runat="server"  Font-Names="Times New Roman" Font-Size="Large"  Font-Bold="True" Text="To"></asp:Label>
                  </th>
           </tr>
        <tr>
        <td  style=" border-collapse:collapse">
                <asp:Label ID="Label26" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("CampingPlace") %>'></asp:Label>
              </td>
                <td  style=" border-collapse:collapse"> 
                <asp:Label ID="Label28" class="col-lg-3 control-label"  Font-Names="Times New Roman" Font-Size="Large"   runat="server" Font-Bold="True" Text='<%#Eval("From") %>'></asp:Label>
            </td>

                <td  style=" border-collapse:collapse">
                <asp:Label ID="Label29"  class="col-lg-3 control-label" runat="server"  Font-Names="Times New Roman" Font-Size="Large"  Font-Bold="True" Text='<%#Eval("To") %>'></asp:Label>
                </td>
          <td  style=" border-collapse:collapse">
              <asp:Label ID="Label27" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheLeaderofCamp") %>'></asp:Label>      
            </td> 
        </tr>
    </table>
 <br />
 <table width="100%"  class="table table-striped table-hover " style=" border-collapse:collapse">
    <caption>            
    <asp:Label ID="lblofAPROAmbulancemanBadge" class="control-label"  runat="server" 
        Font-Bold="True" Font-Size="Large" 
        Text="14-B(3) of APRO II Ambulanceman Badge" Font-Names="Times New Roman" 
            ForeColor="White"></asp:Label>
    </caption>

       <tr>
        
            <th  style=" border-collapse:collapse">
               <asp:Label ID="lblDateOfPassing123" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
               </th>
            <th  style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfExaminer123" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Examiner"></asp:Label>
                </th>
            
        </tr>  
        <tr>
            <td  style=" border-collapse:collapse" >
               <asp:Label ID="Label30" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="'<%#Eval("DateofPassing123") %>'"></asp:Label>
               </td>
            <td  style=" border-collapse:collapse" >
               <asp:Label ID="Label31" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="'<%#Eval("NameofExaminer123") %>'"></asp:Label>
                 </td>        
        </tr>
        </table>
        <br />
        <table width="100%" class="table table-striped table-hover "  style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPROProficiency4"  class="control-label"  runat="server" 
        Font-Bold="True" Font-Size="Large" 
        Text="14-B(4) of APRO II Proficiency Badge" Font-Names="Times New Roman" 
                ForeColor="White"></asp:Label>
        </caption>
        <tr>
         <th rowspan="1">
                <asp:Label ID="lblNameOfBadge6" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                </th>
            <th rowspan="1">
            <asp:Label ID="lblDateOfPassing6"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
               </th>
            <th rowspan="1">
                <asp:Label ID="lblNameOfTheExaminer6" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label> 
        </tr>
        <tr>
            <td  style=" border-collapse:collapse">
                <asp:Label ID="Label32" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge8") %>'></asp:Label>
               </td>
            <td  style=" border-collapse:collapse">
                  <asp:Label ID="Label33"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing8") %>'></asp:Label>
          </td>
            <td  style=" border-collapse:collapse">
                 <asp:Label ID="Label34"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer8") %>'></asp:Label>
          </td>
        </tr>
        
         <tr>
            <td  style=" border-collapse:collapse">
                  <asp:Label ID="Label35"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofBadge9") %>'></asp:Label>
          </td>
            <td class="style40">
                  <asp:Label ID="Label36"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateofPassing9") %>'></asp:Label>
           </td>
            <td  style=" border-collapse:collapse">
                  <asp:Label ID="Label37"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheExaminer9") %>'></asp:Label>
          </td>
        </tr>
        </table>
        <br />
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
    <caption>
        <asp:Label ID="lblofAPROProficiency5" runat="server" 
        Font-Bold="True" class="control-label"  Font-Size="Large" 
        Text="14-B(5) of APRO II (Community Service Project Undertaken through PMSC)" 
            Font-Names="Times New Roman" ForeColor="White"></asp:Label>
    </caption>
        <tr>
         <th  style=" border-collapse:collapse">
                <asp:Label  class="control-label" ID="lblNameOfProjecctUndertaken" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Project undertaken"></asp:Label>
                </th>
            <th style=" border-collapse:collapse">
               <asp:Label  class="control-label" ID="lblDates1" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date"></asp:Label></th>
            <th  style=" border-collapse:collapse">
                <asp:Label ID="lblTotalhrs" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Total Hours"></asp:Label>
                </th>
            <th  style=" border-collapse:collapse">
                <asp:Label  class="control-label" ID="lblDateOFSubmissionOfReport" runat="server" Text="Date Of Submission of Report" Font-Size="Large" Font-Names ="Times New Roman"></asp:Label>
                </th>
        </tr>
        <tr>
         <td  style=" border-collapse:collapse"></td>
            <th  style=" border-collapse:collapse" >
            <asp:Label ID="lblFrom1"  class="control-label" runat="server"  Text="From" Font-Size="Large" Font-Names=" Times New Roman"></asp:Label>
               </th>
            <th  style=" border-collapse:collapse">
            <asp:Label ID="lblTo1" runat="server" class="control-label"  Text="To" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 </th>
          <td  style=" border-collapse:collapse""></td>
          <td  style=" border-collapse:collapse"></td>
           </tr>
           <tr>
         <td>
                 <asp:Label  class="control-label" ID="Label38" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameoftheProjectundertaken") %>'></asp:Label>
              </td>
              <td> <asp:Label ID="Label39"  class="control-label" runat="server"  Text='<%#Eval("From1") %>' Font-Size="Large" Font-Names=" Times New Roman"></asp:Label>
           </td>
            <td>
             <asp:Label ID="Label40" runat="server" class="control-label"  Text='<%#Eval("To1") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
            <td>
               <asp:Label ID="Label41" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("TotalHrs") %>'></asp:Label>
               </td>
            <td>
             <asp:Label  class="control-label" ID="Label42" runat="server" Text='<%#Eval("DateofSubmissionofReport") %>' Font-Size="Large" Font-Names ="Times New Roman"></asp:Label>
               
            </td>
            </tr>
    </table>
    <br />
      <asp:Label ID="lblNote1"  class="control-label" runat="server" Text="Note: Diary Submitted to COH should produced during testing camp." Font-Size="Medium" Font-Names="Times New Roman"></asp:Label>
    <br />
  <table width="100% " class="table table-striped table-hover "   style=" border-collapse:collapse">
    <caption>
    <asp:Label ID="lblofAPRODetailsofOverNighthikedone"  class="control-label" runat="server" 
         Font-Size="Large" 
        Text="14-B(6) of APRO II Details of Over-Night hike done" 
            Font-Names="Times New Roman" Font-Bold="True" ForeColor="White"></asp:Label>
   </caption>
       <tr>
       <th style=" border-collapse:collapse" colspan="2" width="250px">
                <asp:Label ID="lblDates2" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Dates"></asp:Label>&nbsp;</th>
            <th colspan="2" style=" border-collapse:collapse" width="250px">
               <asp:Label ID="lblPlace"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Place"></asp:Label></th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDistanceInKM"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Distance In K.M."></asp:Label>
                 </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDateOfSubmissionOfReport1"  class="control-label" runat="server" Text="Date Of Submission Of Report" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </th>
            <th style=" border-collapse:collapse"> 
                <asp:Label ID="lblTypeOfHike" runat="server"  class="control-label" Text="Type Of Hike" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </th>
        </tr>
        <tr>
        <th style=" border-collapse:collapse" >
            <asp:Label ID="lblFrom2" runat="server"  class="col-lg-3 control-label" Text="From" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </th>
        <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblTo2" runat="server"  class="col-lg-3 control-label" Text="To" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </th>
       <th style=" border-collapse:collapse">
            <asp:Label ID="lblFrom3" runat="server"  class="col-lg-3 control-label"  Text="From" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
             </th>
        <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblTo3" runat="server" class="col-lg-3 control-label"  Text="To" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </th>
       <td style=" border-collapse:collapse"></td>
       <td style=" border-collapse:collapse"></td>
        </tr>


        <tr>
            <td style=" border-collapse:collapse">
                  <asp:Label ID="Label43" runat="server"  class="col-lg-3 control-label" Text='<%#Eval("From2") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           </td>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label44" runat="server"  class="col-lg-3 control-label" Text='<%#Eval("To2") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label45" runat="server"  class="col-lg-3 control-label"  Text='<%#Eval("From3") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label46" runat="server" class="col-lg-3 control-label"  Text='<%#Eval("To3") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </td>
       <td style=" border-collapse:collapse">
                 <asp:Label ID="Label47"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DistanceInKM") %>'></asp:Label>
                </td>
        <td style=" border-collapse:collapse">
                 <asp:Label ID="Label48"  class="control-label" runat="server" Text='<%#Eval("DateofSubmissionofReport1") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
               </td>
        <td style=" border-collapse:collapse">
                <asp:Label ID="Label49" runat="server"  class="control-label" Text='<%#Eval("TypeofHike") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </td>
        </tr> 
        </table>
        <br />
        <asp:Label ID="lblNote2" runat="server" 
        Text="Note:- Diary of the Hike report to be produced during testing camp" class="control-label"  Font-Names=" Times New Roman" Font-Size="Medium"></asp:Label>
        <br />
        <table width="100%"  class="table table-striped table-hover "  style=" border-collapse:collapse">
    <caption>
        <asp:Label ID="lblofAPRODetailsofSustainedCommunityDevelopmentProjectUndertakenthroughPMSC"  
            class="control-label"  runat="server" 
        Font-Bold="True" Font-Size="Large" 
        
            Text="14-B(7) of APRO II Details of Sustained Community Development Project Undertaken through PMSC" 
            Font-Names="Times New Roman" ForeColor="White" ></asp:Label>
        </caption>
    <tr>
    <th style=" border-collapse:collapse">
                <asp:Label ID="lblProjectUndertaken"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Project Undertaken"></asp:Label>
                </th>
            <th rowspan="1">
               <asp:Label ID="lblDateOfCommencement" CssClass="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Commencement"></asp:Label>
                 </th>
            <th rowspan="1">
                <asp:Label ID="lblDateOfCompletion" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text="Date Of Completion"></asp:Label>
                   </th>
            <th rowspan ="1"> 
                <asp:Label ID="lblNameOfUnitRegisteredPmsc"  class="control-label" runat="server" Text="Name Of Unit Registerd PMSC" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label50"  class="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("ProjectUndertaken") %>'></asp:Label>
                </td>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label51" CssClass="control-label" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateOfCommencement") %>'></asp:Label>
               </td>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label52" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("DateOfCompletion") %>'></asp:Label>
                 </td>
            <td style=" border-collapse:collapse">
            <asp:Label ID="Label53" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameOfUnitRegisteredPMSC") %>'></asp:Label>
                 </td>      
    </tr>
        </table>
        <br />
        <asp:Label ID="lblNote3"  class="control-label" runat="server" 
        Text=" Note:- A copy of the report  of participation to be produced during testing camp" Font-Size="Medium" Font-Names="Times New Roman"></asp:Label>
        <br />
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
            <caption>
    <asp:Label ID="lblofAPRODetailsofworkingasbadgeinstructor"  class="control-label"  runat="server" 
        Font-Bold="True" Font-Size="Large" 
        Text="14-B(8) of APRO II Details of working as badge instructor:" 
                    Font-Names="Times New Roman" ForeColor="White"></asp:Label>
        </caption>
    <tr>
    <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfBadge234" runat="server" class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
               </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblNameOfGroup" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text="Name Of Group"></asp:Label>
                 </th>
            <th colspan="2" style=" border-collapse:collapse" width="250px">
                <asp:Label ID="lblDates3" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text="Date"></asp:Label></th>
            </tr>
        <tr>
            <td style=" border-collapse:collapse">
                &nbsp;</td>
            <td style=" border-collapse:collapse">
                &nbsp;</td>
           <th style=" border-collapse:collapse">
            <asp:Label ID="lblFrom4"  class="control-label" runat="server" Text="From" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
               </th>
        <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblTo4" class="control-label"  runat="server" Text="To" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
            </th>
       </tr>
       <tr>
        <td style=" border-collapse:collapse">
                  <asp:Label ID="Label54" runat="server" class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameOfBadge234") %>'></asp:Label>
              </td>
                <td>
                 <asp:Label ID="Label55" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameOfGroup") %>'></asp:Label>
               </td>
                <td>              
                 <asp:Label ID="Label56"  class="control-label" runat="server" Text='<%#Eval("From4") %>' Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
             </td>
          <td style=" border-collapse:collapse">
          <asp:Label ID="Label57" class="control-label"  runat="server" Text='<%#Eval("To4") %>' Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
            </td> 
       </tr>
    </table>
   <br />
    <asp:Label ID="lblNote4"  class="control-label" runat="server" 
        Text="Note: A copy of appointment letter from Group Leader/ADC/DOC, and list of names of Scouts who earned the Proficience Badge to be produced." Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
    <br />
  <br />
   <center >
   <asp:Label ID="lblOR"  class="control-label" runat="server" Font-Bold="True" Text="OR" 
            Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
   </center>
   <br /> 
   <table width="100%"  class="table table-striped table-hover " style=" border-collapse:collapse">
  <caption>
    <asp:Label ID="lblAlternativestotheabove"  class="control-label"  runat="server" 
        Font-Size="Large" 
        
        Text="Alternatives to the above (Teaching Games)" 
          Font-Names="Times New Roman" Font-Bold="True" ForeColor="White"></asp:Label>
        </caption>
        <tr>
    <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNameOfLocality" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Locality"></asp:Label>
                  </th>
            <th colspan="2" style=" border-collapse:collapse" width="250px">
               <asp:Label ID="lblDates4" runat="server"  class="control-label" Font-Names="Times New Roman" Font-Size="Large" Text="Date"></asp:Label></th>
            <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNoOfChildren" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="No of Children"></asp:Label>
                </th>
            
       </tr>
       <tr>
       <td style=" border-collapse:collapse" ></td>
       <th style=" border-collapse:collapse" >
        <asp:Label ID="lblFrom5" runat="server" class="control-label"  Text="From" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                 </th>
       <th style=" border-collapse:collapse" >
        <asp:Label ID="lblTo5" runat="server"  class="control-label" Text="To" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                </th>
       <td style=" border-collapse:collapse"></td>
       </tr>
        <tr>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label58" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NameofLocality") %>'></asp:Label>
               </td>
            <td style=" border-collapse:collapse">
                 <asp:Label ID="Label59" runat="server" class="control-label"  Text='<%#Eval("From5") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
       </td>
            <td style=" border-collapse:collapse">
                <asp:Label ID="Label60" runat="server"  class="control-label" Text='<%#Eval("To5") %>' Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           </td>
            <td style=" border-collapse:collapse">
           <asp:Label ID="Label61" class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text='<%#Eval("NoOfChildren") %>'></asp:Label>
                 </td>
            </tr>
         </table>
         <asp:Label ID="lblNote5"  class="control-label"  runat="server" 
        Text=" Note:- List of names of Children with their age and father's name and a copy of the appreciation letter from Parent/Head of Institution to be produced with details" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblNote6"  class="control-label" runat="server" 
        Text=" Note:- All relevant record, Log Book and Certificate should be produced in the testing camp as and when demanded"></asp:Label>
      <br /> 
      <br />
    <table width="50%" align="right">
        <tr>
            <td align="right"><td align="center"><img src='RashtapatiScoutAwardForm2SignatureofScout/<%#Eval("SignofScout") %>' alt="Not available" />
              </td>
        </tr>
            <tr><td class="style2"  >
                <asp:Label ID="lblSignatureofScout" class="control-label"  runat="server" Font-Size="Large" 
                    Text="Signature of Scout" Font-Names="Times New Roman"></asp:Label>
                </td>
            </tr>
        <tr>
        
            <td class="style2" >
            <asp:Label ID="lblName" runat="server" class="control-label" Font-Size="Large" Text="Name" Font-Names="Times New Roman"></asp:Label>
               </td>
            <td>
             <asp:Label ID="Label63" runat="server" class="control-label" Font-Size="Large" Text='<%#Eval("Name") %>' Font-Names="Times New Roman"></asp:Label>
                </td>
           </tr>
        <tr>
        
            <td class="style2" >
                <asp:Label ID="lblDate" class="control-label" runat="server" Font-Size="Medium" Text=" Date" Font-Names="Times New Roman"></asp:Label>
               </td>
            <td >
                 <asp:Label ID="Label64" class="control-label" runat="server" Font-Size="Medium" Text='<%#Eval("Date") %>' Font-Names="Times New Roman"></asp:Label>
               </td>
        </tr>
     </table>
     <br />
     <br />
     <br />
     <table "width:50%">
     <tr>
     <td align="right"><td align="center"><img src='RashtapatiScoutAwardForm2SignatureofScoutMaster/<%#Eval("SignofScoutMaster") %>' alt="Not available" />
              </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSignatureofScoutMaster"  class="control-label" 
                    runat="server" Font-Bold="False" 
                    Font-Size="Large" Text=" Signature of Scout Master" 
                    Font-Names="Times New Roman"></asp:Label>
                 </td> 
            </tr>
        <tr>
            <td >
                <asp:Label ID="lbldatesss" runat="server"  class="control-label" 
                    font-Bold="False" Font-Size="Large" 
                    Text=" Date" Font-Names="Times New Roman" ></asp:Label>
               </td>
            <td>
                 <asp:Label ID="Label66" runat="server"  class="control-label" 
                    font-Bold="False" Font-Size="Large" 
                    Text='<%#Eval("Datesss") %>' Font-Names="Times New Roman" ></asp:Label>
                 </td>
            </tr>
        <tr>
            <td >
                <asp:Label ID="lblNamess" runat="server"  class="control-label" 
                    Font-Bold="False" Font-Size="Large" 
                    Text="Name" Font-Names="Times New Roman"></asp:Label>
               </td>
            <td>
                 <asp:Label ID="Label67" runat="server"  class="control-label" 
                    Font-Bold="False" Font-Size="Large" 
                    Text='<%#Eval("Namess") %>' Font-Names="Times New Roman"></asp:Label>
                </td>
            </tr>
        <tr>
            <td >
                <asp:Label ID="lblNameoftheUnittt"  class="control-label" 
                    runat="server" Text="Name of the Unit" 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
               </td>
            <td>
                 <asp:Label ID="Label68"  class="control-label" 
                    runat="server" Text='<%#Eval("NameoftheUnittt") %>' 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                </tr>
        <tr>
            <td >
                <asp:Label ID="lblScoutingQualification"  class="control-label" 
                    runat="server" Text="Scouting Qualification" 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                  </td>
            <td>
                <asp:Label ID="Label69"  class="control-label" 
                    runat="server" Text='<%#Eval("ScoutingQualification") %>' 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                  </tr>
        <tr>
            <td >
                <asp:Label ID="lblWarrantNo"  class="control-label" runat="server" Text="Warrant No." 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                  </td>
            <td>
                 <asp:Label ID="Label70"  class="control-label" runat="server" Text='<%#Eval("WarrantNo1") %>' 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
               </tr>
        <tr>
            <td>
                <asp:Label ID="lblValidupto"  class="control-label" runat="server" Text="Valid upto" 
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                </td>
            <td>
                <asp:Label ID="Label71"  class="control-label" runat="server" Text='<%#Eval("ValidUpto") %>'
                    Font-Bold="False" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                   </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
             <div class="col-lg-5 col-lg-offset-3">
                 <asp:Button ID="btn1" runat="server" Text="Print" Font-Bold="True" 
            Font-Names="Times New Roman"  CssClass="btn btn-primary" Font-Size="Large" 
                      />
          </div>
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
