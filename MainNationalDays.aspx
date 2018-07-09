<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainNationalDays.aspx.cs" Inherits="MainNationalDays" %>

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
    <center><h1>National Days Information</h1></center>
    </div>
    <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div><div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <div class="form-group">
        <asp:Label ID="lblSelectDate" runat="server" Text="Select Date" CssClass="col-lg-3 control-label"></asp:Label>
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
                    
                    SelectCommand="SELECT [Date] FROM [Office] WHERE (([ArrangedProgram] IS NOT NULL) AND ([Date] IS NOT NULL))"></asp:SqlDataSource>
            </div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlds1" Width="100%">
            <ItemTemplate>
            <div class="form-group">
               <asp:Label runat="server" ID="lblDayName"  CssClass="col-lg-3 control-label" text="Day Name"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="DayName" runat="server" 
                    Text='<%# Eval("DayName") %>' CssClass="form-control" />
                    </div>
            </div>
            <div class="form-group">
              <asp:Label runat="server" ID="lblDate"  CssClass="col-lg-3 control-label" text="Date"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="Date" runat="server" 
                    Text='<%# Eval("Date") %>' CssClass="form-control" />
                    </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblArrangedProgram"  CssClass="col-lg-3 control-label" text="Arranged Program"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="ArrangedProgram" runat="server" 
                    Text='<%# Eval("ArrangedProgram") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblProgramAttendance"  CssClass="col-lg-3 control-label" text="Program Attendance"></asp:Label>
                <div class="col-lg-5">
                <asp:Label ID="ProgramAttendance" runat="server" 
                    Text='<%# Eval("ProgramAttendance") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblPlace"  CssClass="col-lg-3 control-label" text="Place"></asp:Label>
                <div class="col-lg-5">
                 <asp:Label ID="Place" runat="server" 
                    Text='<%# Eval("Place") %>' CssClass="form-control" />
            </div></div>
            <div class="form-group">
               <asp:Label runat="server" ID="lblProgramReport"  CssClass="col-lg-3 control-label" text="Program Report"></asp:Label>
                <div class="col-lg-5">
                <a href='Programs/<%# Eval("ProgramReport") %>'><asp:label ID="lbl1" runat="server" Text="Click To See" CssClass="form-control"></asp:label></a>
            </div></div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblProgramPhoto"  CssClass="col-lg-3 control-label" text="Program Photo"></asp:Label>
                <div class="col-lg-5">
                <a href='Programs/<%# Eval("ProgramPhoto") %>'><asp:label ID="Label1" runat="server" Text="Click To See" CssClass="form-control"></asp:label></a>
            </div></div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Sqlds1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT [DayName], [Date], [ArrangedProgram], [ProgramAttendance], [Place], [ProgramReport], [ProgramPhoto] FROM [Office] WHERE ([Date] = @Date)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DbType="Date" 
                    Name="Date" PropertyName="SelectedValue" />
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
