<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalAjivanSabhasadYadi.aspx.cs" Inherits="originalAjivanSabhasadYadi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
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
             <asp:Label ID="lblAddress" runat="server" class="col-lg-3 control-label"  Text="Address" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress" runat="server" class="form-control"  Font-Names="Times New Roman" Font-Size="Large" TextMode="MultiLine"></asp:TextBox><br />
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
       <div  class="col-lg-5">
             <asp:TextBox ID="txtEmailId" runat="server"  CssClass="form-control"></asp:TextBox>
        </div> </div>
          <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
            <hr />
           <asp:SqlDataSource ID="SqldsAjivan" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
               InsertCommand="INSERT INTO [Office] ([MemberName], [MemberAddress], [ContactNumber], [EmailId], [MembershipDate]) VALUES (@MemberName, @MemberAddress, @ContactNumber, @EmailId, @MembershipDate)" 
               SelectCommand="SELECT [SrNo], [MemberName], [MemberAddress], [ContactNumber], [EmailId], [MembershipDate] FROM [Office]" 
               
            UpdateCommand="UPDATE [Office] SET [MemberName] = @MemberName, [MemberAddress] = @MemberAddress, [ContactNumber] = @ContactNumber, [EmailId] = @EmailId, [MembershipDate] = @MembershipDate WHERE [SrNo] = @SrNo">
               <DeleteParameters>
                   <asp:Parameter Name="SrNo" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:ControlParameter ControlID="txtMemberName" Name="MemberName" 
                       PropertyName="Text" Type="String" />
                   <asp:ControlParameter ControlID="txtAddress" Name="MemberAddress" 
                       PropertyName="Text" Type="String" />
                   <asp:ControlParameter ControlID="txtContactNumber" Name="ContactNumber" 
                       PropertyName="Text" Type="Int32" />
                   <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                       Type="String" />
                   <asp:ControlParameter ControlID="txtMembershipDate" DbType="Date" 
                       Name="MembershipDate" PropertyName="Text" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="MemberName" Type="String" />
                   <asp:Parameter Name="MemberAddress" Type="String" />
                   <asp:Parameter Name="ContactNumber" Type="Int32" />
                   <asp:Parameter Name="EmailId" Type="String" />
                   <asp:Parameter DbType="Date" Name="MembershipDate" />
                   <asp:Parameter Name="SrNo" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
           <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div> </div> 
     
    </fieldset>
    </form>
        </div>
</body>
</html>

