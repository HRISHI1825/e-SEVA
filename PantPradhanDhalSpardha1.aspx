<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PantPradhanDhalSpardha1.aspx.cs" Inherits="PDSpardha02" %>


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
</head>
<body>
    <div class="jumbotron">
 <center>
        <h1>New Entry</h1>
 </center>
    </div>

    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
        <div class="form-group">
             <asp:Label ID="lblSubjectNumber" runat="server" CssClass="col-lg-3 control-label"  
                 Text="Subject Number"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                 ControlToValidate="txtSubjectNumber" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtSubjectNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
                <asp:Label ID="lblOptionalSubjectNumber" runat="server" 
                    CssClass="col-lg-3 control-label"  Text="Optional Subject Number" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtOptionalSubjectNumber" ForeColor="Red" 
                    ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtOptionalSubjectNumber" runat="server"  CssClass="form-control"></asp:TextBox>
           </div></div>
        <div class="form-group">
            <asp:Label ID="lblAttendance" runat="server" Text="Attendance"  CssClass="col-lg-3 control-label" Font-Bold="False"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="txtAttendance" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
             <asp:TextBox ID="txtAttendance" CssClass="form-control"  runat="server"></asp:TextBox>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblLetter" runat="server" Text="Letter"  CssClass="col-lg-3 control-label" Font-Bold="False"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="FileUpload1" ForeColor="Red" ToolTip="Enter Bill No.">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
               <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div></div><hr />
      <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [UnitLeaderTable] ([EmailId], [Password], [SubjectNo], [OptionalSubjectNo], [Attendance], [PantPradhanLetter]) VALUES (@EmailId, @Password, @SubjectNo, @OptionalSubjectNo, @Attendance, @PantPradhanLetter)" 
            SelectCommand="SELECT [SrNo], [EmailId], [Password], [SubjectNo], [OptionalSubjectNo], [Attendance], [PantPradhanLetter] FROM [UnitLeaderTable]" 
            UpdateCommand="UPDATE [UnitLeaderTable] SET [SubjectNo] = @SubjectNo, [OptionalSubjectNo] = @OptionalSubjectNo, [Attendance] = @Attendance, [PantPradhanLetter] = @PantPradhanLetter WHERE [EmailId] = @EmailId AND [Password] = @Password ">
                 <DeleteParameters>
                     <asp:Parameter Name="SrNo" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="EmailId" Type="String" />
                     <asp:Parameter Name="Password" Type="String" />
                     <asp:Parameter Name="SubjectNo" Type="String" />
                     <asp:Parameter Name="OptionalSubjectNo" Type="String" />
                     <asp:Parameter Name="Attendance" Type="Int32" />
                     <asp:Parameter Name="PantPradhanLetter" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                     <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
                     <asp:ControlParameter ControlID="txtSubjectNumber" Name="SubjectNo" 
                         PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="txtOptionalSubjectNumber" 
                         Name="OptionalSubjectNo" PropertyName="Text" Type="String" />
                     <asp:ControlParameter ControlID="txtAttendance" Name="Attendance" 
                         PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="FileUpload1" Name="PantPradhanLetter" 
                         PropertyName="FileName" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Schooldashboard.aspx">Back</asp:HyperLink></center>
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