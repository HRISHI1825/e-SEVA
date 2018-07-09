﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seva1.aspx.cs" Inherits="originalseva" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script></head>
<body>   <div class="jumbotron">
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
    <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" 
            CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">
              <asp:DropDownList ID="DropDownList3" runat="server" 
                  DataSourceID="SqlDataSource3" DataTextField="Year" 
                  DataValueField="Year" AutoPostBack="True" CssClass="dropdown">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  
                  SelectCommand="SELECT DISTINCT Year FROM SchoolTable WHERE (Year IS NOT NULL)">
              </asp:SqlDataSource>
              </div></div>
              <div class="form-group">
    <asp:Label ID="lblSelectSchoolName" runat="server" Text="Select School Name" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown"
                  DataSourceID="SqlDataSource1" DataTextField="SchoolName" 
                  DataValueField="SchoolName" AutoPostBack="True">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  
                  SelectCommand="SELECT DISTINCT SchoolName FROM SchoolTable WHERE (Year = @Year) AND (SchoolName IS NOT NULL)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList3" Name="Year" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              </div></div>
              <div class="form-group">
                <asp:Label ID="lblSelectUnitName" runat="server" Text="Select Unit Name" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">
              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown" 
                  DataSourceID="SqlDataSource2" DataTextField="UnitName" 
                  DataValueField="UnitName" AutoPostBack="True">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  
                  SelectCommand="SELECT UnitName FROM SchoolTable WHERE (SchoolName = @SchoolName) AND (Year = @Year) AND (UnitName IS NOT NULL)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                          PropertyName="SelectedValue" Type="String" />
                      <asp:ControlParameter ControlID="DropDownList3" Name="Year" 
                          PropertyName="SelectedValue" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              </div></div>
        <div class="form-group"><asp:Label ID="lblEventName" runat="server" Text="Event Name" CssClass="col-lg-3 control-label"></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                  ControlToValidate="txtEventName" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5">
                <asp:TextBox ID="txtEventName" runat="server" class="form-control"></asp:TextBox>
          </div></div>
          <div class="form-group">
              <asp:Label ID="lblEventDate" runat="server" Text="Event Date" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="txtEventDate" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5"> 
              <asp:TextBox ID="txtEventDate" runat="server" class="form-control"></asp:TextBox>
              <ajaxToolkit:CalendarExtender ID="txtEventDate_CalendarExtender" runat="server" 
                  BehaviorID="txtEventDate_CalendarExtender" TargetControlID="txtEventDate">
              </ajaxToolkit:CalendarExtender>
            </div></div>
        <div class="form-group">
              <asp:Label ID="lblAttendance" runat="server" Text="Attendance" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                  ControlToValidate="txtAttendance" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div class="col-lg-5"> 
              <asp:TextBox ID="txtAttendance" runat="server" class="form-control"></asp:TextBox>
            </div></div>
        <div class="form-group">
                     <asp:Label ID="lblDuration" runat="server" Text="Duration" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                  ControlToValidate="txtDuration" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
    <div  class="col-lg-5">
               <asp:TextBox ID="txtDuration" runat="server" class="form-control"></asp:TextBox></div></div>
        <div class="form-group">
           <asp:Label ID="lblPlace" runat="server" Text="Place" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                  ControlToValidate="txtPlace" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
           <div  class="col-lg-5">
                <asp:TextBox ID="txtPlace" runat="server" class="form-control"></asp:TextBox>
          </div> </div>
        <div class="form-group">
             <asp:Label ID="lblReport" runat="server" Text="Report" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                  ControlToValidate="fuReport" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
          <div  class="col-lg-5">
             <asp:FileUpload ID="fuReport" runat="server" CssClass="form-control" /></div> </div>
        <div class="form-group">
              <asp:Label ID="lblPhoto" runat="server" Text="Photo" CssClass="col-lg-3 control-label  "></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                  ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator" 
                  ForeColor="Red">*</asp:RequiredFieldValidator>
        <div  class="col-lg-5">           
               <asp:FileUpload ID="fuphoto" runat="server" CssClass="form-control" />
        </div> </div>
      <div class="form-group">
                <div class="col-lg-5 col-lg-offset-3">
        <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
    </div>      <hr />
        <asp:SqlDataSource ID="SqldsSeva" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SevaPrakalp] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [SevaPrakalp] ([Year], [SchoolName], [UnitName], [SevaEventName], [SevaEventDate], [SevaAttendance], [SevaDuration], [SevaPlace], [SevaReport], [SevaPhoto]) VALUES (@Year, @SchoolName, @UnitName, @SevaEventName, @SevaEventDate, @SevaAttendance, @SevaDuration, @SevaPlace, @SevaReport, @SevaPhoto)" 
            SelectCommand="SELECT * FROM [SevaPrakalp]" 
            
            UpdateCommand="UPDATE [SevaPrakalp] SET [Year] = @Year, [SchoolName] = @SchoolName, [UnitName] = @UnitName, [SevaEventName] = @SevaEventName, [SevaEventDate] = @SevaEventDate, [SevaAttendance] = @SevaAttendance, [SevaDuration] = @SevaDuration, [SevaPlace] = @SevaPlace, [SevaReport] = @SevaReport, [SevaPhoto] = @SevaPhoto WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="SchoolName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="UnitName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtEventName" 
                    Name="SevaEventName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtEventDate" Name="SevaEventDate" 
                    PropertyName="Text" DbType="Date" />
                <asp:ControlParameter ControlID="txtAttendance" Name="SevaAttendance" 
                    PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtDuration" Name="SevaDuration" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtPlace" Name="SevaPlace" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuReport" Name="SevaReport" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuphoto" Name="SevaPhoto" 
                    PropertyName="FileName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="SevaEventName" Type="String" />
                <asp:Parameter DbType="Date" Name="SevaEventDate" />
                <asp:Parameter Name="SevaAttendance" Type="Int32" />
                <asp:Parameter Name="SevaDuration" Type="String" />
                <asp:Parameter Name="SevaPlace" Type="String" />
                <asp:Parameter Name="SevaReport" Type="String" />
                <asp:Parameter Name="SevaPhoto" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Schooldashboard.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" 
             NavigateUrl="~/Schooldashboard.aspx">Home</asp:HyperLink></center>
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
