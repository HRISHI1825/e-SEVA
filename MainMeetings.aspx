<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMeetings.aspx.cs" Inherits="MainMeetings" %>

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
    <script src="themes2/jquery-1.10.2.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="jumbotron">
    <center><h1>Meetings Information</h1></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectMeetingDate" runat="server" Text="Select Meeting Date" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" 
            ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
         <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqlds" 
                    DataTextField="MeetingDate" DataValueField="MeetingDate" 
                    AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sqlds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [MeetingDate] FROM [Office] WHERE (([MeetingReport] IS NOT NULL) AND ([MeetingDate] IS NOT NULL))"></asp:SqlDataSource>
            </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblSelectMeetingName" runat="server" Text="Select Meeting Name" CssClass="col-lg-3 control-label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList2" 
            ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
         <div class="col-lg-5">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="NameOfMeeting" DataValueField="NameOfMeeting" 
                    AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [NameOfMeeting] FROM [Office] WHERE ([MeetingDate] = @MeetingDate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="MeetingDate" 
                            PropertyName="SelectedValue" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1" Width="100%">
            <ItemTemplate>
            <div class="form-group">
               <asp:Label runat="server" ID="lblMeetingDate"  CssClass="col-lg-3 control-label" text="Meeting Date"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="MeetingDateLabel" runat="server" 
                    Text='<%# Eval("MeetingDate") %>' CssClass="form-control" />
                    </div>
            </div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblNameOfMeeting"  CssClass="col-lg-3 control-label" text="Name Of Meeting"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="NameOfMeetingLabel" runat="server" 
                    Text='<%# Eval("NameOfMeeting") %>' CssClass="form-control" />
                    </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblAttendance"  CssClass="col-lg-3 control-label" text="Attendance"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="AttendanceLabel" runat="server" 
                    Text='<%# Eval("Attendance") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblMeetingReport"  CssClass="col-lg-3 control-label" text="Meeting Report"></asp:Label>
                <div class="col-lg-5">
                <a href='Meetings/<%# Eval("MeetingReport") %>'><asp:label ID="lbl1" runat="server" Text="Click To See" CssClass="form-control"></asp:label></a>
            </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblMeetingAgenda"  CssClass="col-lg-3 control-label" text="Meeting Agenda"></asp:Label>
                <div class="col-lg-5">
                <a href='Meetings/<%# Eval("MeetingAgenda") %>'><asp:label ID="lbl2" runat="server" Text="Click To See" CssClass="form-control"></asp:label></a>
            </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [MeetingDate], [NameOfMeeting], [Attendance], [MeetingReport], [MeetingAgenda] FROM [Office] WHERE (([MeetingDate] = @MeetingDate) AND ([NameOfMeeting] = @NameOfMeeting))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DbType="Date" 
                    Name="MeetingDate" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="NameOfMeeting" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
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
