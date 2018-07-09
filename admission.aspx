<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
 <div class="form-group">
                    <asp:Label ID="lblUnitLeaderSign" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Unit Leader Signature"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="fuUnitLeaderSign" ErrorMessage="RequiredFieldValidator" 
                            Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <div class="col-lg-5">
                    <asp:FileUpload ID="fuUnitLeaderSign" runat="server" CssClass="form-control" 
                        /></div></div>
              <div class="form-group">
                    <asp:Label ID="lblPrincipalSign" runat="server" Font-Names="Arial Black" CssClass="col-lg-3 control-label"
                        Font-Size="Medium" Text="Principal Signature"></asp:Label>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="fuprincipalSign" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red" >*</asp:RequiredFieldValidator>

                   <div class="col-lg-5">
                    <asp:FileUpload ID="fuprincipalSign" runat="server" CssClass="form-control" 
                          />
                         </div></div>
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" 
              Text="Cancel"/>
          <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Next" 
              onclick="btn2_Click" />
          <asp:SqlDataSource ID="Sqlds" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
              InsertCommand="INSERT INTO [SchoolTable] ([UnitLeaderSignature], [PrincipalSignature], [EmailId], [Password]) VALUES (@UnitLeaderSignature, @PrincipalSignature, @EmailId, @Password)" 
              SelectCommand="SELECT [SrNo], [UnitLeaderSignature], [PrincipalSignature], [EmailId], [Password] FROM [SchoolTable]" 
              UpdateCommand="UPDATE [SchoolTable] SET [UnitLeaderSignature] = @UnitLeaderSignature, [PrincipalSignature] = @PrincipalSignature WHERE [EmailId] = @EmailId AND [Password] = @Password ">
              <DeleteParameters>
                  <asp:Parameter Name="SrNo" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="UnitLeaderSignature" Type="String" />
                  <asp:Parameter Name="PrincipalSignature" Type="String" />
                  <asp:Parameter Name="EmailId" Type="String" />
                  <asp:Parameter Name="Password" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:ControlParameter ControlID="fuUnitLeaderSign" Name="UnitLeaderSignature" 
                      PropertyName="FileName" Type="String" />
                  <asp:ControlParameter ControlID="fuprincipalSign" Name="PrincipalSignature" 
                      PropertyName="FileName" Type="String" />
                  <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                  <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          </div></div>
    </fieldset>
    </form>
    </div>
    
</body>
</html>
