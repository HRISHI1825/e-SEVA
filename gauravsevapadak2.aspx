<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gauravsevapadak2.aspx.cs" Inherits="originalgauravsevapadak" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="themes2/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes2/carbon.js" type="text/javascript"></script>
    <script src="themes2/custom.js" type="text/javascript"></script>
    <link href="themes2/custom.min.css" rel="stylesheet" type="text/css" />
    <script src="themes2/gsd.js" type="text/javascript"></script>
    <script src="themes2/ga.js" type="text/javascript"></script>
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
    
</head>
<body>
    <div class="jumbotron">
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
        <asp:Label ID="lblName" runat="server" Text="Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
        <div class="form-group">
        <asp:Label ID="lblSchoolName" runat="server" Text="School Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtSchoolName" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
                 <div class="form-group">
               <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="col-lg-3 control-label"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                      ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class="col-lg-5">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox></div></div>
        <div class="form-group">
                  <asp:Label ID="lblAward" runat="server" Text="Award" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                      ControlToValidate="txtAward" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
         <div class="col-lg-5">
             <asp:TextBox ID="txtAward" runat="server" CssClass="form-control"></asp:TextBox></div></div>
        <div class="form-group">
           <asp:Label ID="lblMeetingDate" runat="server" Text="Meeting Date" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                      ControlToValidate="txtMeetingDate" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
                 
             <div  class="col-lg-5">
              <asp:TextBox ID="txtMeetingDate" runat="server" CssClass="form-control"></asp:TextBox>    
                 <ajaxToolkit:CalendarExtender ID="txtMeetingDate_CalendarExtender" 
                     runat="server" BehaviorID="txtMeetingDate_CalendarExtender" 
                     TargetControlID="txtMeetingDate">
                 </ajaxToolkit:CalendarExtender>
                </div></div>
        <div class="form-group">
             <asp:Label ID="lblApplicationDate" runat="server" Text="Application Date" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                      ControlToValidate="txtApplicationDate" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtApplicationDate" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <ajaxToolkit:CalendarExtender ID="txtApplicationDate_CalendarExtender" 
                    runat="server" BehaviorID="txtApplicationDate_CalendarExtender" 
                    TargetControlID="txtApplicationDate">
                </ajaxToolkit:CalendarExtender>
                 </div> </div>
        <div class="form-group">
             <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                      ControlToValidate="fuletter" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
           <asp:FileUpload ID="fuletter" runat="server"  CssClass="form-control" /></div> </div>
           <div class="form-group">
             <asp:Label ID="lblForm" runat="server" Text="Form" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="fuForm" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
           <asp:FileUpload ID="fuForm" runat="server"  CssClass="form-control" /></div> </div>
       <div class="form-group">
             <asp:Label ID="lblCetificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ControlToValidate="fuCertificate" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
           <asp:FileUpload ID="fuCertificate" runat="server"  CssClass="form-control" /></div> </div>
       <hr />
       <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
        <asp:SqlDataSource ID="SqldsGaurav" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [GauravSevaPadak] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [GauravSevaPadak] ([Name], [SchoolName], [Address], [Award], [MeetingDate], [ApplicationDate], [Letter], [Form], [Certificate]) VALUES (@Name, @SchoolName, @Address, @Award, @MeetingDate, @ApplicationDate, @Letter, @Form, @Certificate)" 
            SelectCommand="SELECT * FROM [GauravSevaPadak]" 
            
            
            UpdateCommand="UPDATE [GauravSevaPadak] SET [Name] = @Name, [SchoolName] = @SchoolName, [Address] = @Address, [Award] = @Award, [MeetingDate] = @MeetingDate, [ApplicationDate] = @ApplicationDate, [Letter] = @Letter, [Form] = @Form, [Certificate] = @Certificate WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtSchoolName" Name="SchoolName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtAddress" Name="Address" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtAward" Name="Award" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtMeetingDate" Name="MeetingDate" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtApplicationDate" Name="ApplicationDate" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuletter" Name="Letter" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuForm" Name="Form" PropertyName="FileName" 
                    Type="String" />
                <asp:ControlParameter ControlID="fuCertificate" Name="Certificate" 
                    PropertyName="FileName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Award" Type="String" />
                <asp:Parameter Name="MeetingDate" Type="String" />
                <asp:Parameter Name="ApplicationDate" Type="String" />
                <asp:Parameter Name="Letter" Type="String" />
                <asp:Parameter Name="Form" Type="String" />
                <asp:Parameter Name="Certificate" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/GauravSevaPadak.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Home</asp:HyperLink></center>
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

