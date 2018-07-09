<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HolidayTaken.aspx.cs" Inherits="HolidayTaken" %>

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
             
               <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label  " ></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
         <div  class="col-lg-5">
             <asp:DropDownList ID="DropDownList1" runat="server" 
                 DataSourceID="SqlDataSource1" DataTextField="HolidayYear" 
                 DataValueField="HolidayYear" AutoPostBack="True" CssClass="dropdown">
             </asp:DropDownList>
 
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 
                 SelectCommand="SELECT DISTINCT [HolidayYear] FROM [Office] WHERE ([HolidayYear] IS NOT NULL)">
             </asp:SqlDataSource>
 
          </div>
           </div>
        <div class="form-group">
             <asp:Label ID="lblSelectEmployeeName" runat="server" Text="Select Employee Name" CssClass="col-lg-3 control-label  "></asp:Label> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="HolidayEmployeeName" 
                DataValueField="HolidayEmployeeName" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT DISTINCT [HolidayEmployeeName] FROM [Office] WHERE (([HolidayYear] = @HolidayYear) AND ([HolidayEmployeeName] IS NOT NULL))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
            </div>
           <div  class="form-group">
            <asp:Label ID="lblArjit" runat="server" Text="Arjit" CssClass="col-lg-3 control-label  "></asp:Label> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtArjit" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
 <div class="col-lg-5">
    <asp:TextBox id="txtArjit" runat="server" CssClass="form-control" ></asp:TextBox>
         
           </div> </div>
        <div class="form-group">
                <asp:Label ID="lblVaidyakiya" runat="server" Text="Vaidyakiya" CssClass="col-lg-3 control-label  "></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtVaidyakiya" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox id="txtVaidyakiya" runat="server"  CssClass="form-control"></asp:TextBox>        </div></div>
        <div class="form-group">
               <asp:Label ID="lblKirkod" runat="server" Text="Kirkod" CssClass="col-lg-3 control-label  "></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtKirkod" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
       <div class="col-lg-5">
            <asp:TextBox id="txtKirkod" runat="server" CssClass="form-control" ></asp:TextBox>
       </div> 
            </div>
            <div class="form-group">
                <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label  "></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox id="txtDate" runat="server"  CssClass="form-control"></asp:TextBox>        
            <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
            </ajaxToolkit:CalendarExtender>
                </div></div>
        <div class="form-group">
                <asp:Label ID="lblReason" runat="server" Text="Reason" CssClass="col-lg-3 control-label  "></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtReason" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox id="txtReason" runat="server"  CssClass="form-control"></asp:TextBox>        </div></div>
        
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
                    InsertCommand="INSERT INTO [Office] ([HolidayTakenArjit], [HolidayTakenVaidyakiya], [HolidayTakenKirkod], [HolidayYear], [HolidayEmployeeName]) VALUES (@HolidayTakenArjit, @HolidayTakenVaidyakiya, @HolidayTakenKirkod, @HolidayYear, @HolidayEmployeeName)" 
                    SelectCommand="SELECT [SrNo], [HolidayTakenArjit], [HolidayTakenVaidyakiya], [HolidayTakenKirkod], [HolidayYear], [HolidayEmployeeName] FROM [Office] WHERE (([HolidayYear] = @HolidayYear) AND ([HolidayEmployeeName] = @HolidayEmployeeName))" 
                    
                    
                UpdateCommand="UPDATE Office SET HolidayTakenArjit = @HolidayTakenArjit, HolidayTakenVaidyakiya = @HolidayTakenVaidyakiya, HolidayTakenKirkod = @HolidayTakenKirkod WHERE (HolidayYear = @HolidayYear) AND (HolidayEmployeeName = @HolidayEmployeeName)">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="HolidayTakenArjit" Type="String" />
                        <asp:Parameter Name="HolidayTakenVaidyakiya" Type="String" />
                        <asp:Parameter Name="HolidayTakenKirkod" Type="String" />
                        <asp:Parameter Name="HolidayYear" Type="String" />
                        <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="HolidayEmployeeName" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtArjit" Name="HolidayTakenArjit" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtVaidyakiya" Name="HolidayTakenVaidyakiya" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtKirkod" Name="HolidayTakenKirkod" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="HolidayEmployeeName" 
                            PropertyName="SelectedValue" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
       
                <asp:SqlDataSource ID="SqldsRemaining" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                    InsertCommand="INSERT INTO [Office] ([HolidayYear], [HolidayEmployeeName], [RemainingVaidyakiya], [RemainingArjit], [RemainingKirkod]) VALUES (@HolidayYear, @HolidayEmployeeName, @RemainingVaidyakiya, @RemainingArjit, @RemainingKirkod)" 
                    SelectCommand="SELECT [SrNo], [HolidayYear], [HolidayEmployeeName], [RemainingVaidyakiya], [RemainingArjit], [RemainingKirkod] FROM [Office]" 
                    
                UpdateCommand="UPDATE Office SET RemainingVaidyakiya = RemainingVaidyakiya - @RemainingVaidyakiya, RemainingArjit = RemainingArjit - @RemainingArjit, RemainingKirkod = RemainingKirkod - @RemainingKirkod WHERE (HolidayYear = @HolidayYear) AND (HolidayEmployeeName = @HolidayEmployeeName)">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="HolidayYear" Type="String" />
                        <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                        <asp:Parameter Name="RemainingVaidyakiya" Type="String" />
                        <asp:Parameter Name="RemainingArjit" Type="String" />
                        <asp:Parameter Name="RemainingKirkod" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtVaidyakiya" Name="RemainingVaidyakiya" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtArjit" Name="RemainingArjit" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtKirkod" Name="RemainingKirkod" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="HolidayEmployeeName" 
                            PropertyName="SelectedValue" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>            
       
                <asp:SqlDataSource ID="Sqlds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                SelectCommand="SELECT [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod] FROM [Office] WHERE (([HolidayYear] = @HolidayYear) AND ([HolidayEmployeeName] = @HolidayEmployeeName))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="HolidayEmployeeName" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [Office] ([HolidayYear], [HolidayEmployeeName], [HolidayDate], [HolidayReason]) VALUES (@HolidayYear, @HolidayEmployeeName, @HolidayDate, @HolidayReason)" 
                SelectCommand="SELECT [HolidayYear], [HolidayEmployeeName], [HolidayDate], [HolidayReason], [SrNo] FROM [Office]" 
                UpdateCommand="UPDATE [Office] SET [HolidayYear] = @HolidayYear, [HolidayEmployeeName] = @HolidayEmployeeName, [HolidayDate] = @HolidayDate, [HolidayReason] = @HolidayReason WHERE [SrNo] = @SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="HolidayYear" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="HolidayEmployeeName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="HolidayDate" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtReason" Name="HolidayReason" 
                        PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HolidayYear" Type="String" />
                    <asp:Parameter Name="HolidayEmployeeName" Type="String" />
                    <asp:Parameter DbType="Date" Name="HolidayDate" />
                    <asp:Parameter Name="HolidayReason" Type="String" />
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


