<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RajyaPuraskarScout2.aspx.cs" Inherits="RajyaPuraskarScout02" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <style type="text/css">
        .style1
        {}
    </style>
</head>
<body>
       <div class="jumbotron">
            <center>
         <h2>THE MAHARASHTRA STATE BHARAT SCOUTS AND GUIDES, MUMBAI-20
            <br />
            INFORMATION SHEET FOR GUIDE</h2><br /><h3>To be attached with Rajya Puraskar Registration Form</h3></center>
    </div>
     <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
            <asp:Label ID="lblDateCompletionof" runat="server" class="col-lg-3 control-label" 
                    Text="7. Date Completion of" ></asp:Label>
            <div class="col-lg-5">
             <div class="form-group">
            <asp:Label ID="lblPravesh" runat="server" class="col-lg-3 control-label" 
                     Text="1) Pravesh" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPravesh" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
                    <div class="col-lg-5">
            <asp:TextBox ID="txtPravesh" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtPravesh_CalendarExtender" runat="server" 
                            BehaviorID="txtPravesh_CalendarExtender" TargetControlID="txtPravesh">
                        </ajaxToolkit:CalendarExtender>
                  </div></div>
                   <div class="form-group">
            <asp:Label ID="lblPrathamSopan" runat="server" class="col-lg-3 control-label" 
                           Text="2) Pratham Sopan" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                    ControlToValidate="txtPrathamSopan" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
                    <div class="col-lg-5">
           <asp:TextBox ID="txtPrathamSopan" CssClass="form-control" runat="server" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtPrathamSopan_CalendarExtender" 
                            runat="server" BehaviorID="txtPrathamSopan_CalendarExtender" 
                            TargetControlID="txtPrathamSopan">
                        </ajaxToolkit:CalendarExtender>
                  </div></div>
                   <div class="form-group">
            <asp:Label ID="lblDwitiyaSopan" runat="server" class="col-lg-3 control-label" 
                           Text="3) Dwitiya Sopan" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                    ControlToValidate="txtDwitiyaSopan" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
                    <div class="col-lg-5">
           <asp:TextBox ID="txtDwitiyaSopan" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDwitiyaSopan_CalendarExtender" 
                            runat="server" BehaviorID="txtDwitiyaSopan_CalendarExtender" 
                            TargetControlID="txtDwitiyaSopan">
                        </ajaxToolkit:CalendarExtender>
                 </div></div>
                  <div class="form-group">
            <asp:Label ID="lblTritiyaSopan" runat="server" class="col-lg-3 control-label" 
                          Text="4) Tritiya Sopan" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                    ControlToValidate="txtTritiyaSopan" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
            <asp:TextBox ID="txtTritiyaSopan" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtTritiyaSopan_CalendarExtender" 
                           runat="server" BehaviorID="txtTritiyaSopan_CalendarExtender" 
                           TargetControlID="txtTritiyaSopan">
                       </ajaxToolkit:CalendarExtender>
            </div></div>
             <div class="form-group">
            <asp:Label ID="lblCertificateNo" runat="server" class="col-lg-3 control-label" 
                     Text="Certificate No." Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                    ControlToValidate="txtCertificateNo" ForeColor="Red" 
                     ToolTip="Enter District">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
            <asp:TextBox ID="txtCertificateNo" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtCertificateNo_CalendarExtender" 
                    runat="server" BehaviorID="txtCertificateNo_CalendarExtender" 
                    TargetControlID="txtCertificateNo">
                </ajaxToolkit:CalendarExtender>
         </div></div>
             <div class="form-group">
            <asp:Label ID="lblDateOfIssue" runat="server" class="col-lg-3 control-label" 
                     Text="Date Of Issue" Font-Bold="False"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                    ControlToValidate="txtDateOfIssue" ForeColor="Red" ToolTip="Enter District">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
            <asp:TextBox ID="txtDateOfIssue" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateOfIssue_CalendarExtender" 
                        runat="server" BehaviorID="txtDateOfIssue_CalendarExtender" 
                        TargetControlID="txtDateOfIssue">
                    </ajaxToolkit:CalendarExtender>
               </div></div>
           </div></div>
        <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
        <caption>
             <asp:Label ID="lblDetailsOfDwitiyaSopan" runat="server" 
                 CssClass="control-label" 
                 Text="11(10) Of APRO II Details Of Dwitiya Sopan Proficiency Badge" 
                 Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
        </caption>
        <tr>
            <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNameOfBadge" runat="server" CssClass="control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large" style="font-size: small"></asp:Label>
             </th>
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing" runat="server" CssClass="control-label" 
                    Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large" style="font-size: small"></asp:Label>
            </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer" runat="server" CssClass="control-label" 
                   Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                   Font-Size="Large" style="font-size: small"></asp:Label>
           </th></tr>
           <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing_CalendarExtender" 
                   TargetControlID="txtDateOfPassing">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
           </table>   
               
           <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
           <caption>
             <asp:Label ID="lblDetailsOfTritiyaSopan" runat="server" 
                   class="col-lg-3 control-label" 
                   Text="Details Of Tritiya Sopan Proficiency Badge 12(13) Of APRO II" 
                   Font-Bold="False" 
                   CssClass="style1"></asp:Label>
             </caption>
             <tr>
              <th style=" border-collapse:collapse" >
            <asp:Label ID="lblNameOfBadge1" runat="server" CssClass="control-label" 
                      Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large" style="font-size: small"></asp:Label>
              </th>
              <th style="border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing1" runat="server" CssClass="control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large" style="font-size: small"></asp:Label>
           </th>
           <th style=" border-collapse:collapse" >
            <asp:Label ID="lblNameOfExaminer1" runat="server" CssClass="control-label" 
                         Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                         Font-Size="Large" style="font-size: small"></asp:Label>
           </th>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge1" runat="server" Width="99%" Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing1" runat="server" Width="99%" Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing1_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing1_CalendarExtender" 
                   TargetControlID="txtDateOfPassing1">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer1" runat="server" Width="99%" Font-Names="Times New Roman" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
            <tr>
           <td style=" border-collapse:collapse">
           <asp:TextBox ID="txtNameOfBadge2" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" Width="99%" cssclass="form-control"></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse">
           <asp:TextBox ID="txtDateOfPassing2" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" Width="99%" cssclass="form-control"></asp:TextBox>
               
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing2_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing2_CalendarExtender" 
                   TargetControlID="txtDateOfPassing2">
               </ajaxToolkit:CalendarExtender>
               
           </td>
           <td style=" border-collapse:collapse">
           <asp:TextBox ID="txtNameOfExaminer2" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" Width="99%" cssclass="form-control"></asp:TextBox>
           </td>
           </tr>
           </table> 
            
             <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
            <tr>
             <td style=" border-collapse:collapse">
             <asp:Label ID="lblGroupA" runat="server" CssClass ="control-label" Text="Group A" 
                     Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" 
                     style="font-size: small"></asp:Label></td>
              </tr>
              <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge3" runat="server" CssClass="control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large" style="font-size: small"></asp:Label>
             </th>
              <th style=" border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing3" runat="server" CssClass="control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large" style="font-size: small"></asp:Label>
           </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfExaminer3" runat="server" CssClass="control-label" 
                    Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large" style="font-size: small"></asp:Label>
          </th></tr>
            <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge3" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing3" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing3_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing3_CalendarExtender" 
                   TargetControlID="txtDateOfPassing3">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer3" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge4" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing4" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing4_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing4_CalendarExtender" 
                   TargetControlID="txtDateOfPassing4">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer4" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
           </table> 

           <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
            <tr>
             <td style=" border-collapse:collapse">
             <asp:Label ID="lblGroupB" runat="server" CssClass ="control-label" Text="Group B" 
                     Font-Bold="False" Font-Names="Times New Roman"></asp:Label></td>
              </tr>
              <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge4" runat="server" CssClass="control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
             </th>
              <th style=" border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing4" runat="server" CssClass="control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
           </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfExaminer4" runat="server" CssClass="control-label" 
                    Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
          </th></tr>
            <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge5" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing5" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing5_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing5_CalendarExtender" 
                   TargetControlID="txtDateOfPassing5">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer5" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
          
           <asp:TextBox ID="txtNameOfBadge6" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
       </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtDateOfPassing6" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing6_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing6_CalendarExtender" 
                   TargetControlID="txtDateOfPassing6">
               </ajaxToolkit:CalendarExtender>
          </td>
           <td style=" border-collapse:collapse" >
           
           <asp:TextBox ID="txtNameOfExaminer6" runat="server" Font-Names="Arial Black" CssClass="form-control" Font-Size="Large"></asp:TextBox>
            </td>
           </tr>
           </table> 

    
          <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" >
            <caption>
             <asp:Label ID="lblDetailsOfRajyaPuraskar" runat="server" 
                    Text="Details Of Rajya Puraskar Proficiency Badge 13(2) Of APRO III" 
                    CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman"></asp:Label>
           </caption>
             <tr >
             <td  style=" border-collapse:collapse">
             <asp:Label ID="lblGroupA1" runat="server" CssClass="control-label" Text="Group A" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
         </tr>
            <tr>
            <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblNameOfBadge5" runat="server" Text="Name Of Badge" 
                    CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
                    </th> 
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing5" runat="server" Text="Date Of Passing" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>       
           </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer5" runat="server" Text="Name Of Examiner" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>                 
           </th>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfBadge7" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control" ></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse"> 
           <asp:TextBox ID="txtDateOfPassing7" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing7_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing7_CalendarExtender" 
                   TargetControlID="txtDateOfPassing7">
               </ajaxToolkit:CalendarExtender>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfExaminer7" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"  cssclass="form-control" ></asp:TextBox>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfBadge8" cssclass="form-control" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" ></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtDateOfPassing8" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control"></asp:TextBox>
               
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing8_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing8_CalendarExtender" 
                   TargetControlID="txtDateOfPassing8">
               </ajaxToolkit:CalendarExtender>
               
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfExaminer8" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"  cssclass="form-control" ></asp:TextBox>
           </td>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfBadge9" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control"></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtDateOfPassing9" cssclass="form-control" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateOfPassing9_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing9_CalendarExtender" 
                   TargetControlID="txtDateOfPassing9">
               </ajaxToolkit:CalendarExtender>
                </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfExaminer9" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"  cssclass="form-control"></asp:TextBox>
           </td>
           </tr>
           </table>
           
           <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" > 
            <caption>
             <asp:Label ID="lblPROFICIENCYBADGE" runat="server" class="col-lg-3 control-label" 
                    Text="13(3) APRO III PROFICIENCY BADGE" Font-Bold="False" 
                    Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            </caption>
            <tr>
             <th style="border-collapse:collapse">
             <asp:Label ID="lblGroupA2" runat="server" CssClass="control-label" Text="Group A" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
             </th> 
             </tr>
            <tr>
            <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblNameOfBadge6" runat="server" Text="Name Of Badge" 
                    CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
                    </th> 
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing6" runat="server" Text="Date Of Passing" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>       
           </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer6" runat="server" Text="Name Of Examiner" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>                 
           </th>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfBadge10" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control" ></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse"> 
           <asp:TextBox ID="txtDateOfPassing10" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing10_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing10_CalendarExtender" 
                   TargetControlID="txtDateOfPassing10">
               </ajaxToolkit:CalendarExtender>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfExaminer10" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"  cssclass="form-control" ></asp:TextBox>
           </td>
           </tr>
           </table> 

           <table width="100%" class="table table-striped table-hover " style=" border-collapse:collapse" > 
            <tr>
             <th style="border-collapse:collapse">
             <asp:Label ID="lblGroupB1" runat="server" CssClass="control-label" Text="Group B" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
             </th> 
             </tr>
            <tr>
            <th style=" border-collapse:collapse"> 
            <asp:Label ID="lblNameOfBadge7" runat="server" Text="Name Of Badge" 
                    CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
                    </th> 
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing7" runat="server" Text="Date Of Passing" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>       
           </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer7" runat="server" Text="Name Of Examiner" CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>                 
           </th>
           </tr>
           <tr>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfBadge11" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control" ></asp:TextBox>
           </td>
           <td style=" border-collapse:collapse"> 
           <asp:TextBox ID="txtDateOfPassing11" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large" cssclass="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfPassing11_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfPassing11_CalendarExtender" 
                   TargetControlID="txtDateOfPassing11">
               </ajaxToolkit:CalendarExtender>
           </td>
           <td style=" border-collapse:collapse" >
           <asp:TextBox ID="txtNameOfExaminer11" runat="server" Font-Names="Times New Roman" 
                   Font-Size="Large"  cssclass="form-control" ></asp:TextBox>
           </td>
           </tr>
        </table> 
            <hr />
            <div class="form-group">
            <asp:Label ID="lblDate" runat="server" Text="Date" 
                    Font-Bold="False" CssClass="col-lg-3 control-label" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                    ControlToValidate="txtDate" ForeColor="Red" ToolTip="Enter Date">*</asp:RequiredFieldValidator>
         <div class="col-lg-5">
             <asp:TextBox ID="txtDate" runat="server" CssClass ="form-control" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                 BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
             </ajaxToolkit:CalendarExtender>
               </div></div>
            <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:HiddenField ID="HiddenField1" runat="server" />
      </div>
    </div>
                  <asp:SqlDataSource ID="SqldsRajyaPuraskar" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           DeleteCommand="DELETE FROM [RajyaPuraskarScout] WHERE [SrNo] = @SrNo" 
           InsertCommand="INSERT INTO [RajyaPuraskarScout] ([DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [NameOfBadge10], [DateOfPassing10], [NameOfExaminer10], [NameOfBadge11], [DateOfPassing11], [NameOfExaminer11], [Date2], [Status], [NameOfTheScout]) VALUES (@DateOfCompletionOfPravesh, @DateOfCompletionOfPrathamSopan, @DateOfCompletionOfDwitiyaSopan, @DateOfCompletionOfTritiyaSopan, @CertificateNo1, @DateOfIssue, @NameOfBadge, @DateOfPassing, @NameOfExaminer, @NameOfBadge1, @DateOfPassing1, @NameOfExaminer1, @NameOfBadge2, @DateOfPassing2, @NameOfExaminer2, @NameOfBadge3, @DateOfPassing3, @NameOfExaminer3, @NameOfBadge4, @DateOfPassing4, @NameOfExaminer4, @NameOfBadge5, @DateOfPassing5, @NameOfExaminer5, @NameOfBadge6, @DateOfPassing6, @NameOfExaminer6, @NameOfBadge7, @DateOfPassing7, @NameOfExaminer7, @NameOfBadge8, @DateOfPassing8, @NameOfExaminer8, @NameOfBadge9, @DateOfPassing9, @NameOfExaminer9, @NameOfBadge10, @DateOfPassing10, @NameOfExaminer10, @NameOfBadge11, @DateOfPassing11, @NameOfExaminer11, @Date2, @Status, @NameOfTheScout)" 
           SelectCommand="SELECT [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [NameOfBadge10], [DateOfPassing10], [NameOfExaminer10], [NameOfBadge11], [DateOfPassing11], [NameOfExaminer11], [Date2], [Status], [SrNo], [NameOfTheScout] FROM [RajyaPuraskarScout]" 
           
                UpdateCommand="UPDATE [RajyaPuraskarScout] SET [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfCompletionOfPrathamSopan] = @DateOfCompletionOfPrathamSopan, [DateOfCompletionOfDwitiyaSopan] = @DateOfCompletionOfDwitiyaSopan, [DateOfCompletionOfTritiyaSopan] = @DateOfCompletionOfTritiyaSopan, [CertificateNo1] = @CertificateNo1, [DateOfIssue] = @DateOfIssue, [NameOfBadge] = @NameOfBadge, [DateOfPassing] = @DateOfPassing, [NameOfExaminer] = @NameOfExaminer, [NameOfBadge1] = @NameOfBadge1, [DateOfPassing1] = @DateOfPassing1, [NameOfExaminer1] = @NameOfExaminer1, [NameOfBadge2] = @NameOfBadge2, [DateOfPassing2] = @DateOfPassing2, [NameOfExaminer2] = @NameOfExaminer2, [NameOfBadge3] = @NameOfBadge3, [DateOfPassing3] = @DateOfPassing3, [NameOfExaminer3] = @NameOfExaminer3, [NameOfBadge4] = @NameOfBadge4, [DateOfPassing4] = @DateOfPassing4, [NameOfExaminer4] = @NameOfExaminer4, [NameOfBadge5] = @NameOfBadge5, [DateOfPassing5] = @DateOfPassing5, [NameOfExaminer5] = @NameOfExaminer5, [NameOfBadge6] = @NameOfBadge6, [DateOfPassing6] = @DateOfPassing6, [NameOfExaminer6] = @NameOfExaminer6, [NameOfBadge7] = @NameOfBadge7, [DateOfPassing7] = @DateOfPassing7, [NameOfExaminer7] = @NameOfExaminer7, [NameOfBadge8] = @NameOfBadge8, [DateOfPassing8] = @DateOfPassing8, [NameOfExaminer8] = @NameOfExaminer8, [NameOfBadge9] = @NameOfBadge9, [DateOfPassing9] = @DateOfPassing9, [NameOfExaminer9] = @NameOfExaminer9, [NameOfBadge10] = @NameOfBadge10, [DateOfPassing10] = @DateOfPassing10, [NameOfExaminer10] = @NameOfExaminer10, [NameOfBadge11] = @NameOfBadge11, [DateOfPassing11] = @DateOfPassing11, [NameOfExaminer11] = @NameOfExaminer11, [Date2] = @Date2, [Status] = @Status WHERE [NameOfTheScout] = @NameOfTheScout ">
                      <DeleteParameters>
                          <asp:Parameter Name="SrNo" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="DateOfCompletionOfPravesh" DbType="Date" />
                          <asp:Parameter Name="DateOfCompletionOfPrathamSopan" DbType="Date" />
                          <asp:Parameter Name="DateOfCompletionOfDwitiyaSopan" DbType="Date" />
                          <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
                          <asp:Parameter Name="CertificateNo1" Type="String" />
                          <asp:Parameter Name="DateOfIssue" DbType="Date" />
                          <asp:Parameter Name="NameOfBadge" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing" />
                          <asp:Parameter Name="NameOfExaminer" Type="String" />
                          <asp:Parameter Name="NameOfBadge1" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing1" />
                          <asp:Parameter Name="NameOfExaminer1" Type="String" />
                          <asp:Parameter Name="NameOfBadge2" Type="String" />
                          <asp:Parameter Name="DateOfPassing2" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer2" Type="String" />
                          <asp:Parameter Name="NameOfBadge3" Type="String" />
                          <asp:Parameter Name="DateOfPassing3" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer3" Type="String" />
                          <asp:Parameter Name="NameOfBadge4" Type="String" />
                          <asp:Parameter Name="DateOfPassing4" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer4" Type="String" />
                          <asp:Parameter Name="NameOfBadge5" Type="String" />
                          <asp:Parameter Name="DateOfPassing5" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer5" Type="String" />
                          <asp:Parameter Name="NameOfBadge6" Type="String" />
                          <asp:Parameter Name="DateOfPassing6" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer6" Type="String" />
                          <asp:Parameter Name="NameOfBadge7" Type="String" />
                          <asp:Parameter Name="DateOfPassing7" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer7" Type="String" />
                          <asp:Parameter Name="NameOfBadge8" Type="String" />
                          <asp:Parameter Name="DateOfPassing8" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer8" Type="String" />
                          <asp:Parameter Name="NameOfBadge9" Type="String" />
                          <asp:Parameter Name="DateOfPassing9" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer9" Type="String" />
                          <asp:Parameter Name="NameOfBadge10" Type="String" />
                          <asp:Parameter Name="DateOfPassing10" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer10" Type="String" />
                          <asp:Parameter Name="NameOfBadge11" Type="String" />
                          <asp:Parameter Name="DateOfPassing11" DbType="Date" />
                          <asp:Parameter Name="NameOfExaminer11" Type="String" />
                          <asp:Parameter Name="Date2" DbType="Date" />
                          <asp:Parameter Name="Status" Type="String" />
                          <asp:Parameter Name="NameOfTheScout" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:ControlParameter ControlID="txtPravesh" DbType="Date" 
                              Name="DateOfCompletionOfPravesh" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtPrathamSopan" DbType="Date" 
                              Name="DateOfCompletionOfPrathamSopan" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtDwitiyaSopan" DbType="Date" 
                              Name="DateOfCompletionOfDwitiyaSopan" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtTritiyaSopan" DbType="Date" 
                              Name="DateOfCompletionOfTritiyaSopan" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtCertificateNo" Name="CertificateNo1" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfIssue" DbType="Date" 
                              Name="DateOfIssue" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfBadge" Name="NameOfBadge" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing" DbType="Date" 
                              Name="DateOfPassing" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer" Name="NameOfExaminer" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge1" Name="NameOfBadge1" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing1" DbType="Date" 
                              Name="DateOfPassing1" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer1" Name="NameOfExaminer1" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge2" Name="NameOfBadge2" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing2" DbType="Date" 
                              Name="DateOfPassing2" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer2" Name="NameOfExaminer2" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge3" Name="NameOfBadge3" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing3" DbType="Date" 
                              Name="DateOfPassing3" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer3" Name="NameOfExaminer3" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge4" Name="NameOfBadge4" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing4" DbType="Date" 
                              Name="DateOfPassing4" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer4" Name="NameOfExaminer4" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge5" Name="NameOfBadge5" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing5" DbType="Date" 
                              Name="DateOfPassing5" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer5" Name="NameOfExaminer5" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge6" Name="NameOfBadge6" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing6" DbType="Date" 
                              Name="DateOfPassing6" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer6" Name="NameOfExaminer6" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge7" Name="NameOfBadge7" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing7" DbType="Date" 
                              Name="DateOfPassing7" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer7" Name="NameOfExaminer7" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge8" Name="NameOfBadge8" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing8" DbType="Date" 
                              Name="DateOfPassing8" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer8" Name="NameOfExaminer8" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge9" Name="NameOfBadge9" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing9" DbType="Date" 
                              Name="DateOfPassing9" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer9" Name="NameOfExaminer9" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge10" Name="NameOfBadge10" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing10" DbType="Date" 
                              Name="DateOfPassing10" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer10" Name="NameOfExaminer10" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge11" Name="NameOfBadge11" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing11" DbType="Date" 
                              Name="DateOfPassing11" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer11" Name="NameOfExaminer11" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date2" 
                              PropertyName="Text" />
                          <asp:ControlParameter ControlID="HiddenField1" Name="Status" 
                              PropertyName="Value" Type="String" />
                          <asp:QueryStringParameter Name="NameOfTheScout" 
                              QueryStringField="NameOfTheScout" Type="String" />
                      </UpdateParameters>
       </asp:SqlDataSource>
                 
       <asp:ScriptManager ID="ScriptManager2" runat="server">
       </asp:ScriptManager>
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
             Font-Size="Large" ForeColor="#0099FF" 
             NavigateUrl="~/RajyaPuraskarScout1.aspx">Back</asp:HyperLink></center>
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
