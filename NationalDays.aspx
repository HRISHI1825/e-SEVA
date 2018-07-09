<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NationalDays.aspx.cs" Inherits="NationalDays" %>

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
             <asp:Label ID="lblDayName" runat="server"  class="col-lg-3 control-label" 
                    Text="Day Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDayName" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtDayName" class="form-control"  runat="server"></asp:TextBox>
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblDate" runat="server"  class="col-lg-3 control-label" 
                 Text="Date" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtDate"  class="form-control" runat="server"></asp:TextBox>
               <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
               </ajaxToolkit:CalendarExtender>
           </div> </div>
           <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:SqlDataSource ID="SqldsNationalDays" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
              InsertCommand="INSERT INTO [Office] ([DayName], [Date]) VALUES (@DayName, @Date)" 
              SelectCommand="SELECT [SrNo], [DayName], [Date] FROM [Office]" 
              
              UpdateCommand="UPDATE [Office] SET [DayName] = @DayName, [Date] = @Date WHERE [SrNo] = @SrNo">
              <DeleteParameters>
                  <asp:Parameter Name="SrNo" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="txtDayName" Name="DayName" PropertyName="Text" 
                      Type="String" />
                  <asp:ControlParameter ControlID="txtDate" Name="Date" PropertyName="Text" 
                      Type="DateTime" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="DayName" Type="String" />
                  <asp:Parameter Name="Date" Type="DateTime" />
                  <asp:Parameter Name="SrNo" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Admin2.aspx">Back</asp:HyperLink></center>
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


