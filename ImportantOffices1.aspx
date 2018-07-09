<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImportantOffices1.aspx.cs" Inherits="ImpOffices2" %>

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
             <asp:Label ID="lblOrganisationName" runat="server"  class="col-lg-3 control-label" 
                    Text="Organisation Name" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtOrganisationName" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtOrganisationName" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblAddress" runat="server"  class="col-lg-3 control-label" Text="Address" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtAddress" 
                 ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtAddress"  class="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblHeadOfOrganisation" runat="server" 
                 class="col-lg-3 control-label"  Text="Head Of Organisation" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtHeadOfOrganisation" 
                 ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtHeadOfOrganisation" runat="server" class="form-control" ></asp:TextBox>
            </div></div>
        <div class="form-group">
                <asp:Label ID="lblContactNo" runat="server" class="col-lg-3 control-label"  Text="Contact No" Font-Bold="False" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtContactNo" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtContactNo" runat="server"  class="form-control"></asp:TextBox>
           </div></div><hr />
       <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
       
      </div>
    </div>
            <asp:SqlDataSource ID="SqldsImportantOffices" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([OrganisationName], [OrganisationAddress], [HeadOfOrganisation], [HeadContactNo]) VALUES (@OrganisationName, @OrganisationAddress, @HeadOfOrganisation, @HeadContactNo)" 
                SelectCommand="SELECT [SrNo], [OrganisationName], [OrganisationAddress], [HeadOfOrganisation], [HeadContactNo] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [OrganisationName] = @OrganisationName, [OrganisationAddress] = @OrganisationAddress, [HeadOfOrganisation] = @HeadOfOrganisation, [HeadContactNo] = @HeadContactNo WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtOrganisationName" Name="OrganisationName" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAddress" Name="OrganisationAddress" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtHeadOfOrganisation" 
                        Name="HeadOfOrganisation" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtContactNo" Name="HeadContactNo" 
                        PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="OrganisationName" Type="String" />
                    <asp:Parameter Name="OrganisationAddress" Type="String" />
                    <asp:Parameter Name="HeadOfOrganisation" Type="String" />
                    <asp:Parameter Name="HeadContactNo" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" 
             NavigateUrl="~/ImportantOffices.aspx">Back</asp:HyperLink></center>
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


