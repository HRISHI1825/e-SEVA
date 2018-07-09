<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donation1.aspx.cs" Inherits="Donation1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="themes2/bootstrap.css" rel="stylesheet" type="text/css" />
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
        <asp:Label ID="lblYear" runat="server" Text="Year" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtYear" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtYear" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblPurpose" runat="server" Text="Purpose" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtPurpose" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtPurpose" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblAmount" runat="server" Text="Amount" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtAmount" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblReceiptNo" runat="server" Text="ReceiptNo" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtReceiptNo" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtReceiptNo" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblReceiptNoDate" runat="server" Text="Receipt No Date" CssClass="col-lg-3 control-label"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtReceiptNoDate" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
        <asp:TextBox ID="txtReceiptNoDate" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([DonationYear], [DonationName], [DonationPurpose], [DonationAmount], [DonationReceiptNo], [DonationReceiptNoDate]) VALUES (@DonationYear, @DonationName, @DonationPurpose, @DonationAmount, @DonationReceiptNo, @DonationReceiptNoDate)" 
                SelectCommand="SELECT [SrNo], [DonationYear], [DonationName], [DonationPurpose], [DonationAmount], [DonationReceiptNo], [DonationReceiptNoDate] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [DonationYear] = @DonationYear, [DonationName] = @DonationName, [DonationPurpose] = @DonationPurpose, [DonationAmount] = @DonationAmount, [DonationReceiptNo] = @DonationReceiptNo, [DonationReceiptNoDate] = @DonationReceiptNoDate WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtYear" Name="DonationYear" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtName" Name="DonationName" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPurpose" Name="DonationPurpose" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAmount" Name="DonationAmount" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtReceiptNo" Name="DonationReceiptNo" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtReceiptNoDate" Name="DonationReceiptNoDate" 
                        PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DonationYear" Type="String" />
                    <asp:Parameter Name="DonationName" Type="String" />
                    <asp:Parameter Name="DonationPurpose" Type="String" />
                    <asp:Parameter Name="DonationAmount" Type="String" />
                    <asp:Parameter Name="DonationReceiptNo" Type="String" />
                    <asp:Parameter Name="DonationReceiptNoDate" Type="String" />
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <ajaxToolkit:CalendarExtender ID="txtReceiptNoDate_CalendarExtender" 
                runat="server" BehaviorID="txtReceiptNoDate_CalendarExtender" 
                TargetControlID="txtReceiptNoDate">
            </ajaxToolkit:CalendarExtender>
    </div>
    </div><hr />
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="Button1" runat="server" Text="Cancle" class="btn btn-default" />
          <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-primary" 
              onclick="Button2_Click" />
      </div>
    </div>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Donation2.aspx">Back</asp:HyperLink></center>
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
