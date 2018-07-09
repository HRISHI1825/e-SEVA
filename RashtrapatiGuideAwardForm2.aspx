<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RashtrapatiGuideAwardForm2.aspx.cs" Inherits="RashtrapatiGuideAwardForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" type="text/css" />
    <link href="themes/custom_9.css" rel="stylesheet" type="text/css" />     
</head>
<body>
    <div class ="jumbotron">
    <h2>No.</h2>
    <center>
    <h2>THE BHARAT SCOUTS & GUIDES, NATIONAL HEADQUARTERS, NEW DELHI</h2>
    <h2>INFORMATION SHEET FOR GUIDE</h2>
    <h2>To be attatched with Rashtrapati Guide Form</h2>
    <h3>(Please fill up the details carefully, overwritting will not be accepted)</h3>
    </center>
     </div>
     <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>   
    
     <form id="form1" runat="server" class="form-horizontal">
      <fieldset >
       <div class="jumbotron">         
           <%-- <div class="form-group">
         <asp:Label ID="lblNameoftheState" runat="server" Font-Names="Times New Roman" Font-Size="Large" 
                    Text=" 1. Name of the State"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNameoftheState" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class ="col-lg-5 ">
                <asp:TextBox ID="txtNameoftheState" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
            </div></div>
            <div class="form-group">
            <asp:Label ID="lblNameoftheScout" runat="server" Font-Size="Large" Font-Names="Times New Roman" 
                    Text="2. Name of the Guide"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNameoftheGuide" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="lbl1" runat="server" Text="(In capital letters)" Font-Size="Medium" Font-Names="Times New Roman"></asp:Label>
               <div class ="col-lg-5 ">
                <asp:TextBox ID="txtNameoftheGuide" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
             </div></div>
           
        <div class="form-group">
                <asp:Label ID="lblfathersname" runat="server" Text="3. (A)Father's Name" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtFathersName" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class ="col-lg-5 ">
                <asp:TextBox ID="txtFathersName" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
               </div></div>          
        <div class="form-group">
               <asp:Label ID="lblMothersName" runat="server" Font-Size="Large" Font-Names="Times New Roman"
                    Text=" (B)Mother's Name"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ControlToValidate="txtMothersName" ErrorMessage="RequiredFieldValidator" 
                       ForeColor="Red">*</asp:RequiredFieldValidator>
  <div class ="col-lg-5 ">
                <asp:TextBox ID="txtMothersName" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "
                       ></asp:TextBox>
            </div></div>          
        <div class="form-group">
                <asp:Label ID="lblDateofBirth" runat="server" Font-Names="Times New Roman"
                 Font-Size="Large" Text=" 4. Date of Birth"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtDateofBirth" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class ="col-lg-5 ">
                <asp:TextBox ID="txtDateofBirth" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
             </div></div>          
        <div class="form-group">
                <asp:Label ID="lblNameoftheUnit" runat="server" Font-Size="Large"  Font-Names="Times New Roman" Text=" 5. Name of the Unit" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtNameoftheUnit" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class ="col-lg-5 ">
                <asp:TextBox ID="txtNameoftheUnit" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
            </div></div>          
        <div class="form-group">
                <asp:Label ID="lblAddressoftheUnit" runat="server" Text="6. Address of the unit"
                 Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtAddressoftheunit" ErrorMessage="RequiredFieldValidator" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class ="col-lg-5 ">
                <asp:TextBox ID="txtAddressoftheunit" runat="server"
                Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
            </div></div> --%>
        <div class="form-group">
                <asp:Label ID="lblPMSCNHQRegistrationNo" runat="server" Font-Size="Large" 
                    Text="PMSC NHQ Registration No." CssClass="col-lg-3 control-label" Font-Names="Times New Roman"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtPMSCNHQRegistrationNo" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <div class ="col-lg-5 ">
                <asp:TextBox ID="txtPMSCNHQRegistrationNo" runat="server"
                 Font-Names="Times New Roman" Font-Size="Large" CssClass="form-control "></asp:TextBox>
                  <span class="help-block"><asp:Label ID="lblasmentionedinBSGwebsite" runat="server" Font-Size="Large"  Text="(as mentioned in BSG website)" ></asp:Label></span> 
               
            </div> </div>
             <div class="form-group">
                <asp:Label ID="lblDateofCompletionof" runat="server" Font-Size="Large"  
                    Font-Names="Times New Roman" Text="Date of Completion of:"  CssClass="col-lg-3 control-label"></asp:Label>
                 <div class ="col-lg-5 ">
                    <div class="form-group">
                            <asp:Label ID="lblPravesh" runat="server" Text="(1) Pravesh"  CssClass="col-lg-3 control-label"  Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                 ControlToValidate="txtPravesh" ErrorMessage="RequiredFieldValidator" 
                                 ForeColor="Red">*</asp:RequiredFieldValidator>
                      <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtPravesh" runat="server" Font-Names="Times New Roman" 
                                 Font-Size="Large" CssClass ="form-control " ></asp:TextBox>
                        </div></div>         
                        <div class ="form-group ">
                        <asp:Label ID="lblPrathamSopan" runat="server" Text="(2) Pratham Sopan"  CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtPrathamSopan" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        <div class ="col-lg-5 ">
                        <asp:TextBox ID="txtPrathamSopan" runat="server" Font-Names="Times New Roman" 
                                Font-Size="Large"  CssClass ="form-control " ></asp:TextBox>
                      </div></div>         
                        <div class ="form-group ">
                            <asp:Label ID="lblDwitiyaSopan" runat="server"  CssClass="col-lg-3 control-label" Text="(3) Dwitiya Sopan" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtDwitiyaSopan" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                       <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtDwitiyaSopan" runat="server" Font-Names="Times New Roman" 
                                Font-Size="Large" CssClass ="form-control " ></asp:TextBox>
                        </div></div>         
                        <div class ="form-group ">
                            <asp:Label ID="lblTritiyaSopan" runat="server" CssClass="col-lg-3 control-label"  Text="(4) Tritiya Sopan" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtTritiyaSopan" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                         <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtTritiyaSopan" runat="server" Font-Names="Times New Roman" 
                                Font-Size="Large"  CssClass ="form-control " ></asp:TextBox>
                         </div></div>         
                        <div class ="form-group ">
                             <asp:Label ID="lblTritiyaSopanCertificateNo"  CssClass="col-lg-3 control-label" runat="server" Text="Certificate No." Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtTritiyaSopanCerificateNo" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtTritiyaSopanCerificateNo" runat="server" 
                                Font-Names="Times New Roman" Font-Size="Large"  CssClass ="form-control " ></asp:TextBox>
                        </div></div>         
                        <div class ="form-group ">
                            <asp:Label ID="lblTritiyaSopanDateofIssue"  CssClass="col-lg-3 control-label" runat="server" Text="Date of Issue " Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="txtTritiyaSopanDateofIssue" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                           <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtTritiyaSopanDateofIssue" runat="server" 
                                Font-Names="Times New Roman" Font-Size="Large"  CssClass ="form-control " 
                                ></asp:TextBox>
                           </div></div>         
                        <div class ="form-group ">
                            <asp:Label ID="lblRajyaPurskar" runat="server" CssClass="col-lg-3 control-label"  Text="(5) Rajya Puraskar" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator85" runat="server" 
                                ControlToValidate="txtTritiyaSopanCerificateNo" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                       <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtRajyaPuraskar" runat="server" Font-Names="Times New Roman" 
                                Font-Size="Large"  CssClass ="form-control " ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="txtRajyaPuraskar" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                         </div></div>         
                     <%--  <div class ="form-group ">
                          <asp:Label 
                                ID="lblRajyaPuraskarCertificateNo" runat="server" Text="Certificate No." Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator86" runat="server" 
                                ControlToValidate="txtTritiyaSopanCerificateNo" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtRajyaPuraskarCertificateNo"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="txtRajyaPuraskarCertificateNo" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div></div>    --%>     
                        <div class ="form-group ">
                            <asp:Label ID="lblRajyaPuraskarDateofIssue" runat="server" Text="Date of Issue"  CssClass="col-lg-3 control-label"  Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtRajyaPuraskarDateofIssue" 
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                          <div class ="col-lg-5 ">
                            <asp:TextBox ID="txtRajyaPuraskarDateofIssue" CssClass ="form-control " runat="server" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                        </div></div>         
                        </div></div> 
        <table width="100%" style=" border-collapse:collapse" class="table table-striped table-hover ">
        <caption>
         <asp:Label ID="lblofAPRODetailofDwitiyaSopanProficiencyBadge" runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman" Cssclass="control-label"  
        Text="15 (XII) of APRO III (Detail of Dwitiya Sopan Proficiency Badge)" 
                ForeColor="White"></asp:Label> 
        <asp:Label ID="lblInCapitalletters" runat="server"   
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
        Text=" (in capital letters)"></asp:Label>
        </caption>
        <tr >
         <th style=" border-collapse:collapse"><asp:Label ID="lblNameofBadge" class="control-label"   runat="server" Text="Name of Badge" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtNameofBadge" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
           <th style=" border-collapse:collapse"><asp:Label ID="lblDateofPassing"  class="control-label"  runat="server" Text="Date of Passing" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="txtDateofPassing" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
            <th style=" border-collapse:collapse"><asp:Label ID="lblNameoftheExaminer"  class="control-label"  runat="server" Text="Name of the Examiner" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtNameofExaminer" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
        </tr>
        <tr>
        <td style=" border-collapse:collapse" >
                <asp:TextBox ID="txtNameofBadge" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" CssClass ="form-control " Width="98%"></asp:TextBox>
        </td >
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" CssClass ="form-control " Width="99%"></asp:TextBox>
        </td>
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameofExaminer" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" CssClass ="form-control " Width="99%"></asp:TextBox>
        </td>
        </tr>
        </table>
    <br />
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRODetailofTritiyaSopanProficiency" runat="server" 
                Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman" class="control-label"  
                Text="16(XIII) of APRO III (Detail of Tritiya Sopan Proficiency Badge)" 
                ForeColor="White"></asp:Label> 
        </caption>
        <tr >
        <td>
            <asp:Label ID="lblGroupA" runat="server" Font-Size="Medium" class="col-lg-3 control-label"   Text="Group A."></asp:Label>
        </td>
        </tr>
        <tr>
        <th style=" border-collapse:collapse"><asp:Label ID="lblNameofBadge1"  class="control-label"  runat="server" Text="Name of Badge" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="txtNameoftheBadge1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
           <th style=" border-collapse:collapse"><asp:Label ID="lblDateofPassing1" class="control-label"   runat="server" Text="Date of Passing" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="txtDateofPassing1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
            <th style=" border-collapse:collapse"><asp:Label ID="lblNameoftheExamine1" class="control-label"   runat="server" Text="Name of the Examiner" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="txtNameoftheExaminer1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
         </tr>
             
         <tr>
         <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheBadge1"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
         </td>
         <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing1"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98.5%"></asp:TextBox>
         </td>
         <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer1"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
         </td>
         </tr>
         </table> 
<br />
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
        <tr>
        <td>
         <asp:Label ID="lblGroupB" runat="server" Font-Names="Times New Roman"  class="col-lg-3 control-label"  Font-Size="Large" Text="Group B"></asp:Label>
        </td>
        </tr>
        <tr>
         <th style=" border-collapse:collapse"> <asp:Label ID="lblNameofBadge2" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="txtNameofBadge2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
           <th style=" border-collapse:collapse" > <asp:Label ID="lblDateofPassing2"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="txtDateofPassing2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
            <th style=" border-collapse:collapse"> <asp:Label ID="lblNameoftheExaminer2" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtNameoftheExaminer2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
         </tr>   
       
         <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameofBadge2" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing2" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98.5%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer2" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            </tr>
            </table> 
    <br />               
        <table width="100%" class="table table-striped table-hover "style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRODetailofRajyaPuraskarProficiency2" 
                class="control-label"   runat="server" 
                Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
                Text="17(i) of APRO III (Detail of Rajya Puraskar Proficiency Badge)" 
                ForeColor="White"></asp:Label>
        </caption>
        <tr>
        <td>
        <asp:Label ID="lblgrupA1" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Group A"></asp:Label>
        </td>
        </tr> 
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge3" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="txtNameofBadge3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ControlToValidate="txtNameofBadge4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDateofPassing3" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="txtDateofPassing3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                    ControlToValidate="txtDateofPassing4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheExaminer3" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="txtNameoftheExaminer3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                    ControlToValidate="txtNameoftheExaminer4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
        </tr>
           
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameofBadge3" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing3" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td >
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer3" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameofBadge4" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing4" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer4" runat="server" 
                    Font-Names="Times New Roman" Font-Size="Large" CssClass ="form-control "  Width="99%"></asp:TextBox>
            </td>
        </tr>
         </table>
    <br />
    
        <table width="100%" class="table table-striped table-hover" style=" border-collapse:collapse">
        <caption>
        <asp:Label ID="lblofAPROProficiency3" runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman" class="control-label"  
        Text="17(ii) of APRO III (Proficiency Badge)" ForeColor="White"></asp:Label>
        </caption>
        <tr>
        <td>
        <asp:Label ID="lblGroupA1" runat="server" Font-Size="Medium" class="col-lg-3 control-label" Text="Group A."></asp:Label>
        </td>
        </tr>
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge4" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                    ControlToValidate="txtNameoftheBadge5" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateofPassing4" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                    ControlToValidate="txtDateofPassing5" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheExaminer4" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                    ControlToValidate="txtNameoftheExaminer5" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheBadge5" runat="server"  CssClass ="form-control " 
                    Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse" >
                <asp:TextBox ID="txtDateofPassing5" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98.5%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer5" runat="server"  
                    CssClass ="form-control " Font-Names="Times New Roman" Font-Size="Large" 
                    Width="99%"></asp:TextBox>
            </td>
        </tr>
        
        </table>
        <br />
        <table width="100%" class="table table-striped table-hover" style=" border-collapse:collapse">
        <tr>
        <td>
            <asp:Label ID="lblGroupB1" runat="server" Font-Size="Large" class="col-lg-3 control-label"   Text="Group B." Font-Names="Times New Roman" ></asp:Label>
        </td>
        </tr>
        <tr>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofBadge5" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                    ControlToValidate="txtNameoftheBadge6" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateOfPassing5" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                    ControlToValidate="txtDateofPassing6" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameoftheExaminer5" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                    ControlToValidate="txtNameoftheExaminer6" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheBadge6" runat="server"  CssClass ="form-control " 
                    Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing6" runat="server"  CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98.5%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer6" runat="server"  
                    CssClass ="form-control " Font-Names="Times New Roman" Font-Size="Large" 
                    Width="99%"></asp:TextBox>
            </td>
        </tr>
      </table> 
      <br /> 
      <center >
               <asp:Label ID="lblRashtrapatiScoutDetailsofWorkDone" runat="server" 
                   Font-Bold="True" Font-Size="X-Large" 
        Text="Rashtrapati Guide Details of Work Done "  class="control-label"  
                   Font-Names="Times New Roman"></asp:Label>
        
      </center> 
      <br />
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
        <caption>
            <asp:Label ID="lblofAPRO" runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"  class="control-label"  
        Text="18 (B) II of APRO III (Three Night Camping)" ForeColor="White"></asp:Label>
    </caption>
    
        <tr>
         <th style=" border-collapse:collapse">
                <asp:Label ID="lblCampingPlace" runat="server" Font-Names="Times New Roman" class="control-label"  Font-Size="Large" Text="Camping Place"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                    ControlToValidate="txtCampingPlace" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse" colspan="2" width="250px">
               <asp:Label ID="lblDates" runat="server" Font-Names="Times New Roman"  class="col-lg-3 control-label"   Font-Size="Large" Text="Dates"></asp:Label></th>
            <th style=" border-collapse:collapse">
                <asp:Label  class="control-label"  ID="lblNameoftheLeaderoftheCamp" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Leader of the camp"></asp:Label>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                    ControlToValidate="txtNameOftheLeaderOftheCamp" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            
            </th>
            
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                </td>
            <th style=" border-collapse:collapse">               
             <asp:Label ID="lblFrom" runat="server" class="col-lg-3 control-label" Font-Size="Large" Text="From"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                    ControlToValidate="txtFrom" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             </th>
             <th style=" border-collapse:collapse">
                <asp:Label ID="lblTo" runat="server" class="col-lg-3 control-label" Font-Size="Large"  Text="To"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                    ControlToValidate="txtTo" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <td style=" border-collapse:collapse">
              </td>
        </tr>
        <tr>
        <td  style=" border-collapse:collapse">
               <asp:TextBox ID="txtCampingPlace" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
                <td  style=" border-collapse:collapse"><asp:TextBox  CssClass ="form-control " ID="txtFrom" runat="server" Font-Names="Times New Roman" 
                        Font-Size="Large" Width="98%"></asp:TextBox>
            </td>

                <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtTo" runat="server" CssClass ="form-control " Font-Names="Times New Roman" 
                        Font-Size="Large" Width="98%"></asp:TextBox>
              </td>
          <td  style=" border-collapse:collapse">
               <asp:TextBox ID="txtNameOftheLeaderOftheCamp" runat="server" 
                    Font-Names="Times New Roman" CssClass ="form-control " Font-Size="Large" Width="98%"></asp:TextBox>
            
            </td> 
        </tr>
    </table>
 <br />  
    <table width="100%" class="table table-striped table-hover "  style=" border-collapse:collapse">
    <caption>            
    <asp:Label ID="lblofAPROAmbulancemanBadge"  class="control-label"  runat="server" 
        Font-Size="Large" 
        Text="18 (B) (III) of APRO III Ambulance Badge" ForeColor="White" 
            Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
    </caption>

       <tr>
        
            <th  style=" border-collapse:collapse">
               <asp:Label ID="lblDateOfPassing123" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                    ControlToValidate="txtDatesOfPassing123" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th  style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfExaminer123" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of Examiner"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                    ControlToValidate="txtNameOfExaminer123" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                </th>
            
        </tr>  
        <tr>
            <td  style=" border-collapse:collapse" >
                <asp:TextBox ID="txtDatesOfPassing123" runat="server" 
                    Font-Names="Times New Roman"  CssClass ="form-control " Font-Size="Large" Width="99%"></asp:TextBox> 
            </td>
            <td  style=" border-collapse:collapse" >
               <asp:TextBox ID="txtNameOfExaminer123" runat="server" 
                    Font-Names="Times New Roman" CssClass ="form-control "  Font-Size="Large" Width="99%"></asp:TextBox> 
                </td>
            
        </tr>
        </table>
   <br />    
        <table width="100%" class="table table-striped table-hover "  style=" border-collapse:collapse">
       <caption>            
    <asp:Label ID="lbl"  class="control-label"  runat="server" 
        Font-Size="Large" 
        Text="18 (B) (IV) of APRO III Proficiency Badge" ForeColor="White" 
            Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
    </caption>

        <tr>
        <td>  <asp:Label ID="lblGrupA4" runat="server" Font-Size="Large"  class="col-lg-3 control-label"  Text="Group A." Font-Names="Times New Roman" ></asp:Label>
       </td>
        </tr>
         <tr>
          <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofbadge6" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                    ControlToValidate="txtNameofBadge7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateofPassing6" runat="server"  class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator87" runat="server" 
                    ControlToValidate="txtNameofBadge7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameofExaminer6" runat="server" Font-Names="Times New Roman" Font-Size="Large" class="control-label"   Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator88" runat="server" 
                    ControlToValidate="txtNameOfExaminer7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
             </th>
           
         
         </tr>

        <tr>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameOfBadge7"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateOfPassing7"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameOfExaminer7" CssClass ="form-control "  runat="server" 
                    Font-Names="Times New Roman" Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
        </tr>
        
        
        </table>
        <table width="100%" style=" border-collapse:collapse"  class="table table-striped table-hover ">
        <tr>
        <td>  <asp:Label ID="lblGrupB4" runat="server" Font-Size="Large" Text="Group B." Font-Names="Times New Roman" ></asp:Label>
       </td>
        </tr>
          <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfBadge7" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of Badge"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                    ControlToValidate="txtNameofBadge8" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
               <asp:Label ID="lblDateofPassing7" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Date of Passing"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                    ControlToValidate="txtDateofPassing8" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfExaminer7"  class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Examiner"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
                    ControlToValidate="txtNameoftheExaminer8" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
           
        <tr>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameofBadge8" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="99%"></asp:TextBox>
            </td>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofPassing8" runat="server" CssClass ="form-control " Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td  style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameoftheExaminer8" runat="server" 
                    Font-Names="Times New Roman" Font-Size="Large" CssClass ="form-control "  
                    Width="99%"></asp:TextBox>
            </td>
        </tr>
        </table>


      <br /> 
    <table width="100%" class="table table-striped table-hover "  style=" border-collapse:collapse">
    <caption>
        <asp:Label ID="lblofAPROProficiency5" runat="server" 
         Font-Size="Large" 
        
            Text="18 (B) (V) of APRO III (Community Service Project Undertaken through PMSC)" 
            ForeColor="White" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
    </caption>
        <tr>
         <th  style=" border-collapse:collapse">
                <asp:Label ID="lblNameOfProjecctUndertaken" runat="server" class="control-label"   Font-Names="Times New Roman" Font-Size="Large" Text="Name of the Project undertaken"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                    ControlToValidate="txtProjectundertaken" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
               </th>
            <th colspan="2" width="250px">
               <asp:Label ID="lblDates1" runat="server"  class="control-label"  Font-Names="Times New Roman" Font-Size="Large" Text="Date"></asp:Label></th>
            <th  style=" border-collapse:collapse">
                <asp:Label ID="lblTotalhrs" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Total Hours"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" 
                    ControlToValidate="txtTotalHrs" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th  style=" border-collapse:collapse">
                <asp:Label ID="lblDateOFSubmissionOfReport" runat="server"  class="control-label"  Text="Date Of Submission of Report" Font-Size="Large" Font-Names ="Times New Roman"></asp:Label>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" 
                    ControlToValidate="txtDateOfSubmissionOfReport" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            
            </th>
        </tr>
        <tr>
         <td  style=" border-collapse:collapse"></td>
            <th  style=" border-collapse:collapse" >
            <asp:Label ID="lblFrom1" runat="server"  Text="From" Font-Size="Large"  class="control-label"  Font-Names=" Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" 
                    ControlToValidate="txtFrom1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th  style=" border-collapse:collapse">
            <asp:Label ID="lblTo1" runat="server" Text="To" Font-Names="Times New Roman" class="control-label"   Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" 
                    ControlToValidate="txtTo1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
          <td  style=" border-collapse:collapse""></td>
          <td  style=" border-collapse:collapse"></td>
           </tr>
           <tr>
         <td>
                <asp:TextBox ID="txtNameOfProjectUndertaken" runat="server" 
                    Font-Names="Times New Roman"  CssClass ="form-control " Font-Size="Large" 
                    Width="98%"></asp:TextBox>
               </td>
            <td><asp:TextBox ID="txtFrom1" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large"  CssClass ="form-control " Width="97%"></asp:TextBox>
            </td>
            <td>
            <asp:TextBox ID="txtTo1" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" CssClass ="form-control "  Width="97%"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtTotalHrs" runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large"  CssClass ="form-control " Width="97%"></asp:TextBox>
            </td>
            <td>
            <asp:TextBox ID="txtDateOfSubmissionOfReport" runat="server" 
                    Font-Names="Times New Roman" CssClass ="form-control "  Font-Size="Large" Width="98%"></asp:TextBox>
            
            </td>
            </tr>
    
    </table>
    <br />
    <asp:Label ID="lblNote1" runat="server" Text="Note: Diary Submitted to COH should produced during testing camp." Font-Size="Medium" Font-Names="Times New Roman"></asp:Label>
    <br />
    <br />

    <table width="100% " class="table table-striped table-hover "  style=" border-collapse:collapse">
    <caption>
    <asp:Label ID="lblofAPRODetailsofOverNighthikedone" runat="server" 
         Font-Size="Large" 
        Text="18(B)(VI) of APRO III (Details of hike done)" 
            Font-Names="Times New Roman" Font-Bold="True" ForeColor="White"></asp:Label>
   </caption>
       <tr>
       <th style=" border-collapse:collapse" colspan="2" width="250px">
                <asp:Label ID="lblDates2" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Dates" class="col-lg-3 control-label"  ></asp:Label>&nbsp;</th>
            <th colspan="2" style=" border-collapse:collapse" width="250px">
               <asp:Label ID="lblPlace" runat="server" Font-Names="Times New Roman" class="control-label"   Font-Size="Large" Text="Place"></asp:Label></th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDistanceInKM" runat="server" Font-Names="Times New Roman"  class="control-label"   Font-Size="Large" Text="Distance In K.M."></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" 
                    ControlToValidate="txtDistanceInKM" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse">
                <asp:Label ID="lblDateOfSubmissionOfReport1" runat="server" class="control-label"   Text="Date Of Submission Of Report" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" 
                    ControlToValidate="txtDateOfSubmissionOfReport1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th style=" border-collapse:collapse"> 
                <asp:Label ID="lblTypeOfHike" runat="server" Text="Type Of Hike" class="control-label"   Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" 
                    ControlToValidate="txtDateOfSubmissionOfReport1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
        </tr>
        <tr>
        <th style=" border-collapse:collapse" >
            <asp:Label ID="lblFrom2" runat="server" Text="From" Font-Names="Times New Roman"  class="control-label"   Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
                    ControlToValidate="txtFrom2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
        <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblTo2" runat="server" Text="To" Font-Names="Times New Roman" Font-Size="Large" class="control-label"  ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" 
                    ControlToValidate="txtTo2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
       <th style=" border-collapse:collapse">
            <asp:Label ID="lblFrom3" runat="server" Text="From" Font-Names="Times New Roman" Font-Size="Large" class="control-label"  ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" 
                    ControlToValidate="txtFrom3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
        <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblTo3" runat="server" Text="To" Font-Names="Times New Roman" Font-Size="Large" class="control-label"  ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator69" runat="server" 
                    ControlToValidate="txtTo3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
       <td style=" border-collapse:collapse"></td>
       <td style=" border-collapse:collapse"></td>
        </tr>


        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtFrom2"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtTo2"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtFrom3" CssClass ="form-control "  runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtTo3" CssClass ="form-control "  runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
       <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDistanceInKM"  CssClass ="form-control " runat="server" Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateOfSubmissionOfReport1"  CssClass ="form-control " runat="server" 
                    Font-Names="Times New Roman" Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtTypeOfhike" runat="server"  CssClass ="form-control " Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
        </tr> 
        </table>
      <br /> 
    <asp:Label ID="lblNote2" runat="server" 
        Text="Note:- Diary of the Hike report to be produced during testing camp" class="control-label"   Font-Names=" Times New Roman" Font-Size="Medium"></asp:Label>
  <br />
  <br />
    <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
    <caption>
        <asp:Label ID="lblofAPRODetailsofSustainedCommunityDevelopmentProjectUndertakenthroughPMSC" runat="server" 
         Font-Size="Large"  class="control-label"  
            Text="18(B)(VII) of APRO III (Details of Sustained Community Development Project Undertaken through PMSC)" 
            ForeColor="White" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
        </caption>
    <tr>
    <th style=" border-collapse:collapse">
                <asp:Label  class="control-label"  ID="lblProjectUndertaken" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Project Undertaken"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" 
                    ControlToValidate="txtNameOfProjectUndertaken" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th rowspan="1">
               <asp:Label ID="lblDateOfCommencement" runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date of Commencement" class="control-label"  ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" 
                    ControlToValidate="txtDateofCommencement" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th rowspan="1">
                <asp:Label ID="lblDateOfCompletion" runat="server" Font-Names="Times New Roman" Font-Size="Large"  class="control-label"   Text="Date Of Completion"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" 
                    ControlToValidate="txtDateOfCompletion" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th rowspan ="1"> 
                <asp:Label ID="lblNameOfUnitRegisteredPmsc" runat="server"  class="control-label"  Text="Name Of Unit Registerd PMSC" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" 
                    ControlToValidate="txtNameOfUnitRegisteredPmsc" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
        </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtProjectundertaken" runat="server" 
                    Font-Names="Times New Roman"  CssClass ="form-control " Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateofCommencement" runat="server" 
                    Font-Names="Times New Roman" CssClass ="form-control "  Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDateOfCompletion" runat="server" 
                    Font-Names="Times New Roman" CssClass ="form-control "  Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
            <asp:TextBox ID="txtNameOfUnitRegisteredPmsc" runat="server" 
                    Font-Names="Times New Roman"  CssClass ="form-control " Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
        
    </tr>
        </table>
       <br /> 
    <asp:Label ID="lblNote3" runat="server"  class="control-label"  
        Text=" Note:- A copy of the report  of participation to be produced during testing camp" Font-Size="Medium" Font-Names="Times New Roman"></asp:Label>
  <br />
  <br />
     <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse">
  <caption>
    <asp:Label ID="lblTeachingGames" runat="server" 
        Font-Size="Large" 
        Text="18(B) VIII (Teaching Games)" 
          Font-Names="Times New Roman" Font-Bold="True" ForeColor="White"></asp:Label>
        </caption>
        <tr>
    <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNameOfLocality"  class="control-label"  runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Name of Locality"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator72" runat="server" 
                    ControlToValidate="txtNameOfLocality" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            <th colspan="2" style=" border-collapse:collapse" width="250px">
               <asp:Label ID="lblDates4" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="Date"></asp:Label></th>
            <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNoOfChildren" class="control-label"   runat="server" Font-Names="Times New Roman" Font-Size="Large" Text="No of Children"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" 
                    ControlToValidate="txtNoOfChildren" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
            
       </tr>
       <tr>
       <td style=" border-collapse:collapse" ></td>
       <th style=" border-collapse:collapse" >
        <asp:Label ID="lblFrom5" runat="server" class="control-label"   Text="From" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator70" runat="server" 
                    ControlToValidate="txtFrom4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
       <th style=" border-collapse:collapse" >
        <asp:Label ID="lblTo5" runat="server" class="control-label"   Text="To" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" 
                    ControlToValidate="txtTo4" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
       <td style=" border-collapse:collapse"></td>
       </tr>
        <tr>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameOfLocality" runat="server"  CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="97%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtFrom4" runat="server"  CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtTo4" runat="server"  CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            <td style=" border-collapse:collapse">
            <asp:TextBox ID="txtNoOfChildren" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
            </td>
            </tr>
         </table>
       
    <asp:Label ID="lblNote5"  class="control-label"   runat="server" 
        Text=" Note:- List of names of Children with their age and father's name and a copy of the appreciation letter from Parent/Head of Institution to be produced with details" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
    <br />
     
  <center >
   <asp:Label ID="lblOR" runat="server" Font-Bold="True" Text="OR" 
            Font-Names="Times New Roman"  class="control-label"  Font-Size="Large"></asp:Label>
   </center>
   <br /> 
    
    <table width="100%" style=" border-collapse:collapse" class="table table-striped table-hover ">
        <caption>
        <asp:Label ID="lblInteriorDecorationAndFancyCooking" runat="server" 
        Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"
        Text="Interior Decoration And Fancy Cooking" ForeColor="White"></asp:Label>
        </caption>
        <tr >
         <th style=" border-collapse:collapse" ><asp:Label ID="lblPlace1"  class="control-label"   runat="server" Text="Place" Font-Names="Times New Roman" Font-Size="Large" ></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator74" runat="server" 
                    ControlToValidate="txtPlace1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>
           <th style=" border-collapse:collapse"><asp:Label ID="lblDates111"  class="control-label"  runat="server" Text="Dates" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" 
                    ControlToValidate="txtDates111" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
            <th style=" border-collapse:collapse"><asp:Label ID="lblNameofExaminer111"  class="control-label"  runat="server" Text="Name of the Examiner" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" 
                    ControlToValidate="txtNameOfExaminer111" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </th>  
        </tr>
        <tr>
        <td style=" border-collapse:collapse" >
                <asp:TextBox ID="txtPlace1" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="98%"></asp:TextBox>
        </td >
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtDates111" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="99%"></asp:TextBox>
        </td>
        <td style=" border-collapse:collapse">
                <asp:TextBox ID="txtNameOfExaminer111" runat="server" CssClass ="form-control "  Font-Names="Times New Roman" 
                    Font-Size="Large" Width="99%"></asp:TextBox>
        </td>
        </tr>
        </table>
    <br />
    <asp:Label ID="lblNote6" runat="server" 
        Text=" Note:- All relevant record, Log Book and Certificate should be produced in the testing camp as and when demanded"></asp:Label>
      <br /> 
      <br />
    <table width="50%" align="right" >
        <tr>
       

            <td class="style1">
                <asp:Label ID="lblSignatureofGuide" runat="server" Font-Size="Large" 
                    Text="Signature of Guide" Font-Names="Times New Roman" Font-Bold="True"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" 
                    ControlToValidate="fuSignatureofGuide" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td >
                <asp:FileUpload ID="fuSignatureOfGuide" runat="server"  CssClass ="form-control " /><br />
            </td>
            </tr>
        <tr>
        
            <td class="style1" >
            <asp:Label ID="lblName" runat="server" Font-Size="Large" class="control-label" 
                    Text="Name" Font-Names="Times New Roman" Font-Bold="True"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td >
                <asp:TextBox ID="txtName"  CssClass ="form-control "  runat="server" Font-Names="Times New Roman"></asp:TextBox><br />
            </td>
           </tr>
        <tr>
        
            <td class="style1">
                <asp:Label ID="lblDate" runat="server" class="control-label" Font-Size="Medium" 
                    Text=" Date" Font-Names="Times New Roman" Font-Bold="True"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator79" runat="server" 
                    ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td >
                <asp:TextBox ID="txtDate" CssClass ="form-control "  runat="server"  Font-Names="Times New Roman " Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
     </table>
   <br />
   <br />
   <br />
    <table "width:50%">
        <tr>
            <td>
                <asp:Label ID="lblSignatureofGuideCaptain" runat="server" class="control-label" Font-Bold="True" 
                    Font-Size="Large" Text=" Signature of Guide Captain" Font-Names="Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator80" runat="server" 
                    ControlToValidate="fuSignatureOfGuideCaptain" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:FileUpload ID="fuSignatureOfGuideCaptain" runat="server"  
                    CssClass ="form-control " /><br />
            </td>
            </tr>
       
        <tr>
            <td >
                <asp:Label ID="lblNamess" runat="server" class="control-label" Font-Bold="True" Font-Size="Large" 
                    Text="Name" Font-Names="Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator81" runat="server" 
                    ControlToValidate="txtNamess" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtNamess" runat="server" CssClass ="form-control "  Width="200px" 
                    Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox><br />
            </td>
            </tr>
       
        <tr>
            <td >
                <asp:Label ID="lblGuidingQualification" class="control-label" 
                    runat="server"  Text="Guiding Qualification" 
                    Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator82" runat="server" 
                    ControlToValidate="txtGuidingQualification" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtGuidingQualification" CssClass ="form-control "  runat="server" Width="200px" 
                    Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox><br />
            </td>
                  </tr>
        <tr>
            <td >
                <asp:Label ID="lblWarrantNo" runat="server" class="control-label" Text="Warrant No." 
                    Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator83" runat="server" 
                    ControlToValidate="txtWarrentNo" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtWarrantNo" runat="server"  CssClass ="form-control " Width="200px" 
                    Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox><br />
            </td>
           </tr>
        <tr>
            <td>
                <asp:Label ID="lblValidupto" runat="server" class="control-label" Text="Valid upto" 
                    Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator84" runat="server" 
                    ControlToValidate="txtVlidupto" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtVlidupto" runat="server" CssClass ="form-control "  Width="200px" 
                    Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
            <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-default" />
              <asp:Button ID="btn1" runat="server" CssClass="btn btn-primary" 
    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
    onclick="btn1_Click" Text="Submit" /><br />
</td>
 </tr>        
    </table>
    </div> 
 
    </fieldset>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [RashtrapatiPuraskarGuide] WHERE [Sr No] = @Sr_No" 
        InsertCommand="INSERT INTO [RashtrapatiPuraskarGuide] ([PMSCNHQRegistrationNo], [Pravesh], [PrathamSopan], [TritiyaSopan], [TritiyaSopanCertificateNo], [TritiyaSopanDateofIssue], [RajyaPuraskar], [RajyaPuraskarDateOfIsssue], [NameofBadge], [DateofPassing], [NameOftheExaminer], [NameofBadge1], [DateofPassing1], [NameOftheExaminer1], [NameofBadge2], [DateofPassing2], [NameOftheExaminer2], [NameofBadge3], [DateofPassing3], [NameOftheExaminer3], [NameofBadge4], [DateofPassing4], [NameOftheExaminer4], [NameofBadge5], [DateofPassing5], [NameOftheExaminer5], [NameofBadge6], [DateofPassing6], [NameOftheExaminer6], [NameofBadge7], [DateofPassing7], [NameOftheExaminer7], [CampingPlace], [From], [To], [NameofTheLeaderOfCamp], [DateofPassing123], [NameOftheExaminer123], [NameofBadge8], [DateofPassing8], [NameOftheExaminer8], [NameofBadge9], [DateofPassing9], [NameOftheExaminer9], [NameofrojectUndertaken], [From1], [To1], [TotalHrs], [DateOfSubmissionOfReport], [From2], [To2], [From3], [To3], [DistanceinKM], [DateOfSubmissionOfReport1], [TypeofHike], [ProjectUndertaken], [DateofCommencement], [DateofCompletion], [NameofUnitRegisteredPMC], [NameofBadge234], [NameofGroup], [From4], [To4], [NoofChildren], [Place1], [Dates111], [NameOfTheExaminer111], [SignatureOfGuide], [Name], [Date], [SignatureOfGuideCaptain], [Namess], [GuidingInformation], [WarrantNo1], [ValidUpto]) VALUES (@PMSCNHQRegistrationNo, @Pravesh, @PrathamSopan, @TritiyaSopan, @TritiyaSopanCertificateNo, @TritiyaSopanDateofIssue, @RajyaPuraskar, @RajyaPuraskarDateOfIsssue, @NameofBadge, @DateofPassing, @NameOftheExaminer, @NameofBadge1, @DateofPassing1, @NameOftheExaminer1, @NameofBadge2, @DateofPassing2, @NameOftheExaminer2, @NameofBadge3, @DateofPassing3, @NameOftheExaminer3, @NameofBadge4, @DateofPassing4, @NameOftheExaminer4, @NameofBadge5, @DateofPassing5, @NameOftheExaminer5, @NameofBadge6, @DateofPassing6, @NameOftheExaminer6, @NameofBadge7, @DateofPassing7, @NameOftheExaminer7, @CampingPlace, @From, @To, @NameofTheLeaderOfCamp, @DateofPassing123, @NameOftheExaminer123, @NameofBadge8, @DateofPassing8, @NameOftheExaminer8, @NameofBadge9, @DateofPassing9, @NameOftheExaminer9, @NameofrojectUndertaken, @From1, @To1, @TotalHrs, @DateOfSubmissionOfReport, @From2, @To2, @From3, @To3, @DistanceinKM, @DateOfSubmissionOfReport1, @TypeofHike, @ProjectUndertaken, @DateofCommencement, @DateofCompletion, @NameofUnitRegisteredPMC, @NameofBadge234, @NameofGroup, @From4, @To4, @NoofChildren, @Place1, @Dates111, @NameOfTheExaminer111, @SignatureOfGuide, @Name, @Date, @SignatureOfGuideCaptain, @Namess, @GuidingInformation, @WarrantNo1, @ValidUpto)" 
        SelectCommand="SELECT [Sr No] AS Sr_No, [PMSCNHQRegistrationNo], [Pravesh], [PrathamSopan], [TritiyaSopan], [TritiyaSopanCertificateNo], [TritiyaSopanDateofIssue], [RajyaPuraskar], [RajyaPuraskarDateOfIsssue], [NameofBadge], [DateofPassing], [NameOftheExaminer], [NameofBadge1], [DateofPassing1], [NameOftheExaminer1], [NameofBadge2], [DateofPassing2], [NameOftheExaminer2], [NameofBadge3], [DateofPassing3], [NameOftheExaminer3], [NameofBadge4], [DateofPassing4], [NameOftheExaminer4], [NameofBadge5], [DateofPassing5], [NameOftheExaminer5], [NameofBadge6], [DateofPassing6], [NameOftheExaminer6], [NameofBadge7], [DateofPassing7], [NameOftheExaminer7], [CampingPlace], [From], [To], [NameofTheLeaderOfCamp], [DateofPassing123], [NameOftheExaminer123], [NameofBadge8], [DateofPassing8], [NameOftheExaminer8], [NameofBadge9], [DateofPassing9], [NameOftheExaminer9], [NameofrojectUndertaken], [From1], [To1], [TotalHrs], [DateOfSubmissionOfReport], [From2], [To2], [From3], [To3], [DistanceinKM], [DateOfSubmissionOfReport1], [TypeofHike], [ProjectUndertaken], [DateofCommencement], [DateofCompletion], [NameofUnitRegisteredPMC], [NameofBadge234], [NameofGroup], [From4], [To4], [NoofChildren], [Place1], [Dates111], [NameOfTheExaminer111], [SignatureOfGuide], [Name], [Date], [SignatureOfGuideCaptain], [Namess], [GuidingInformation], [WarrantNo1], [ValidUpto] FROM [RashtrapatiPuraskarGuide]" 
        
        UpdateCommand="UPDATE [RashtrapatiPuraskarGuide] SET [PMSCNHQRegistrationNo] = @PMSCNHQRegistrationNo, [Pravesh] = @Pravesh, [PrathamSopan] = @PrathamSopan, [TritiyaSopan] = @TritiyaSopan, [TritiyaSopanCertificateNo] = @TritiyaSopanCertificateNo, [TritiyaSopanDateofIssue] = @TritiyaSopanDateofIssue, [RajyaPuraskar] = @RajyaPuraskar, [RajyaPuraskarDateOfIsssue] = @RajyaPuraskarDateOfIsssue, [NameofBadge] = @NameofBadge, [DateofPassing] = @DateofPassing, [NameOftheExaminer] = @NameOftheExaminer, [NameofBadge1] = @NameofBadge1, [DateofPassing1] = @DateofPassing1, [NameOftheExaminer1] = @NameOftheExaminer1, [NameofBadge2] = @NameofBadge2, [DateofPassing2] = @DateofPassing2, [NameOftheExaminer2] = @NameOftheExaminer2, [NameofBadge3] = @NameofBadge3, [DateofPassing3] = @DateofPassing3, [NameOftheExaminer3] = @NameOftheExaminer3, [NameofBadge4] = @NameofBadge4, [DateofPassing4] = @DateofPassing4, [NameOftheExaminer4] = @NameOftheExaminer4, [NameofBadge5] = @NameofBadge5, [DateofPassing5] = @DateofPassing5, [NameOftheExaminer5] = @NameOftheExaminer5, [NameofBadge6] = @NameofBadge6, [DateofPassing6] = @DateofPassing6, [NameOftheExaminer6] = @NameOftheExaminer6, [NameofBadge7] = @NameofBadge7, [DateofPassing7] = @DateofPassing7, [NameOftheExaminer7] = @NameOftheExaminer7, [CampingPlace] = @CampingPlace, [From] = @From, [To] = @To, [NameofTheLeaderOfCamp] = @NameofTheLeaderOfCamp, [DateofPassing123] = @DateofPassing123, [NameOftheExaminer123] = @NameOftheExaminer123, [NameofBadge8] = @NameofBadge8, [DateofPassing8] = @DateofPassing8, [NameOftheExaminer8] = @NameOftheExaminer8, [NameofBadge9] = @NameofBadge9, [DateofPassing9] = @DateofPassing9, [NameOftheExaminer9] = @NameOftheExaminer9, [NameofrojectUndertaken] = @NameofrojectUndertaken, [From1] = @From1, [To1] = @To1, [TotalHrs] = @TotalHrs, [DateOfSubmissionOfReport] = @DateOfSubmissionOfReport, [From2] = @From2, [To2] = @To2, [From3] = @From3, [To3] = @To3, [DistanceinKM] = @DistanceinKM, [DateOfSubmissionOfReport1] = @DateOfSubmissionOfReport1, [TypeofHike] = @TypeofHike, [ProjectUndertaken] = @ProjectUndertaken, [DateofCommencement] = @DateofCommencement, [DateofCompletion] = @DateofCompletion, [NameofUnitRegisteredPMC] = @NameofUnitRegisteredPMC, [NameofBadge234] = @NameofBadge234, [NameofGroup] = @NameofGroup, [From4] = @From4, [To4] = @To4, [NoofChildren] = @NoofChildren, [Place1] = @Place1, [Dates111] = @Dates111, [NameOfTheExaminer111] = @NameOfTheExaminer111, [SignatureOfGuide] = @SignatureOfGuide, [Name] = @Name, [Date] = @Date, [SignatureOfGuideCaptain] = @SignatureOfGuideCaptain, [Namess] = @Namess, [GuidingInformation] = @GuidingInformation, [WarrantNo1] = @WarrantNo1, [ValidUpto] = @ValidUpto WHERE [Sr No] = @Sr_No">
        <DeleteParameters>
            <asp:Parameter Name="Sr_No" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PMSCNHQRegistrationNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Pravesh" />
            <asp:Parameter Name="PrathamSopan" DbType="Date" />
            <asp:Parameter Name="TritiyaSopan" DbType="Date" />
            <asp:Parameter Name="TritiyaSopanCertificateNo" Type="Int32" />
            <asp:Parameter Name="TritiyaSopanDateofIssue" DbType="Date" />
            <asp:Parameter Name="RajyaPuraskar" DbType="Date" />
            <asp:Parameter Name="RajyaPuraskarDateOfIsssue" DbType="Date" />
            <asp:Parameter Name="NameofBadge" Type="String" />
            <asp:Parameter Name="DateofPassing" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer" Type="String" />
            <asp:Parameter Name="NameofBadge1" Type="String" />
            <asp:Parameter Name="DateofPassing1" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer1" Type="String" />
            <asp:Parameter Name="NameofBadge2" Type="String" />
            <asp:Parameter Name="DateofPassing2" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer2" Type="String" />
            <asp:Parameter Name="NameofBadge3" Type="String" />
            <asp:Parameter DbType="Date" Name="DateofPassing3" />
            <asp:Parameter Name="NameOftheExaminer3" Type="String" />
            <asp:Parameter Name="NameofBadge4" Type="String" />
            <asp:Parameter Name="DateofPassing4" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer4" Type="String" />
            <asp:Parameter Name="NameofBadge5" Type="String" />
            <asp:Parameter Name="DateofPassing5" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer5" Type="String" />
            <asp:Parameter Name="NameofBadge6" Type="String" />
            <asp:Parameter Name="DateofPassing6" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer6" Type="String" />
            <asp:Parameter Name="NameofBadge7" Type="String" />
            <asp:Parameter Name="DateofPassing7" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer7" Type="String" />
            <asp:Parameter Name="CampingPlace" Type="String" />
            <asp:Parameter Name="From" DbType="Date" />
            <asp:Parameter Name="To" DbType="Date" />
            <asp:Parameter Name="NameofTheLeaderOfCamp" Type="String" />
            <asp:Parameter Name="DateofPassing123" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer123" Type="String" />
            <asp:Parameter Name="NameofBadge8" Type="String" />
            <asp:Parameter Name="DateofPassing8" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer8" Type="String" />
            <asp:Parameter Name="NameofBadge9" Type="String" />
            <asp:Parameter Name="DateofPassing9" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer9" Type="String" />
            <asp:Parameter Name="NameofrojectUndertaken" Type="String" />
            <asp:Parameter Name="From1" Type="String" />
            <asp:Parameter Name="To1" Type="String" />
            <asp:Parameter Name="TotalHrs" Type="Int32" />
            <asp:Parameter Name="DateOfSubmissionOfReport" DbType="Date" />
            <asp:Parameter Name="From2" Type="String" />
            <asp:Parameter Name="To2" Type="String" />
            <asp:Parameter Name="From3" Type="String" />
            <asp:Parameter Name="To3" Type="String" />
            <asp:Parameter Name="DistanceinKM" Type="Int32" />
            <asp:Parameter Name="DateOfSubmissionOfReport1" DbType="Date" />
            <asp:Parameter Name="TypeofHike" Type="String" />
            <asp:Parameter Name="ProjectUndertaken" Type="String" />
            <asp:Parameter Name="DateofCommencement" DbType="Date" />
            <asp:Parameter Name="DateofCompletion" DbType="Date" />
            <asp:Parameter Name="NameofUnitRegisteredPMC" Type="String" />
            <asp:Parameter Name="NameofBadge234" Type="String" />
            <asp:Parameter Name="NameofGroup" Type="String" />
            <asp:Parameter Name="From4" Type="String" />
            <asp:Parameter Name="To4" Type="String" />
            <asp:Parameter Name="NoofChildren" Type="Int32" />
            <asp:Parameter Name="Place1" Type="String" />
            <asp:Parameter DbType="Date" Name="Dates111" />
            <asp:Parameter Name="NameOfTheExaminer111" Type="String" />
            <asp:Parameter Name="SignatureOfGuide" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="SignatureOfGuideCaptain" Type="String" />
            <asp:Parameter Name="Namess" Type="String" />
            <asp:Parameter Name="GuidingInformation" Type="String" />
            <asp:Parameter Name="WarrantNo1" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ValidUpto" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PMSCNHQRegistrationNo" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Pravesh" />
            <asp:Parameter DbType="Date" Name="PrathamSopan" />
            <asp:Parameter DbType="Date" Name="TritiyaSopan" />
            <asp:Parameter Name="TritiyaSopanCertificateNo" Type="Int32" />
            <asp:Parameter Name="TritiyaSopanDateofIssue" DbType="Date" />
            <asp:Parameter DbType="Date" Name="RajyaPuraskar" />
            <asp:Parameter DbType="Date" Name="RajyaPuraskarDateOfIsssue" />
            <asp:Parameter Name="NameofBadge" Type="String" />
            <asp:Parameter DbType="Date" Name="DateofPassing" />
            <asp:Parameter Name="NameOftheExaminer" Type="String" />
            <asp:Parameter Name="NameofBadge1" Type="String" />
            <asp:Parameter Name="DateofPassing1" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer1" Type="String" />
            <asp:Parameter Name="NameofBadge2" Type="String" />
            <asp:Parameter Name="DateofPassing2" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer2" Type="String" />
            <asp:Parameter Name="NameofBadge3" Type="String" />
            <asp:Parameter Name="DateofPassing3" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer3" Type="String" />
            <asp:Parameter Name="NameofBadge4" Type="String" />
            <asp:Parameter Name="DateofPassing4" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer4" Type="String" />
            <asp:Parameter Name="NameofBadge5" Type="String" />
            <asp:Parameter Name="DateofPassing5" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer5" Type="String" />
            <asp:Parameter Name="NameofBadge6" Type="String" />
            <asp:Parameter Name="DateofPassing6" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer6" Type="String" />
            <asp:Parameter Name="NameofBadge7" Type="String" />
            <asp:Parameter DbType="Date" Name="DateofPassing7" />
            <asp:Parameter Name="NameOftheExaminer7" Type="String" />
            <asp:Parameter Name="CampingPlace" Type="String" />
            <asp:Parameter DbType="Date" Name="From" />
            <asp:Parameter Name="To" DbType="Date" />
            <asp:Parameter Name="NameofTheLeaderOfCamp" Type="String" />
            <asp:Parameter Name="DateofPassing123" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer123" Type="String" />
            <asp:Parameter Name="NameofBadge8" Type="String" />
            <asp:Parameter Name="DateofPassing8" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer8" Type="String" />
            <asp:Parameter Name="NameofBadge9" Type="String" />
            <asp:Parameter Name="DateofPassing9" DbType="Date" />
            <asp:Parameter Name="NameOftheExaminer9" Type="String" />
            <asp:Parameter Name="NameofrojectUndertaken" Type="String" />
            <asp:Parameter Name="From1" Type="String" />
            <asp:Parameter Name="To1" Type="String" />
            <asp:Parameter Name="TotalHrs" Type="Int32" />
            <asp:Parameter Name="DateOfSubmissionOfReport" DbType="Date" />
            <asp:Parameter Name="From2" Type="String" />
            <asp:Parameter Name="To2" Type="String" />
            <asp:Parameter Name="From3" Type="String" />
            <asp:Parameter Name="To3" Type="String" />
            <asp:Parameter Name="DistanceinKM" Type="Int32" />
            <asp:Parameter Name="DateOfSubmissionOfReport1" DbType="Date" />
            <asp:Parameter Name="TypeofHike" Type="String" />
            <asp:Parameter Name="ProjectUndertaken" Type="String" />
            <asp:Parameter Name="DateofCommencement" DbType="Date" />
            <asp:Parameter Name="DateofCompletion" DbType="Date" />
            <asp:Parameter Name="NameofUnitRegisteredPMC" Type="String" />
            <asp:Parameter Name="NameofBadge234" Type="String" />
            <asp:Parameter Name="NameofGroup" Type="String" />
            <asp:Parameter Name="From4" Type="String" />
            <asp:Parameter Name="To4" Type="String" />
            <asp:Parameter Name="NoofChildren" Type="Int32" />
            <asp:Parameter Name="Place1" Type="String" />
            <asp:Parameter Name="Dates111" DbType="Date" />
            <asp:Parameter Name="NameOfTheExaminer111" Type="String" />
            <asp:Parameter Name="SignatureOfGuide" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Date" DbType="Date" />
            <asp:Parameter Name="SignatureOfGuideCaptain" Type="String" />
            <asp:Parameter Name="Namess" Type="String" />
            <asp:Parameter Name="GuidingInformation" Type="String" />
            <asp:Parameter Name="WarrantNo1" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ValidUpto" />
            <asp:Parameter Name="Sr_No" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
