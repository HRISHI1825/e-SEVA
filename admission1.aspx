<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission1.aspx.cs" Inherits="admission1" %>

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
<form id="form1" runat="server" class="form-horizontal">
           <br />
           <fieldset >

        <table width="100%">
        <tr>
            <td>

                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/img/logo1.jpg" Width="258px" />

            </td>
            <td>
        <center>
    
     <asp:Label ID="lbl1" runat="server" Text="Maharashtra State India Scouts and Guides" Font-Bold="True" Font-Names="Arial Black" Font-Italic="False" Font-Size="X-Large"></asp:Label>
    <br />
     <asp:Label ID="lbl2" runat="server" Text="79, F Road, Marine Drive, Mumbai-400 020" Font-Bold="True" Font-Names="Arial Black" Font-Italic="False"></asp:Label>
        
            <br />
     <asp:Label ID="lbl3" runat="server" Text="Unit Registration Form" Font-Bold="True" Font-Names="Arial Black" Font-Italic="False" Font-Size="X-Large"></asp:Label>
        
            <br />
     <asp:Label ID="lbl4" runat="server" Text="Year" Font-Bold="True" Font-Names="Arial Black" Font-Italic="False" Font-Size="Medium"></asp:Label>
        
            &nbsp;<table><tr><td><asp:TextBox ID="txtYear" runat="server" CssClass="form-control" Height="35px" Width="90px"></asp:TextBox></td><td>-</td><td><asp:TextBox ID="txtYear1" runat="server" CssClass="form-control" Height="35px" Width="90px"></asp:TextBox></td></tr></table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtYear" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator><asp:RequiredFieldValidator 
                ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtYear1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp</center>
            <center><span class="help-block"> <asp:Label ID="Label1" runat="server" Text="Eg. 2015-16 " Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium"></asp:Label></span></center>
                </td>
            <td>
                <asp:Label ID="lbl5" runat="server" Text="District" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="X-Large"></asp:Label>&nbsp<hr />
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="District" 
                    DataValueField="District" ForeColor="Black">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [District] FROM [diststud] WHERE ([District] IS NOT NULL)">
                </asp:SqlDataSource>
                

                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="DropDownList2" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                

            </td>
            </tr>
            </table>
           
        <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
    
           <div class="jumbotron">
           
                <div class="form-group">
            <asp:Label ID="lblUnitType" runat="server" Font-Bold="False" Font-Names="Arial Black" CssClass="col-lg-3 control-label" Font-Size="Medium" Text="1. Unit Type"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="ddl1" ErrorMessage="RequiredFieldValidator" Font-Bold="True" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
<asp:DropDownList ID="ddl1" runat="server" Font-Names="Arial Black" cssclass="dropdown">                            
                <asp:ListItem>Bunny</asp:ListItem>
                <asp:ListItem>Cub</asp:ListItem>
                <asp:ListItem>Scout</asp:ListItem>
                <asp:ListItem>Rover</asp:ListItem>
                <asp:ListItem>Bulbul</asp:ListItem>
                <asp:ListItem>Guide</asp:ListItem>
                <asp:ListItem>Ranger</asp:ListItem>
                <asp:ListItem>Hawai</asp:ListItem>
                <asp:ListItem>Sagri</asp:ListItem>
              
            </asp:DropDownList>
                   </div></div>
                <div class="form-group">
                    <asp:Label ID="lblUnitName" runat="server"  CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="2. Unit Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtUnitName" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <div class="col-lg-5">
              <asp:TextBox ID="txtUnitName" runat="server" CssClass="form-control"></asp:TextBox>
                   </div></div>
                   <div class="form-group">
                    <asp:Label ID="lblSchoolType" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="4. School Type"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                           ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown" 
                      DataSourceID="SqlDataSource2" DataTextField="SchoolType" 
                      DataValueField="SchoolType">
                      </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT DISTINCT [SchoolType] FROM [diststud] WHERE ([SchoolType] IS NOT NULL)">
                  </asp:SqlDataSource>
               </div></div>
                   <div class="form-group">
                    <asp:Label ID="lblSchoolName" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="4. School Name"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                           ControlToValidate="txtSchoolName" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
              <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control"></asp:TextBox>
               </div></div>
               <div class="form-group">
                    <asp:Label ID="lblPinCode" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="5. PinCode"></asp:Label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                           ControlToValidate="txtPinCode" ErrorMessage="RequiredFieldValidator" 
                           Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
              <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" Width="120px"></asp:TextBox>
               </div></div>
                
                <div class="form-group">
                    <asp:Label ID="lblPermanentAddress" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="6. Permanent Address"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtSendersAddress" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
               <div class="col-lg-5">
              <asp:TextBox ID="txtSendersAddress" runat="server" CssClass="form-control"></asp:TextBox>
             </div></div>
             <div class="form-group">
                    <asp:Label ID="lblTaluka" runat="server" CssClass="col-lg-3 control-label" Font-Names="Arial Black" Font-Size="Medium" Text="7. Taluka"></asp:Label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlTaluka" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <div class="col-lg-5">
                          <asp:DropDownList ID="ddlTaluka" runat="server" CssClass="dropdown" 
                              DataSourceID="SqlDataSource3" DataTextField="Taluka" DataValueField="Taluka">
                              </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                              SelectCommand="SELECT [Taluka] FROM [diststud] WHERE ([District] = @District)">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList2" Name="District" 
                                      PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
              </div></div>
                <div class="form-group">
                    <asp:Label ID="lblDurdhwaniNo" CssClass="col-lg-3 control-label" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="8. Contact No."></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtContactNo" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
       <%--             <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtContactNo" ErrorMessage="RangeValidator" Font-Bold="True" 
                        ForeColor="Red" MaximumValue="15" MinimumValue="10" Type="Integer">Minimum 10 digits</asp:RangeValidator>--%>
                    <div class="col-lg-5">
              <asp:TextBox ID="txtContactNo" CssClass="form-control" runat="server"></asp:TextBox>
                </div></div>
                 <div class="form-group">
                    <asp:Label ID="lblEmail" CssClass="col-lg-3 control-label" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="9. Email Id"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                         ControlToValidate="txtEmailId" ErrorMessage="RequiredFieldValidator" 
                         Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="Enter valid EmailId" 
                        Font-Bold="True" ForeColor="Red" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <div class="col-lg-5">
              <asp:TextBox ID="txtEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                </div></div>
                <div class="form-group">
                    <asp:Label ID="lblPwd" CssClass="col-lg-3 control-label" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="10. Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="RfPwd" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpwd" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                   <div class="col-lg-5">
              <asp:TextBox ID="txtpwd" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div></div>
                <div class="form-group">
                    <asp:Label ID="lblConfirm" CssClass="col-lg-3 control-label" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="11. Confirm Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="Rfconfirm" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
                        ControlToValidate="txtConfirm">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpwd" ControlToValidate="txtConfirm" 
                        ErrorMessage="CompareValidator" Font-Bold="True" ForeColor="Red">Not Matching</asp:CompareValidator>
                   <div class="col-lg-5">
              <asp:TextBox ID="txtConfirm" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div></div>
                <div class="form-group">
                    <asp:Label ID="lblTribleSchool" CssClass="col-lg-3 control-label" runat="server" Font-Names="Arial Black" Font-Size="Medium" Text="12. Trible School"></asp:Label>
                    <div class="col-lg-5">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes"/>
                </div></div>

            <hr />
            <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" CssClass="btn btn-default" Text="Cancel" />
          <asp:Button ID="btn2" runat="server" CssClass="btn btn-primary" Text="Next" 
              onclick="btn2_Click" />
      </div>
    </div>
    </div>   <asp:SqlDataSource ID="SqldsSchooldata" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @original_SrNo" 
              InsertCommand="INSERT INTO SchoolTable(UnitType, UnitName, SchoolName, PermanentAddress, EmailId, Password, SchoolType, Taluka, Zilla, TribleSchool, Year, ContactNo, Status) VALUES (@UnitType, @UnitName, @SchoolName, @PermanentAddress, @EmailId, @Password, @SchoolType, @Taluka, @Zilla, @TribleSchool, @Year, @ContactNo, @Status)" 
              OldValuesParameterFormatString="original_{0}" 
              SelectCommand="SELECT [SrNo], [UnitType], [UnitName], [SchoolName], [PermanentAddress], [EmailId], [Password], [SchoolType], [Taluka], [Zilla], [TribleSchool], [Year], [ContactNo] FROM [SchoolTable]" 
                   
                   
                   
                   
                   
                   
                   UpdateCommand="UPDATE [SchoolTable] SET [UnitType] = @UnitType, [UnitName] = @UnitName, [SchoolName] = @SchoolName, [PermanentAddress] = @PermanentAddress, [EmailId] = @EmailId, [Password] = @Password, [SchoolType] = @SchoolType, [Taluka] = @Taluka, [Zilla] = @Zilla, [TribleSchool] = @TribleSchool, [Year] = @Year, [ContactNo] = @ContactNo WHERE [SrNo] = @original_SrNo">
              <DeleteParameters>
                  <asp:Parameter Name="original_SrNo" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="ddl1" Name="UnitType" 
                      PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="txtUnitName" Name="UnitName" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="HiddenField2" Name="SchoolName" 
                      PropertyName="Value" Type="String" />
                  <asp:ControlParameter ControlID="txtSendersAddress" Name="PermanentAddress" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                      Type="String" />
                  <asp:ControlParameter ControlID="txtpwd" Name="Password" PropertyName="Text" 
                      Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="SchoolType" 
                      PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="ddlTaluka" Name="Taluka" PropertyName="SelectedValue" 
                      Type="String" />
                  <asp:ControlParameter ControlID="DropDownList2" Name="Zilla" PropertyName="SelectedValue" 
                      Type="String" />
                  <asp:ControlParameter ControlID="CheckBox1" Name="TribleSchool" 
                      PropertyName="Checked" Type="String" />
                  <asp:ControlParameter ControlID="HiddenField1" Name="Year" PropertyName="Value" 
                      Type="String" />
                  <asp:ControlParameter ControlID="txtContactNo" Name="ContactNo" 
                      PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="HiddenField3" Name="Status" 
                      PropertyName="Value" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="UnitType" Type="String" />
                  <asp:Parameter Name="UnitName" Type="String" />
                  <asp:Parameter Name="SchoolName" Type="String" />
                  <asp:Parameter Name="PermanentAddress" Type="String" />
                  <asp:Parameter Name="EmailId" Type="String" />
                  <asp:Parameter Name="Password" Type="String" />
                  <asp:Parameter Name="SchoolType" Type="String" />
                  <asp:Parameter Name="Taluka" Type="String" />
                  <asp:Parameter Name="Zilla" Type="String" />
                  <asp:Parameter Name="TribleSchool" Type="String" />
                  <asp:Parameter Name="Year" Type="String" />
                  <asp:Parameter Name="ContactNo" Type="String" />
                  <asp:Parameter Name="original_SrNo" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
    
          <asp:SqlDataSource ID="Sqlds" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              OldValuesParameterFormatString="original_{0}" 
              
                   
                   SelectCommand="SELECT [Password] FROM [SchoolTable] WHERE (([EmailId] = @EmailId) AND ([Password] = @Password))">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtEmailId" Name="EmailId" PropertyName="Text" 
                      Type="String" />
                  <asp:ControlParameter ControlID="txtpwd" Name="Password" PropertyName="Text" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
    
               <asp:HiddenField ID="HiddenField1" runat="server" />
               <asp:HiddenField ID="HiddenField2" runat="server" />
    
               <asp:HiddenField ID="HiddenField3" runat="server" />
    
            </fieldset>
             <hr />
    <center>
        <div>
    <table style="height:113px;">
    <tr><td rowspan="2" width="107px" align="center">
        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
            Width="100px" />
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Default.aspx">Back</asp:HyperLink></center>
        </td><td width="228px">
     <center>   
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
             Font-Size="Large"  ForeColor="#0099FF" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></center>
        </td><td rowspan="2"  width="107px" align="center">
        <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/icons/eseva.jpg" 
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
