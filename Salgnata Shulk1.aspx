<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Salgnata Shulk1.aspx.cs" Inherits="Salgnata_Shulk1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
             <asp:Label ID="lblYear" runat="server"  CssClass="col-lg-3 control-label" Text="Year" 
                    Font-Bold="False"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtYear" ErrorMessage="RequiredFieldValidator" 
        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

<div  class="col-lg-5">
            <asp:TextBox ID="txtYear" CssClass="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
                <asp:Label ID="lblAmount" runat="server" CssClass="col-lg-3 control-label"  
                    Text="Amount" Font-Bold="False"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtAmount" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtAmount" runat="server"  CssClass="form-control"></asp:TextBox>
           </div></div>
        <div class="form-group">
                <asp:Label ID="lblReceiptNo" runat="server"  CssClass="col-lg-3 control-label" 
                    Text="Receipt No" Font-Bold="False"></asp:Label>
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtReceiptNo" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           
            <div class="col-lg-5"> <asp:TextBox ID="txtReceiptNo" runat="server" CssClass="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
            <asp:Label ID="lblReceiptNoDate" runat="server" Text="Receipt No Date"  
                CssClass="col-lg-3 control-label" Font-Bold="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtReceiptNoDate" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
             <asp:TextBox ID="txtReceiptNoDate" CssClass="form-control"  runat="server"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtReceiptNoDate_CalendarExtender" 
                   runat="server" BehaviorID="txtReceiptNoDate_CalendarExtender" 
                   TargetControlID="txtReceiptNoDate">
               </ajaxToolkit:CalendarExtender>
            </div></div>
            <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
            <asp:SqlDataSource ID="SqldsSalgnataShulk" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([SalgnataYear], [SalgnataAmount], [SalgnataReceiptNo], [SalgnataReceiptNoDate]) VALUES (@SalgnataYear, @SalgnataAmount, @SalgnataReceiptNo, @SalgnataReceiptNoDate)" 
                SelectCommand="SELECT [SrNo], [SalgnataYear], [SalgnataAmount], [SalgnataReceiptNo], [SalgnataReceiptNoDate] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [SalgnataYear] = @SalgnataYear, [SalgnataAmount] = @SalgnataAmount, [SalgnataReceiptNo] = @SalgnataReceiptNo, [SalgnataReceiptNoDate] = @SalgnataReceiptNoDate WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtYear" Name="SalgnataYear" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAmount" Name="SalgnataAmount" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtReceiptNo" Name="SalgnataReceiptNo" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtReceiptNoDate" DbType="Date" 
                        Name="SalgnataReceiptNoDate" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SalgnataYear" Type="Int32" />
                    <asp:Parameter Name="SalgnataAmount" Type="Int32" />
                    <asp:Parameter Name="SalgnataReceiptNo" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="SalgnataReceiptNoDate" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Salgnata Shulk.aspx">Back</asp:HyperLink></center>
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


