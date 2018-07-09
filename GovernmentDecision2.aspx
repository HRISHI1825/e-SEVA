<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GovernmentDecision2.aspx.cs" Inherits="GovernmentDecision2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
             <asp:Label ID="lblTopic" runat="server"  class="col-lg-3 control-label" 
                    Text="Topic" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtTopic" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtTopic" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblDate" runat="server"  class="col-lg-3 control-label" 
                 Text="Date" Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtDate"  class="form-control" runat="server"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
               </ajaxToolkit:CalendarExtender>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblGR" runat="server" class="col-lg-3 control-label"  Text="GR" 
                 Font-Bold="False"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="fuGr" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
                <asp:FileUpload ID="fuGr" runat="server" CssClass="form-control" />
                
            </div></div><hr />
      <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
      </div>
    </div>
             <asp:SqlDataSource ID="SqldsGr" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([Topic], [GrDate], [Gr]) VALUES (@Topic, @GrDate, @Gr)" 
                SelectCommand="SELECT [SrNo], [Topic], [GrDate], [Gr] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [Topic] = @Topic, [GrDate] = @GrDate, [Gr] = @Gr WHERE [SrNo] = @SrNo">
                 <DeleteParameters>
                     <asp:Parameter Name="SrNo" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:ControlParameter ControlID="txtTopic" Name="Topic" PropertyName="Text" 
                         Type="String" />
                     <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="GrDate" 
                         PropertyName="Text" />
                     <asp:ControlParameter ControlID="fuGr" Name="Gr" PropertyName="FileName" 
                         Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Topic" Type="String" />
                     <asp:Parameter DbType="Date" Name="GrDate" />
                     <asp:Parameter Name="Gr" Type="String" />
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
             NavigateUrl="~/GovernmentDecision.aspx">Back</asp:HyperLink></center>
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