<%@ Page Language="C#" AutoEventWireup="true" CodeFile="originalAdhikar.aspx.cs" Inherits="originalAdhikar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/bootstrap_9.css" rel="stylesheet" />
    <link href="themes/custom_9.css" rel="stylesheet" />
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="DropDownList4" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" 
                DataTextField="Year" DataValueField="Year" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable]">
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
                DataTextField="SchoolName" DataValueField="SchoolName" 
                AutoPostBack="True" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                SelectCommand="SELECT DISTINCT [SchoolName] FROM [SchoolTable] WHERE ([Year] = @Year)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
         <div class="form-group">
        <asp:Label ID="lblSelectUnitName" runat="server" Text="Select Unit Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sqldsddl" 
                DataTextField="UnitName" DataValueField="UnitName" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sqldsddl" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                SelectCommand="SELECT [UnitName] FROM [SchoolTable] WHERE (([SchoolName] = @SchoolName) AND ([Year] = @Year))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
        <div class="form-group">
        <asp:Label ID="lblSelectUnitLeaderName" runat="server" Text="Select Unit Leader Name" 
                 CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="FullName" DataValueField="FullName" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                SelectCommand="SELECT [FullName] FROM [UnitLeaderTable] WHERE (([SchoolName] = @SchoolName) AND ([UnitName] = @UnitName) AND ([Year] = @Year))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="UnitName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div></div>
           <div class="form-group">
        <asp:Label ID="lblCharterNo" runat="server" Text="Charter Number" CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="txtCharterNumber" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtCharterNumber" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
    <div class="form-group">
        <asp:Label ID="lblDate" runat="server" Text="Date" CssClass="col-lg-3 control-label"></asp:Label>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ControlToValidate="txtDate" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
   <div class="form-group">
       <asp:Label ID="lblWarrentNo" runat="server" Text="Warrant Number" CssClass="col-lg-3 control-label"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                ControlToValidate="txtWarrantNumber" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        <div class="col-lg-5">
            <asp:TextBox ID="txtwarrantnumber" runat="server" CssClass="form-control"></asp:TextBox>
        </div></div>
        <div class="form-group">
        <asp:Label ID="lblRenewalDate" runat="server" Text="Renewal Date" CssClass="col-lg-3 control-label"></asp:Label>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ForeColor="Red" ControlToValidate="txtRenewalDate">*</asp:RequiredFieldValidator>
            <div class="col-lg-5">
            <asp:TextBox ID="txtRenewaldate" runat="server" CssClass="form-control"></asp:TextBox>
            </div></div>
    <div class="form-group">
             <asp:Label ID="lblCertificate" runat="server" Text="Certificate" CssClass="col-lg-3 control-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                ControlToValidate="fuLetter" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
      <div class="col-lg-5">
            <asp:FileUpload ID="fuletter" runat="server" CssClass="form-control"  />
       </div>
   </div>
             <div class="form-group">
      <div class="col-lg-5 col-lg-offset-3">
          <asp:Button ID="btn1" runat="server" Text="Cancel" CssClass="btn btn-default" />
          <asp:Button ID="btn2" runat="server" Text="Submit" CssClass="btn btn-primary" 
              onclick="btn2_Click" />
      </div>
    </div>
      
            <hr />
            <asp:SqlDataSource ID="SqldsAdhikar" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @SrNo" 
                InsertCommand="INSERT INTO [UnitLeaderTable] ([Year], [SchoolName], [UnitName], [FullName], [AdhikarCharterNumber], [AdhikarDate], [AdhikarWarrantnumber], [AdhikarRenewalDate], [AdhikarCertificate]) VALUES (@Year, @SchoolName, @UnitName, @FullName, @AdhikarCharterNumber, @AdhikarDate, @AdhikarWarrantnumber, @AdhikarRenewalDate, @AdhikarCertificate)" 
                SelectCommand="SELECT [Year], [SchoolName], [UnitName], [FullName], [AdhikarCharterNumber], [AdhikarDate], [AdhikarWarrantnumber], [AdhikarRenewalDate], [AdhikarCertificate], [SrNo] FROM [UnitLeaderTable]" 
                
                
                
                UpdateCommand="UPDATE [UnitLeaderTable] SET [AdhikarCharterNumber] = @AdhikarCharterNumber, [AdhikarDate] = @AdhikarDate, [AdhikarWarrantnumber] = @AdhikarWarrantnumber, [AdhikarRenewalDate] = @AdhikarRenewalDate, [AdhikarCertificate] = @AdhikarCertificate WHERE [Year] = @Year AND [SchoolName] = @SchoolName AND [UnitName] = @UnitName AND [FullName] = @FullName">
                <DeleteParameters>
                    <asp:Parameter Name="SrNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Year" Type="Int32" />
                    <asp:Parameter Name="SchoolName" Type="String" />
                    <asp:Parameter Name="UnitName" Type="String" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="AdhikarCharterNumber" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="AdhikarDate" />
                    <asp:Parameter Name="AdhikarWarrantnumber" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="AdhikarRenewalDate" />
                    <asp:Parameter Name="AdhikarCertificate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="DropDownList4" Name="Year" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="SchoolName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="UnitName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="FullName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtCharterNumber" Name="AdhikarCharterNumber" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtdate" DbType="Date" Name="AdhikarDate" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtwarrantnumber" Name="AdhikarWarrantnumber" 
                        PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="txtRenewaldate" DbType="Date" 
                        Name="AdhikarRenewalDate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="fuletter" Name="AdhikarCertificate" 
                        PropertyName="FileName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
      <div class="form-group">
            <div class="col-lg-5">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/back.png" Height="30px" Width="30px" />
       
                </div> </div> 
    
    </fieldset>
    </form>
    </div>
</body>
</html>
