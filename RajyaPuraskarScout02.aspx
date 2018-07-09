<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RajyaPuraskarScout02.aspx.cs" Inherits="RajyaPuraskarScout02" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
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
            <asp:Label ID="lblNameOfTheDistrict" runat="server" class="col-lg-3 control-label" 
                    Text="1. Name Of The District" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
            
            <div class="col-lg-5">

            <asp:TextBox ID="txtNameOfTheDistrict" CssClass="form-control" runat="server" 
                    Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
            </div></div>
            <div class="form-group">
            <asp:Label ID="lblFullNameinCapitalLetters" runat="server" 
                    class="col-lg-3 control-label" Text="2. Full Name in Capital Letters" 
                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           
           <div class="col-lg-5">

            <asp:TextBox ID="txtFullNameinCapitalLetters" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
           </div></div>
           <div class="form-group">
            <asp:Label ID="lblDateOfBirth" runat="server" class="col-lg-3 control-label" 
                   Text="3. Date Of Birth" Font-Bold="False" Font-Names="Times New Roman" 
                   Font-Size="Large"></asp:Label>
            <div class="col-lg-5">
             <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" 
                    runat="server" BehaviorID="txtDateOfBirth_CalendarExtender" 
                    TargetControlID="txtDateOfBirth">
                </ajaxToolkit:CalendarExtender>
         </div></div>
         <div class="form-group">
            <asp:Label ID="lblNameOfUnit" runat="server" class="col-lg-3 control-label" 
                 Text="4. Name Of Unit" Font-Bold="False" Font-Names="Times New Roman" 
                 Font-Size="Large"></asp:Label>
           <div class="col-lg-5">
            <asp:TextBox ID="txtNameOfUnit" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
          </div></div>
          <div class="form-group">
            <asp:Label ID="lblAddressOfUnit" runat="server" class="col-lg-3 control-label" 
                  Text="5. Address Of Unit" Font-Bold="False" Font-Names="Times New Roman" 
                  Font-Size="Large"></asp:Label>
            <div class="col-lg-5">
            <asp:TextBox ID="txtAddressOfUnit" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
        </div></div>
        <div class="form-group">
            <asp:Label ID="lblDateOfInvestiture" runat="server" 
                class="col-lg-3 control-label" Text="6. Date Of Investiture" Font-Bold="False" 
                Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
           <div class="col-lg-5">
          
             <asp:TextBox ID="txtDateOfInvestiture" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDateOfInvestiture_CalendarExtender" 
                   runat="server" BehaviorID="txtDateOfInvestiture_CalendarExtender" 
                   TargetControlID="txtDateOfInvestiture">
               </ajaxToolkit:CalendarExtender>
            </div></div>
            <div class="form-group">
            <asp:Label ID="lblDateCompletionof" runat="server" class="col-lg-3 control-label" 
                    Text="7. Date Completion of" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
            <div class="col-lg-5">
             <div class="form-group">
            <asp:Label ID="lblPravesh" runat="server" class="col-lg-3 control-label" 
                     Text="1) Pravesh" Font-Bold="False" Font-Names="Times New Roman" 
                     Font-Size="Large"></asp:Label>
                    <div class="col-lg-5">
            <asp:TextBox ID="txtPravesh" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtPravesh_CalendarExtender" runat="server" 
                            BehaviorID="txtPravesh_CalendarExtender" TargetControlID="txtPravesh">
                        </ajaxToolkit:CalendarExtender>
                  </div></div>
                   <div class="form-group">
            <asp:Label ID="lblPrathamSopan" runat="server" class="col-lg-3 control-label" 
                           Text="2) Pratham Sopan" Font-Bold="False" Font-Names="Times New Roman" 
                           Font-Size="Large"></asp:Label>
                    <div class="col-lg-5">
           <asp:TextBox ID="txtPrathamSopan" CssClass="form-control" runat="server" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtPrathamSopan_CalendarExtender" 
                            runat="server" BehaviorID="txtPrathamSopan_CalendarExtender" 
                            TargetControlID="txtPrathamSopan">
                        </ajaxToolkit:CalendarExtender>
                  </div></div>
                   <div class="form-group">
            <asp:Label ID="lblDwitiyaSopan" runat="server" class="col-lg-3 control-label" 
                           Text="3) Dwitiya Sopan" Font-Bold="False" Font-Names="Times New Roman" 
                           Font-Size="Large"></asp:Label>
                    <div class="col-lg-5">
           <asp:TextBox ID="txtDwitiyaSopan" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDwitiyaSopan_CalendarExtender" 
                            runat="server" BehaviorID="txtDwitiyaSopan_CalendarExtender" 
                            TargetControlID="txtDwitiyaSopan">
                        </ajaxToolkit:CalendarExtender>
                 </div></div>
                  <div class="form-group">
            <asp:Label ID="lblTritiyaSopan" runat="server" class="col-lg-3 control-label" 
                          Text="4) Tritiya Sopan" Font-Bold="False" Font-Names="Times New Roman" 
                          Font-Size="Large"></asp:Label>
                   <div class="col-lg-5">
            <asp:TextBox ID="txtTritiyaSopan" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtTritiyaSopan_CalendarExtender" 
                           runat="server" BehaviorID="txtTritiyaSopan_CalendarExtender" 
                           TargetControlID="txtTritiyaSopan">
                       </ajaxToolkit:CalendarExtender>
            </div></div>
             <div class="form-group">
            <asp:Label ID="lblCertificateNo" runat="server" class="col-lg-3 control-label" 
                     Text="Certificate No." Font-Bold="False" Font-Names="Times New Roman" 
                     Font-Size="Large"></asp:Label>
            <div class="col-lg-5">
            <asp:TextBox ID="txtCertificateNo" runat="server" CssClass="form-control" Font-Names="Arial Black" Font-Size="Large"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtCertificateNo_CalendarExtender" 
                    runat="server" BehaviorID="txtCertificateNo_CalendarExtender" 
                    TargetControlID="txtCertificateNo">
                </ajaxToolkit:CalendarExtender>
         </div></div>
             <div class="form-group">
            <asp:Label ID="lblDateOfIssue" runat="server" class="col-lg-3 control-label" 
                     Text="Date Of Issue" Font-Bold="False" Font-Names="Times New Roman" 
                     Font-Size="Large"></asp:Label>
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
                 class="col-lg-3 control-label" 
                 Text="11(10) Of APRO II Details Of Dwitiya Sopan Proficiency Badge" 
                 Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
        </caption>
        <tr>
            <th style=" border-collapse:collapse" >
                <asp:Label ID="lblNameOfBadge" runat="server" class="col-lg-3 control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
             </th>
            <th style=" border-collapse:collapse" >
            <asp:Label ID="lblDateOfPassing" runat="server" class="col-lg-3 control-label" 
                    Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
            </th>
           <th style=" border-collapse:collapse" >
           <asp:Label ID="lblNameOfExaminer" runat="server" class="col-lg-3 control-label" 
                   Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                   Font-Size="Large"></asp:Label>
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
                   Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
             </caption>
             <tr>
              <th style=" border-collapse:collapse" >
            <asp:Label ID="lblNameOfBadge1" runat="server" class="col-lg-3 control-label" 
                      Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large"></asp:Label>
              </th>
              <th style="border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing1" runat="server" class="col-lg-3 control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large"></asp:Label>
           </th>
           <th style=" border-collapse:collapse" >
            <asp:Label ID="lblNameOfExaminer1" runat="server" class="col-lg-3 control-label" 
                         Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                         Font-Size="Large"></asp:Label>
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
             <asp:Label ID="lblGroupA" runat="server" CssClass ="control-label" Text="Group A" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
              </tr>
              <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge3" runat="server" class="col-lg-3 control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
             </th>
              <th style=" border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing3" runat="server" class="col-lg-3 control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large"></asp:Label>
           </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfExaminer3" runat="server" class="col-lg-3 control-label" 
                    Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
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
             <asp:Label ID="lblGroupB" runat="server" CssClass ="control-label" Text="Group B" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
              </tr>
              <tr>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfBadge4" runat="server" class="col-lg-3 control-label" 
                    Text="Name Of Badge" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
             </th>
              <th style=" border-collapse:collapse">
              <asp:Label ID="lblDateOfPassing4" runat="server" class="col-lg-3 control-label" 
                      Text="Date Of Passing" Font-Bold="False" Font-Names="Times New Roman" 
                      Font-Size="Large"></asp:Label>
           </th>
            <th style=" border-collapse:collapse">
            <asp:Label ID="lblNameOfExaminer4" runat="server" class="col-lg-3 control-label" 
                    Text="Name Of Examiner" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
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
                    CssClass="control-label" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
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
            <tr><td></td><td></td><td></td></tr>
                 <tr><td></td><td></td><td></td></tr>
                <tr>
                    <td></td><td></td><td>
      <asp:Label ID="lblSignatureOfScout" runat="server" Cssclass="control-label" Text="Signature Of Scout" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:FileUpload ID="fuSignatureOfScout" runat="server" cssclass="form-control"/></td>
                </tr>
        </table> 
            <hr />
            <div class="form-group">
            <center>
            <asp:Label ID="lblScouterInformation" runat="server" class="col-lg-3 control-label" 
                    Text="Scouter Information" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="Large"></asp:Label>
              </center></div>
                    
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
                <div class="form-group">
            <asp:Label ID="lblNameOfScouter" runat="server" Text="Name Of Scouter" 
                    Font-Bold="False" CssClass="col-lg-3 control-label" 
                   Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                    ControlToValidate="txtNameOfScouter" ForeColor="Red" 
                    ToolTip="Enter Name of Scouter">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">
             <asp:TextBox ID="txtNameOfScouter" runat="server" Font-Names="Times New Roman" 
                  CssClass ="form-control" Font-Size="Large"></asp:TextBox>
          </div></div>
                 <div class="form-group">
                     <asp:Label ID="lblSignatureOfScouter" runat="server" 
                         Cssclass="col-lg-3 control-label" Text="Signature Of Scouter" Font-Bold="False" 
                         Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                   ControlToValidate="fuSignatureOfScouter" ForeColor="Red" 
                   ToolTip="Enter Signature Of Scouter">*</asp:RequiredFieldValidator>
                     <div class="col-lg-5">
                         <asp:FileUpload ID="fuSignatureOfScouter" runat="server" 
                             cssclass="form-control"/>
                     </div></div>
           <div class="form-group">
            <asp:Label ID="lblScouterQualification" runat="server" Text="Scouter Qualification" 
                    Font-Bold="False" CssClass="col-lg-3 control-label" 
                   Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                    ControlToValidate="txtScouterQualification" ForeColor="Red" 
                    ToolTip="Enter Scouter Qualification">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtScouterQualification"  CssClass ="form-control" 
                   runat="server" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
           </div></div>
          <div class="form-group">
            <asp:Label ID="lblWarrantNo" CssClass="col-lg-3 control-label" runat="server" Text="Warrant No." 
                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                    ControlToValidate="txtWarrantNo" ForeColor="Red" ToolTip="Enter Warrent No.">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtWarrantNo" runat="server" CssClass ="form-control" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
        </div></div>
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
      <hr />
                  <asp:SqlDataSource ID="SqldsRajyaPuraskar" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           DeleteCommand="DELETE FROM [RajyaPuraskarScout] WHERE [SrNo] = @SrNo" 
           InsertCommand="INSERT INTO [RajyaPuraskarScout] ([NameOfTheScout], [NameOfTheDistrict], [FullName], [DateOfBirth1], [NameOfUnit1], [AddressOfUnit1], [DateOfInvestiture], [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [NameOfBadge10], [DateOfPassing10], [NameOfExaminer10], [NameOfBadge11], [DateOfPassing11], [NameOfExaminer11], [SignatureOfScout], [Date2], [NameOfScouter], [SignatureOfScouter], [ScouterQualification], [WarrantNo1]) VALUES (@NameOfTheScout, @NameOfTheDistrict, @FullName, @DateOfBirth1, @NameOfUnit1, @AddressOfUnit1, @DateOfInvestiture, @DateOfCompletionOfPravesh, @DateOfCompletionOfPrathamSopan, @DateOfCompletionOfDwitiyaSopan, @DateOfCompletionOfTritiyaSopan, @CertificateNo1, @DateOfIssue, @NameOfBadge, @DateOfPassing, @NameOfExaminer, @NameOfBadge1, @DateOfPassing1, @NameOfExaminer1, @NameOfBadge2, @DateOfPassing2, @NameOfExaminer2, @NameOfBadge3, @DateOfPassing3, @NameOfExaminer3, @NameOfBadge4, @DateOfPassing4, @NameOfExaminer4, @NameOfBadge5, @DateOfPassing5, @NameOfExaminer5, @NameOfBadge6, @DateOfPassing6, @NameOfExaminer6, @NameOfBadge7, @DateOfPassing7, @NameOfExaminer7, @NameOfBadge8, @DateOfPassing8, @NameOfExaminer8, @NameOfBadge9, @DateOfPassing9, @NameOfExaminer9, @NameOfBadge10, @DateOfPassing10, @NameOfExaminer10, @NameOfBadge11, @DateOfPassing11, @NameOfExaminer11, @SignatureOfScout, @Date2, @NameOfScouter, @SignatureOfScouter, @ScouterQualification, @WarrantNo1)" 
           SelectCommand="SELECT [SrNo], [NameOfTheScout], [NameOfTheDistrict], [FullName], [DateOfBirth1], [NameOfUnit1], [AddressOfUnit1], [DateOfInvestiture], [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [NameOfBadge10], [DateOfPassing10], [NameOfExaminer10], [NameOfBadge11], [DateOfPassing11], [NameOfExaminer11], [SignatureOfScout], [Date2], [NameOfScouter], [SignatureOfScouter], [ScouterQualification], [WarrantNo1] FROM [RajyaPuraskarScout]" 
           UpdateCommand="UPDATE [RajyaPuraskarScout] SET [NameOfTheDistrict] = @NameOfTheDistrict, [FullName] = @FullName, [DateOfBirth1] = @DateOfBirth1, [NameOfUnit1] = @NameOfUnit1, [AddressOfUnit1] = @AddressOfUnit1, [DateOfInvestiture] = @DateOfInvestiture, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfCompletionOfPrathamSopan] = @DateOfCompletionOfPrathamSopan, [DateOfCompletionOfDwitiyaSopan] = @DateOfCompletionOfDwitiyaSopan, [DateOfCompletionOfTritiyaSopan] = @DateOfCompletionOfTritiyaSopan, [CertificateNo1] = @CertificateNo1, [DateOfIssue] = @DateOfIssue, [NameOfBadge] = @NameOfBadge, [DateOfPassing] = @DateOfPassing, [NameOfExaminer] = @NameOfExaminer, [NameOfBadge1] = @NameOfBadge1, [DateOfPassing1] = @DateOfPassing1, [NameOfExaminer1] = @NameOfExaminer1, [NameOfBadge2] = @NameOfBadge2, [DateOfPassing2] = @DateOfPassing2, [NameOfExaminer2] = @NameOfExaminer2, [NameOfBadge3] = @NameOfBadge3, [DateOfPassing3] = @DateOfPassing3, [NameOfExaminer3] = @NameOfExaminer3, [NameOfBadge4] = @NameOfBadge4, [DateOfPassing4] = @DateOfPassing4, [NameOfExaminer4] = @NameOfExaminer4, [NameOfBadge5] = @NameOfBadge5, [DateOfPassing5] = @DateOfPassing5, [NameOfExaminer5] = @NameOfExaminer5, [NameOfBadge6] = @NameOfBadge6, [DateOfPassing6] = @DateOfPassing6, [NameOfExaminer6] = @NameOfExaminer6, [NameOfBadge7] = @NameOfBadge7, [DateOfPassing7] = @DateOfPassing7, [NameOfExaminer7] = @NameOfExaminer7, [NameOfBadge8] = @NameOfBadge8, [DateOfPassing8] = @DateOfPassing8, [NameOfExaminer8] = @NameOfExaminer8, [NameOfBadge9] = @NameOfBadge9, [DateOfPassing9] = @DateOfPassing9, [NameOfExaminer9] = @NameOfExaminer9, [NameOfBadge10] = @NameOfBadge10, [DateOfPassing10] = @DateOfPassing10, [NameOfExaminer10] = @NameOfExaminer10, [NameOfBadge11] = @NameOfBadge11, [DateOfPassing11] = @DateOfPassing11, [NameOfExaminer11] = @NameOfExaminer11, [SignatureOfScout] = @SignatureOfScout, [Date2] = @Date2, [NameOfScouter] = @NameOfScouter, [SignatureOfScouter] = @SignatureOfScouter, [ScouterQualification] = @ScouterQualification, [WarrantNo1] = @WarrantNo1 WHERE [NameOfTheScout] = @NameOfTheScout">
                      <DeleteParameters>
                          <asp:Parameter Name="SrNo" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="NameOfTheScout" Type="String" />
                          <asp:Parameter Name="NameOfTheDistrict" Type="String" />
                          <asp:Parameter Name="FullName" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfBirth1" />
                          <asp:Parameter Name="NameOfUnit1" Type="String" />
                          <asp:Parameter Name="AddressOfUnit1" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
                          <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
                          <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamSopan" />
                          <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaSopan" />
                          <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
                          <asp:Parameter Name="CertificateNo1" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfIssue" />
                          <asp:Parameter Name="NameOfBadge" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing" />
                          <asp:Parameter Name="NameOfExaminer" Type="String" />
                          <asp:Parameter Name="NameOfBadge1" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing1" />
                          <asp:Parameter Name="NameOfExaminer1" Type="String" />
                          <asp:Parameter Name="NameOfBadge2" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing2" />
                          <asp:Parameter Name="NameOfExaminer2" Type="String" />
                          <asp:Parameter Name="NameOfBadge3" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing3" />
                          <asp:Parameter Name="NameOfExaminer3" Type="String" />
                          <asp:Parameter Name="NameOfBadge4" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing4" />
                          <asp:Parameter Name="NameOfExaminer4" Type="String" />
                          <asp:Parameter Name="NameOfBadge5" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing5" />
                          <asp:Parameter Name="NameOfExaminer5" Type="String" />
                          <asp:Parameter Name="NameOfBadge6" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing6" />
                          <asp:Parameter Name="NameOfExaminer6" Type="String" />
                          <asp:Parameter Name="NameOfBadge7" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing7" />
                          <asp:Parameter Name="NameOfExaminer7" Type="String" />
                          <asp:Parameter Name="NameOfBadge8" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing8" />
                          <asp:Parameter Name="NameOfExaminer8" Type="String" />
                          <asp:Parameter Name="NameOfBadge9" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing9" />
                          <asp:Parameter Name="NameOfExaminer9" Type="String" />
                          <asp:Parameter Name="NameOfBadge10" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing10" />
                          <asp:Parameter Name="NameOfExaminer10" Type="String" />
                          <asp:Parameter Name="NameOfBadge11" Type="String" />
                          <asp:Parameter DbType="Date" Name="DateOfPassing11" />
                          <asp:Parameter Name="NameOfExaminer11" Type="String" />
                          <asp:Parameter Name="SignatureOfScout" Type="String" />
                          <asp:Parameter DbType="Date" Name="Date2" />
                          <asp:Parameter Name="NameOfScouter" Type="String" />
                          <asp:Parameter Name="SignatureOfScouter" Type="String" />
                          <asp:Parameter Name="ScouterQualification" Type="String" />
                          <asp:Parameter Name="WarrantNo1" Type="Int32" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:SessionParameter Name="NameOfTheScout" SessionField="NameOfScout" 
                              Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfTheDistrict" Name="NameOfTheDistrict" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtFullNameinCapitalLetters" Name="FullName" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfBirth" DbType="Date" 
                              Name="DateOfBirth1" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfUnit" Name="NameOfUnit1" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtAddressOfUnit" Name="AddressOfUnit1" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfInvestiture" DbType="Date" 
                              Name="DateOfInvestiture" PropertyName="Text" />
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
                          <asp:ControlParameter ControlID="txtDateOfPassing10" Name="NameOfExaminer10" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtNameOfBadge11" Name="NameOfBadge11" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtDateOfPassing11" DbType="Date" 
                              Name="DateOfPassing11" PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfExaminer11" Name="NameOfExaminer11" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="fuSignatureOfScout" Name="SignatureOfScout" 
                              PropertyName="FileName" Type="String" />
                          <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date2" 
                              PropertyName="Text" />
                          <asp:ControlParameter ControlID="txtNameOfScouter" Name="NameOfScouter" 
                              PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="fuSignatureOfScouter" 
                              Name="SignatureOfScouter" PropertyName="FileName" Type="String" />
                          <asp:ControlParameter ControlID="txtScouterQualification" 
                              Name="ScouterQualification" PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="txtWarrantNo" Name="WarrantNo1" 
                              PropertyName="Text" Type="Int32" />
                      </UpdateParameters>
       </asp:SqlDataSource>
                  <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div> </div>   
        
       <asp:ScriptManager ID="ScriptManager2" runat="server">
       </asp:ScriptManager>
  </fieldset>
  </form>
  </div> 
</body>
</html>
