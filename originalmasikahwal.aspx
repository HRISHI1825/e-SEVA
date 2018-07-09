﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalmasikahwal.aspx.cs" Inherits="originalmasikahwal" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
</head>
<body> <div class="jumbotron">
 <center><h1>New Entry</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>

    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
            <div class="form-group">
           <asp:Label ID="lblEmployeeName" runat="server" Text="Employee Name" CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtEmployeeName" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div  class="col-lg-5">
           <asp:TextBox ID="txtEmployeeName" runat="server" class="form-control"></asp:TextBox></div>
           </div>
        <div class="form-group">
              <asp:Label ID="lblSendingDate" runat="server" Text="Sending Date" CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtSendingDate" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
      <div  class="col-lg-5">
            
            <asp:TextBox ID="txtSendingDate" runat="server" class="form-control"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtSendingDate_CalendarExtender" 
                runat="server" BehaviorID="txtSendingDate_CalendarExtender" 
                TargetControlID="txtSendingDate">
            </ajaxToolkit:CalendarExtender>
              </div> </div>
        <div class="form-group">
             <asp:Label ID="lblReport" runat="server" Text="Report" CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="fureport" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div  class="col-lg-5">
               <asp:FileUpload ID="fureport" runat="server" cssClass="form-control"/> </div></div>
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
              Text="Submit" onclick="Button1_Click" />
      </div>
    </div>     <hr />
            <asp:SqlDataSource ID="SqldsMasikAhwal" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([EmployeeName], [SendingDate], [EmployeeReport], [Month], [MasikAhwalYear]) VALUES (@EmployeeName, @SendingDate, @EmployeeReport, @Month, @MasikAhwalYear)" 
                SelectCommand="SELECT [SrNo], [EmployeeName], [SendingDate], [EmployeeReport], [Month], [MasikAhwalYear] FROM [Office]" 
                
                
                
                UpdateCommand="UPDATE [Office] SET [EmployeeName] = @EmployeeName, [SendingDate] = @SendingDate, [EmployeeReport] = @EmployeeReport, [Month] = @Month, [MasikAhwalYear] = @MasikAhwalYear WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtEmployeeName" Name="EmployeeName" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtSendingDate" DbType="Date" 
                        Name="SendingDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="fureport" Name="EmployeeReport" 
                        PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="HiddenField1" Name="Month" 
                        PropertyName="Value" Type="String" />
                    <asp:ControlParameter ControlID="HiddenField2" Name="MasikAhwalYear" 
                        PropertyName="Value" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmployeeName" Type="String" />
                    <asp:Parameter DbType="Date" Name="SendingDate" />
                    <asp:Parameter Name="EmployeeReport" Type="String" />
                    <asp:Parameter Name="Month" Type="String" />
                    <asp:Parameter Name="MasikAhwalYear" Type="String" />
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:HiddenField ID="HiddenField2" runat="server" />
            <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div> </div> 
</fieldset>
    </form>
        </div>
</body>
</html>

