<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission2.aspx.cs" Inherits="admission22" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
   <legend>
                    <asp:Label ID="lblUnitLeadersTrainingInformation" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="7. Unit Leader's Training Information"></asp:Label>
               </legend>

            <div class="form-group"> 
                    <asp:Label ID="lblFullName" runat="server" Font-Names="Arial Black" cssclass="col-lg-3 control-label" Font-Size="Medium" Text="Full Name"></asp:Label>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFullName" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                  <div class="col-lg-5">

              <asp:TextBox ID="txtFullName" runat="server" cssclass="form-control"></asp:TextBox>
              </div></div>

                   <div class="form-group">
                    <asp:Label ID="lblTrainingName" runat="server" cssclass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="Training Name"></asp:Label>

                   

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                           ControlToValidate="txtTrainingName" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                   

               <div class="col-lg-5">
              <asp:TextBox ID="txtTrainingName" runat="server" cssclass="form-control"></asp:TextBox>
              </div></div>
                  
                  <div class="form-group">
                    <asp:Label ID="lblCertificateNo" runat="server" cssclass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="Certificate No."></asp:Label>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                          ControlToValidate="txtCertificateNo" ErrorMessage="RequiredFieldValidator" 
                          Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                <div class="col-lg-5">
              <asp:TextBox ID="txtCertificateNo" runat="server" cssclass="form-control"></asp:TextBox>
              </div></div>
                   <div class="form-group">

                    <asp:Label ID="lblDate" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="Date" CssClass="col-lg-3 control-label"></asp:Label>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                           ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                   <div class="col-lg-5">
              <asp:TextBox ID="txtDate" runat="server" cssclass="form-control"></asp:TextBox>
                       <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                           BehaviorID="txtDate_CalendarExtender" TargetControlID="txtDate">
                       </ajaxToolkit:CalendarExtender>
              </div></div>
                  
                  <div class="form-group">

                    <asp:Label ID="lblAdhikarpatraNo" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="Adhikarpatra No."></asp:Label>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                          ControlToValidate="txtAdhikarpatraNo" ErrorMessage="RequiredFieldValidator" 
                          Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                  <div class="col-lg-5">

              <asp:TextBox ID="txtAdhikarpatraNo" runat="server" cssclass="form-control"></asp:TextBox>
              </div></div>
              <div class="form-group">
                  <asp:Label ID="lblSupportingLeader" runat="server" Text="Supporting Leader" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
              <div class="col-lg-5">
                  <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
              </div>
              </div>
                    <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="btn3" runat="server" CssClass="btn btn-default" 
              Text="Add" onclick="btn3_Click" />
              <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary" Text="Next" NavigateUrl="~/admission3.aspx"></asp:HyperLink>
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:SqlDataSource ID="SqlDsUnitLeaderdata" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @original_SrNo" 
              InsertCommand="INSERT INTO [UnitLeaderTable] ([SchoolName], [UnitName], [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo], [UnitType], [SupportingLeader], [EmailId], [Password], [Year]) VALUES (@SchoolName, @UnitName, @FullName, @TrainingName, @CertificateNo, @Date, @AdhikarpatraNo, @UnitType, @SupportingLeader, @EmailId, @Password, @Year)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [SrNo], [SchoolName], [UnitName], [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo], [UnitType], [SupportingLeader], [EmailId], [Password], [Year] FROM [UnitLeaderTable]" 
              
                                                
              UpdateCommand="UPDATE [UnitLeaderTable] SET [SchoolName] = @SchoolName, [UnitName] = @UnitName, [FullName] = @FullName, [TrainingName] = @TrainingName, [CertificateNo] = @CertificateNo, [Date] = @Date, [AdhikarpatraNo] = @AdhikarpatraNo, [UnitType] = @UnitType, [SupportingLeader] = @SupportingLeader, [EmailId] = @EmailId, [Password] = @Password, [Year] = @Year WHERE [SrNo] = @original_SrNo">
              <DeleteParameters>
                  <asp:Parameter Name="original_SrNo" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:SessionParameter Name="SchoolName" SessionField="SchoolName" 
                      Type="String" />
                  <asp:SessionParameter Name="UnitName" SessionField="UnitName" Type="String" />
                  <asp:ControlParameter ControlID="txtFullName" Name="FullName" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtTrainingName" Name="TrainingName" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtCertificateNo" Name="CertificateNo" 
                      PropertyName="Text" Type="Int32" />
                  <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="Date" 
                      PropertyName="Text" />
                  <asp:ControlParameter ControlID="txtAdhikarpatraNo" Name="AdhikarpatraNo" 
                      PropertyName="Text" Type="Int32" />
                  <asp:SessionParameter Name="UnitType" SessionField="UnitType" Type="String" />
                  <asp:ControlParameter ControlID="CheckBox1" Name="SupportingLeader" 
                      PropertyName="Checked" Type="String" />
                  <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                  <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
                  <asp:SessionParameter Name="Year" SessionField="Year" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="SchoolName" Type="String" />
                  <asp:Parameter Name="UnitName" Type="String" />
                  <asp:Parameter Name="FullName" Type="String" />
                  <asp:Parameter Name="TrainingName" Type="String" />
                  <asp:Parameter Name="CertificateNo" Type="Int32" />
                  <asp:Parameter DbType="Date" Name="Date" />
                  <asp:Parameter Name="AdhikarpatraNo" Type="Int32" />
                  <asp:Parameter Name="UnitType" Type="String" />
                  <asp:Parameter Name="SupportingLeader" Type="String" />
                  <asp:Parameter Name="EmailId" Type="String" />
                  <asp:Parameter Name="Password" Type="String" />
                  <asp:Parameter Name="Year" Type="String" />
                  <asp:Parameter Name="original_SrNo" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" Width="100%">
              <Columns>
                  <asp:BoundField DataField="FullName" HeaderText="FullName" 
                      SortExpression="FullName" />
                  <asp:BoundField DataField="TrainingName" HeaderText="TrainingName" 
                      SortExpression="TrainingName" />
                  <asp:BoundField DataField="CertificateNo" HeaderText="CertificateNo" 
                      SortExpression="CertificateNo" />
                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                  <asp:BoundField DataField="AdhikarpatraNo" HeaderText="AdhikarpatraNo" 
                      SortExpression="AdhikarpatraNo" />
                  <asp:BoundField DataField="SupportingLeader" HeaderText="SupportingLeader" 
                      SortExpression="SupportingLeader" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo], [SupportingLeader] FROM [UnitLeaderTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
              <SelectParameters>
                  <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                  <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>

      </div>
    </div></fieldset>
    <hr />
        <marquee direction="left" behavior="alternate"><asp:label ID="lbl" runat="server" CssClass="alert" Text="Click on Add button to add a new Member and once you add all Members then only click on Next button" ForeColor="#0099FF"></asp:label></marquee>
        
    <br /><br /><br />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/admission1.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></center>
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
