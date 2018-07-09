<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjivanSabhasadYadi1.aspx.cs" Inherits="originalAjivanSabhasadYadi" %>

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
             <asp:Label ID="lblMembershipDate" runat="server" Text="Membership Date" CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtMembershipDate" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
       <div  class="col-lg-5">
             <asp:TextBox ID="txtMembershipDate" runat="server"  CssClass="form-control"></asp:TextBox>
             <ajaxToolkit:CalendarExtender ID="txtMembershipDate_CalendarExtender" 
                 runat="server" BehaviorID="txtMembershipDate_CalendarExtender" 
                 TargetControlID="txtMembershipDate">
             </ajaxToolkit:CalendarExtender>
        </div> </div>
           <div class="form-group">
           <asp:Label ID="lblMemberName" runat="server" Text="Member Name"  CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="txtMemberName" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div  class="col-lg-5">
          <asp:TextBox ID="txtMemberName" runat="server"  CssClass="form-control"></asp:TextBox>

        </div>
           </div>
         <div class="form-group">
             <asp:Label ID="lblAddress" runat="server" CssClass="col-lg-3 control-label"  Text="Address"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div></div>
        <div class="form-group">
             <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number" CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="txtContactNumber" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
       <div  class="col-lg-5">
             <asp:TextBox ID="txtContactNumber" runat="server"  CssClass="form-control"></asp:TextBox>
        </div> </div>
        <div class="form-group">
             <asp:Label ID="lblEmailId" runat="server" Text="Email Id" CssClass="col-lg-3 control-label  "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtEmailId" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmailId" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid EmailId</asp:RegularExpressionValidator>
       <div  class="col-lg-5">
             <asp:TextBox ID="txtEmailId" runat="server"  CssClass="form-control"></asp:TextBox>
        </div> </div>
        <hr />
          <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
           <asp:SqlDataSource ID="SqldsAjivan" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
               InsertCommand="INSERT INTO [Office] ([MemberName], [MemberAddress], [EmailId], [MembershipDate], [ContactNumber]) VALUES (@MemberName, @MemberAddress, @EmailId, @MembershipDate, @ContactNumber)" 
               SelectCommand="SELECT [SrNo], [MemberName], [MemberAddress], [EmailId], [MembershipDate], [ContactNumber] FROM [Office]" 
               
            
            UpdateCommand="UPDATE [Office] SET [MemberName] = @MemberName, [MemberAddress] = @MemberAddress, [EmailId] = @EmailId, [MembershipDate] = @MembershipDate, [ContactNumber] = @ContactNumber WHERE [SrNo] = @SrNo">
               <DeleteParameters>
                   <asp:Parameter Name="SrNo" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:ControlParameter ControlID="txtMemberName" Name="MemberName" 
                       PropertyName="Text" Type="String" />
                   <asp:ControlParameter ControlID="txtAddress" Name="MemberAddress" 
                       PropertyName="Text" Type="String" />
                   <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                       Type="String" />
                   <asp:ControlParameter ControlID="txtMembershipDate" DbType="Date" 
                       Name="MembershipDate" PropertyName="Text" />
                   <asp:ControlParameter ControlID="txtContactNumber" Name="ContactNumber" 
                       PropertyName="Text" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="MemberName" Type="String" />
                   <asp:Parameter Name="MemberAddress" Type="String" />
                   <asp:Parameter Name="EmailId" Type="String" />
                   <asp:Parameter Name="MembershipDate" DbType="Date" />
                   <asp:Parameter Name="ContactNumber" Type="String" />
                   <asp:Parameter Name="SrNo" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
          
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
          
    </fieldset>
    </form>
        </div>

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
             NavigateUrl="~/AjivanSabasadYadi.aspx">Back</asp:HyperLink></center>
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
</body>
</html>

