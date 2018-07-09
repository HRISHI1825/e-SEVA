<%@ Page Language="C#" AutoEventWireup="true" CodeFile="varshikanudan1.aspx.cs" Inherits="WebSquat__Guide_originalnewvarshikanudan" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label> 
           
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="txtDate" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
           
           <div  class="col-lg-5">
            <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                   BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
               </ajaxToolkit:CalendarExtender>
          </div>
           </div>
        <div class="form-group">
            <asp:Label ID="lblAmount" runat="server" Text="Amount" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtAmt" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
                   <div  class="col-lg-5">
                                    <asp:TextBox runat="server" ID="txtAmt" CssClass="form-control"></asp:TextBox>
           </div> </div>
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
            <asp:SqlDataSource ID="SqldsVarshikAnudan" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([VarshikAnudanDate], [VarshikAnudanAmount]) VALUES (@VarshikAnudanDate, @VarshikAnudanAmount)" 
                SelectCommand="SELECT [SrNo], [VarshikAnudanDate], [VarshikAnudanAmount] FROM [Office]" 
                
                
                UpdateCommand="UPDATE [Office] SET [VarshikAnudanDate] = @VarshikAnudanDate, [VarshikAnudanAmount] = @VarshikAnudanAmount WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtDate" DbType="Date" 
                        Name="VarshikAnudanDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAmt" Name="VarshikAnudanAmount" 
                        PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="VarshikAnudanDate" />
                    <asp:Parameter Name="VarshikAnudanAmount" Type="Int32" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/VarshikAnudan.aspx">Back</asp:HyperLink></center>
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

