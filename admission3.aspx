<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission3.aspx.cs" Inherits="admission3" %>

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
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <legend> <asp:Label ID="lblMembersInformation" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="8. Member's Information"></asp:Label>
    </legend>
  
       
                           <div class="form-group">
                    <asp:Label ID="lblFullName" runat="server"  cssclass="col-lg-3 control-label"  Font-Names="Arial Black" Font-Size="Medium" Text="Full Name"></asp:Label>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtFullName" ErrorMessage="RequiredFieldValidator" 
                                   Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <div class="col-lg-5">
                           <asp:TextBox ID="txtFullName" runat="server" cssclass="form-control"></asp:TextBox>
                           </div></div>
                     <div class="form-group">
                    <asp:Label ID="lblDateOfBirth" runat="server"  CssClass="col-lg-3 control-label " Font-Names="Arial Black" Font-Size="Medium" Text="Date Of Birth"></asp:Label>
                       
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="txtDateOfBirth" ErrorMessage="RequiredFieldValidator" 
                             Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                       
                    <div class="col-lg-5">
        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" 
                            runat="server" BehaviorID="txtDateOfBirth_CalendarExtender" 
                            TargetControlID="txtDateOfBirth">
                        </ajaxToolkit:CalendarExtender>
        </div></div>

         
                   <div class="form-group">
                    <asp:Label ID="lblStandard" runat="server"  CssClass="col-lg-3 control-label " Font-Names="Arial Black" Font-Size="Medium" Text="Standard"></asp:Label>

                
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                           ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>

                
                <div class="col-lg-5">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Standard" 
                        DataValueField="Standard" ForeColor="Black">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Standard] FROM [diststud] WHERE ([SchoolType] = @SchoolType)">
                        <SelectParameters>
                            <asp:SessionParameter Name="SchoolType" SessionField="SchoolType" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </div></div>
                   <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="btn3" runat="server" CssClass="btn btn-default" 
              Text="Add" onclick="btn3_Click" />
          <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary" 
              Text="Next" NavigateUrl="~/admission.aspx"></asp:HyperLink>
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource2" Width="100%">
              <Columns>
                  <asp:BoundField DataField="StudFullName" HeaderText="StudFullName" 
                      SortExpression="StudFullName" />
                  <asp:BoundField DataField="StudDOB" HeaderText="StudDOB" 
                      SortExpression="StudDOB" />
                  <asp:BoundField DataField="StudStandard" HeaderText="StudStandard" 
                      SortExpression="StudStandard" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [StudFullName], [StudDOB], [StudStandard] FROM [StudentTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
              <SelectParameters>
                  <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                  <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
            <asp:SqlDataSource ID="SqlDsMemData" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [StudentTable] WHERE [SrNo] = @original_SrNo" 
            InsertCommand="INSERT INTO [StudentTable] ([StudFullName], [StudDOB], [StudStandard], [SchoolName], [UnitName], [Year], [UnitType], [EmailId], [Password]) VALUES (@StudFullName, @StudDOB, @StudStandard, @SchoolName, @UnitName, @Year, @UnitType, @EmailId, @Password)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [SrNo], [StudFullName], [StudDOB], [StudStandard], [SchoolName], [UnitName], [Year], [UnitType], [EmailId], [Password] FROM [StudentTable]" 
            
            
            
            UpdateCommand="UPDATE [StudentTable] SET [StudFullName] = @StudFullName, [StudDOB] = @StudDOB, [StudStandard] = @StudStandard, [SchoolName] = @SchoolName, [UnitName] = @UnitName, [Year] = @Year, [UnitType] = @UnitType, [EmailId] = @EmailId, [Password] = @Password WHERE [SrNo] = @original_SrNo">
                <DeleteParameters>
                    <asp:Parameter Name="original_SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtFullName" Name="StudFullName" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtDateOfBirth" DbType="Date" Name="StudDOB" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="StudStandard" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:SessionParameter Name="SchoolName" SessionField="SchoolName" 
                        Type="String" />
                    <asp:SessionParameter Name="UnitName" SessionField="UnitName" Type="String" />
                    <asp:SessionParameter Name="Year" SessionField="Year" Type="String" />
                    <asp:SessionParameter Name="UnitType" SessionField="UnitType" Type="String" />
                    <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
                    <asp:SessionParameter Name="Password" SessionField="pwd" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudFullName" Type="String" />
                    <asp:Parameter DbType="Date" Name="StudDOB" />
                    <asp:Parameter Name="StudStandard" Type="String" />
                    <asp:Parameter Name="SchoolName" Type="String" />
                    <asp:Parameter Name="UnitName" Type="String" />
                    <asp:Parameter Name="Year" Type="String" />
                    <asp:Parameter Name="UnitType" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="original_SrNo" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
     
        </fieldset>
        <hr />
        <marquee direction="left" behavior="alternate"><asp:label ID="lbl" runat="server" CssClass="alert" Text="Click on Add button to add a new Member and once you add all Members then only click on Next button" ForeColor="#0099FF"></asp:label></marquee>
    
       <br /><br /><br /><br /><br /><br /><br />  <hr />
    <center>
        <div>
    <table style="height:113px;">
    <tr><td rowspan="2" width="107px" align="center">
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/admission2.aspx">Back</asp:HyperLink></center>
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

