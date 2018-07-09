<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sgpuraskar1.aspx.cs" Inherits="originalSgpuraskar" %>

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
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="DropDownList4" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" 
                DataTextField="Year" DataValueField="Year" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                SelectCommand="SELECT DISTINCT Year FROM SchoolTable WHERE (Year IS NOT NULL)">
            </asp:SqlDataSource>
        </div></div>
    <div class="form-group">
        <asp:Label ID="lblSelectSchoolName" runat="server" Text="Select School Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="SchoolName" DataValueField="SchoolName" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                SelectCommand="SELECT DISTINCT SchoolName FROM SchoolTable WHERE (Year = @Year) AND (SchoolName IS NOT NULL)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
       <div class="form-group">
        <asp:Label ID="lblSelectUnitName" runat="server" Text="Select Unit Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqldsddl" 
                DataTextField="UnitName" DataValueField="UnitName" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sqldsddl" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                
                SelectCommand="SELECT UnitName FROM SchoolTable WHERE (SchoolName = @SchoolName) AND (Year = @Year) AND (UnitName IS NOT NULL)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
        <div class="form-group">
        <asp:Label ID="lblSelectUnitLeaderName" runat="server" Text="Select Unit Leader Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="FullName" DataValueField="FullName" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                
                SelectCommand="SELECT FullName FROM UnitLeaderTable WHERE (SchoolName = @SchoolName) AND (UnitName = @UnitName) AND (Year = @Year) AND (FullName IS NOT NULL)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="UnitName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
          <div class="form-group">
             <asp:Label ID="lbluAddress" runat="server" Text="Address" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ControlToValidate="txtuAddress" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div class="col-lg-5">
                      <asp:TextBox ID="txtuAddress" runat="server" class="form-control"></asp:TextBox>
             </div></div>
        <div class="form-group">
           <asp:Label ID="lblReceivedDate" runat="server" Text="Received Date" CssClass="col-lg-3 control-label "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                      ControlToValidate="txtReceivedDate" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
                <asp:TextBox ID="txtReceivedDate" runat="server" class="form-control"></asp:TextBox>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                 <ajaxToolkit:CalendarExtender ID="txtReceivedDate_CalendarExtender" 
                     runat="server" BehaviorID="txtReceivedDate_CalendarExtender" 
                     TargetControlID="txtReceivedDate">
                 </ajaxToolkit:CalendarExtender>
              </div></div>
        <div class="form-group">
            <asp:Label ID="lblPlace" runat="server" Text="Place" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                      ControlToValidate="txtPlace" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
                 <asp:TextBox ID="txtPlace" runat="server" class="form-control"></asp:TextBox>
             </div> </div>
        <div class="form-group">
             <asp:Label ID="lblCheifGuest" runat="server" Text="Cheif Guest" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                      ControlToValidate="txtChiefGuest" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
                 <asp:TextBox ID="txtChiefGuest" runat="server" class="form-control"></asp:TextBox>
             </div> </div>
        <div class="form-group">
            <asp:Label ID="lblPhoto" runat="server" Text="Photo" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                      ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
             <div  class="col-lg-5">
  <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" />

             </div> </div>
        <div class="form-group">
             <asp:Label ID="lblCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label  "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                      ControlToValidate="fuCertificate" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
                      <asp:FileUpload ID="fuCertificate" runat="server" CssClass="form-control" />
              </div> </div>
              <div class="form-group">
             <asp:Label ID="lblLetter" runat="server" Text="Letter" CssClass="col-lg-3 control-label "></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="fuLetter" ErrorMessage="RequiredFieldValidator" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>
              <div class="col-lg-5">
                      <asp:FileUpload ID="fuLetter" runat="server" CssClass="form-control" />
              </div> </div>
        <hr />
        <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
        <asp:SqlDataSource ID="SqldsAdarsh" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [UnitLeaderTable] ([Year], [SchoolName], [UnitName], [FullName], [UnitLeaderAddress], [AdarshReceivedDate], [AdarshPlace], [AdarshChiefGuest], [AdarshPhoto], [AdarshCertificate], [AdarshLetter]) VALUES (@Year, @SchoolName, @UnitName, @FullName, @UnitLeaderAddress, @AdarshReceivedDate, @AdarshPlace, @AdarshChiefGuest, @AdarshPhoto, @AdarshCertificate, @AdarshLetter)" 
            SelectCommand="SELECT [SrNo], [Year], [SchoolName], [UnitName], [FullName], [UnitLeaderAddress], [AdarshReceivedDate], [AdarshPlace], [AdarshChiefGuest], [AdarshPhoto], [AdarshCertificate], [AdarshLetter] FROM [UnitLeaderTable]" 
            
            
            
            
            UpdateCommand="UPDATE [UnitLeaderTable] SET [UnitLeaderAddress] = @UnitLeaderAddress, [AdarshReceivedDate] = @AdarshReceivedDate, [AdarshPlace] = @AdarshPlace, [AdarshChiefGuest] = @AdarshChiefGuest, [AdarshPhoto] = @AdarshPhoto, [AdarshCertificate] = @AdarshCertificate, [AdarshLetter] = @AdarshLetter WHERE [Year] = @Year AND[SchoolName] = @SchoolName AND [UnitName] = @UnitName AND [FullName] = @FullName ">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="UnitLeaderAddress" Type="String" />
                <asp:Parameter Name="AdarshReceivedDate" Type="DateTime" />
                <asp:Parameter Name="AdarshPlace" Type="String" />
                <asp:Parameter Name="AdarshChiefGuest" Type="String" />
                <asp:Parameter Name="AdarshPhoto" Type="String" />
                <asp:Parameter Name="AdarshCertificate" Type="String" />
                <asp:Parameter Name="AdarshLetter" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="UnitName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="FullName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtuAddress" Name="UnitLeaderAddress" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtReceivedDate" Name="AdarshReceivedDate" 
                    PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="txtPlace" Name="AdarshPlace" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtChiefGuest" Name="AdarshChiefGuest" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fuPhoto" Name="AdarshPhoto" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuCertificate" Name="AdarshCertificate" 
                    PropertyName="FileName" Type="String" />
                <asp:ControlParameter ControlID="fuLetter" Name="AdarshLetter" 
                    PropertyName="FileName" Type="String" />
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/SG puraskar.aspx">Back</asp:HyperLink></center>
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

