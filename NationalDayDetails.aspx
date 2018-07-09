<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NationalDayDetails.aspx.cs" Inherits="NationalDayDetails" %>

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
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
     <asp:Label ID="lblSelectDate" runat="server"  CssClass="col-lg-3 control-label" 
                    Text="Select Date" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" 
            ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
                    DataTextField="Date" DataValueField="Date" AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sqlds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [Date] FROM [Office] WHERE (([ArrangedProgram] IS NULL) AND ([Date] IS NOT NULL))"></asp:SqlDataSource>
            </div>
        </div>
         
    <div class="form-group">
             <asp:Label ID="lblArrangedProgram" runat="server" 
                 CssClass="col-lg-3 control-label"  Text="Arranged Program" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtArrangedProgram" 
                 ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div  class="col-lg-5">
            <asp:TextBox ID="txtArrangedProgram" runat="server" CssClass="form-control"></asp:TextBox>
             </div></div>
          <div class="form-group">
             <asp:Label ID="lblAttendance" runat="server"  class="col-lg-3 control-label" 
                 Text="Attendance" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAttendance" 
                  ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:TextBox ID="txtAttendance"  class="form-control" runat="server"></asp:TextBox>
           </div> </div>
        <div class="form-group">
                <asp:Label ID="lblPlace" runat="server" class="col-lg-3 control-label"  
                    Text="Place" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPlace" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div class="col-lg-5">
             <asp:TextBox ID="txtPlace" runat="server"  class="form-control"></asp:TextBox>
           </div></div> 
           <div class="form-group">
             <asp:Label ID="lblReport" runat="server"  class="col-lg-3 control-label" 
                 Text="Report" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="fuReport" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:FileUpload ID="fuReport"  class="form-control" runat="server"></asp:FileUpload>
           </div> </div>
        <div class="form-group">
             <asp:Label ID="lblPhoto" runat="server"  class="col-lg-3 control-label" 
                 Text="Photo" Font-Bold="False"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
            <asp:FileUpload ID="fuPhoto"  class="form-control" runat="server"></asp:FileUpload>
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
              InsertCommand="INSERT INTO [Office] ([Date], [ArrangedProgram], [ProgramAttendance], [Place], [ProgramReport], [ProgramPhoto]) VALUES (@Date, @ArrangedProgram, @ProgramAttendance, @Place, @ProgramReport, @ProgramPhoto)" 
              SelectCommand="SELECT [SrNo], [Date], [ArrangedProgram], [ProgramAttendance], [Place], [ProgramReport], [ProgramPhoto] FROM [Office]" 
              
              
              UpdateCommand="UPDATE [Office] SET [ArrangedProgram] = @ArrangedProgram, [ProgramAttendance] = @ProgramAttendance, [Place] = @Place, [ProgramReport] = @ProgramReport, [ProgramPhoto] = @ProgramPhoto WHERE [Date] = @Date">
              <DeleteParameters>
                  <asp:Parameter Name="SrNo" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="Date" DbType="Date" />
                  <asp:Parameter Name="ArrangedProgram" Type="String" />
                  <asp:Parameter Name="ProgramAttendance" Type="Int32" />
                  <asp:Parameter Name="Place" Type="String" />
                  <asp:Parameter Name="ProgramReport" Type="String" />
                  <asp:Parameter Name="ProgramPhoto" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:ControlParameter ControlID="DropDownList1" DbType="Date" Name="Date" 
                      PropertyName="SelectedValue" />
                  <asp:ControlParameter ControlID="txtArrangedProgram" Name="ArrangedProgram" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtAttendance" Name="ProgramAttendance" 
                      PropertyName="Text" Type="Int32" />
                  <asp:ControlParameter ControlID="txtPlace" Name="Place" PropertyName="Text" 
                      Type="String" />
                  <asp:ControlParameter ControlID="fuReport" Name="ProgramReport" 
                      PropertyName="FileName" Type="String" />
                  <asp:ControlParameter ControlID="fuPhoto" Name="ProgramPhoto" 
                      PropertyName="FileName" Type="String" />
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
</body>
</html>
