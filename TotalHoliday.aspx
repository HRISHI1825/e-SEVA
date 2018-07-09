<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalHoliday.aspx.cs" Inherits="TotalHoliday" %>

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
             
               <asp:Label ID="lblYear" runat="server" Text="Year" CssClass="col-lg-3 control-label  " ></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="txtYear" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
         <div  class="col-lg-5">
            <asp:TextBox id="txtYear" runat="server" CssClass="form-control" ></asp:TextBox>
 
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblEmployeeName" runat="server" Text="Employee Name" CssClass="col-lg-3 control-label  "></asp:Label> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtEmployeeName" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
    <asp:TextBox id="txtEmployeeName" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
            </div>
           <div  class="form-group">
            <asp:Label ID="lblArjit" runat="server" Text="Arjit" CssClass="col-lg-3 control-label  "></asp:Label> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="txtArjit" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
 <div class="col-lg-5">
    <asp:TextBox id="txtArjit" runat="server" CssClass="form-control" ></asp:TextBox>
         
           </div> </div>
        <div class="form-group">
                <asp:Label ID="lblVaidyakiya" runat="server" Text="Vaidyakiya" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="txtVaidyakiya" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox id="txtVaidyakiya" runat="server"  CssClass="form-control"></asp:TextBox>        </div></div>
        <div class="form-group">
               <asp:Label ID="lblKirkod" runat="server" Text="Kirkod" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="txtKirkod" ForeColor="Red" 
                    ToolTip="Enter Name Of Badge ">*</asp:RequiredFieldValidator>
       <div class="col-lg-5">
            <asp:TextBox id="txtKirkod" runat="server" CssClass="form-control" ></asp:TextBox>
       </div> 
            </div>
            <hr />
        <div class="form-group">
              <div class="col-lg-5 col-lg-offset-3">
         <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn2_Click" />
      </div>
            </div>
                <asp:SqlDataSource ID="SqlDsHolidays" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                    InsertCommand="INSERT INTO [Office] ([HolidayYear], [HolidayEmployeeName], [Arjit], [Vaidyakiya], [Kirkod]) VALUES (@HolidayYear, @HolidayEmployeeName, @Arjit, @Vaidyakiya, @Kirkod)" 
                    SelectCommand="SELECT [SrNo], [HolidayYear], [HolidayEmployeeName], [Arjit], [Vaidyakiya], [Kirkod] FROM [Office]" 
                    
                    
                UpdateCommand="UPDATE [Office] SET [HolidayYear] = @HolidayYear, [HolidayEmployeeName] = @HolidayEmployeeName, [Arjit] = @Arjit, [Vaidyakiya] = @Vaidyakiya, [Kirkod] = @Kirkod WHERE [SrNo] = @SrNo">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtYear" Name="HolidayYear" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtEmployeeName" Name="HolidayEmployeeName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtArjit" Name="Arjit" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="txtVaidyakiya" Name="Vaidyakiya" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtKirkod" Name="Kirkod" PropertyName="Text" 
                            Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="HolidayYear" Type="String" />
                        <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                        <asp:Parameter Name="Arjit" Type="Int32" />
                        <asp:Parameter Name="Vaidyakiya" Type="Int32" />
                        <asp:Parameter Name="Kirkod" Type="Int32" />
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <asp:SqlDataSource ID="Sqldsremaining" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([HolidayYear], [HolidayEmployeeName], [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod]) VALUES (@HolidayYear, @HolidayEmployeeName, @RemainingArjit, @RemainingVaidyakiya, @RemainingKirkod)" 
                SelectCommand="SELECT [SrNo], [HolidayYear], [HolidayEmployeeName], [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [RemainingArjit] = @RemainingArjit, [RemainingVaidyakiya] = @RemainingVaidyakiya, [RemainingKirkod] = @RemainingKirkod WHERE [HolidayYear] = @HolidayYear AND [HolidayEmployeeName] = @HolidayEmployeeName">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HolidayYear" Type="String" />
                    <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                    <asp:Parameter Name="RemainingArjit" Type="Int32" />
                    <asp:Parameter Name="RemainingVaidyakiya" Type="Int32" />
                    <asp:Parameter Name="RemainingKirkod" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtYear" Name="HolidayYear" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEmployeeName" Name="HolidayEmployeeName" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtArjit" Name="RemainingArjit" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtVaidyakiya" Name="RemainingVaidyakiya" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtKirkod" Name="RemainingKirkod" 
                        PropertyName="Text" Type="Int32" />
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


