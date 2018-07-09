<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

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
     <center>
       <h2>List of Unit Names</h2>
            </center>
            </div>
      <div class="progress">
  <div class="progress-bar" style="width: 100%;"></div>
</div>
   <div class="jumbotron">
    <form id="form1" runat="server" class="form-horizontal">
    <fieldset>
    <center>
    <div class="form-group">
        <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" CssClass="col-lg-3 control-label"></asp:Label>
       
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" 
                        Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
       
    <div class="col-lg-5">
    <asp:DropDownList
            ID="DropDownList1" runat="server" CssClass="dropdown" AutoPostBack="True" 
            DataSourceID="SqlDataSource4" DataTextField="Year" DataValueField="Year"> </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [Year] FROM [SchoolTable] WHERE ([Year] IS NOT NULL)">
        </asp:SqlDataSource>
    </div>
    </div>
    <div class="form-group">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="UnitName" 
            DataValueField="UnitName">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UnitName] FROM [Confirmation] WHERE (([Year] = @Year) AND ([Checked] = @Checked))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="HiddenField1" Name="Checked" 
                    PropertyName="Value" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [ChaturthCharan]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [SchoolTable]" 
            DeleteCommand="DELETE FROM [SchoolTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [SchoolTable] ([SchoolType], [Year], [UnitType], [UnitName], [SchoolName], [PermanentAddress], [Taluka], [ContactNo], [EmailId], [Password], [TribleSchool], [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature], [Zilla], [FeesPaidMagzine], [Checked], [CheckedMagzine], [khTotalContri], [khUnitContri], [khDistrictContri], [khStateContri], [NoOfStickers], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel], [PragatiPatParticipants], [PragatiPatCertificateNo], [PragatiPatDate], [PragatiPatExaminerName], [PragatiPatLetter], [UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate]) VALUES (@SchoolType, @Year, @UnitType, @UnitName, @SchoolName, @PermanentAddress, @Taluka, @ContactNo, @EmailId, @Password, @TribleSchool, @Date, @UnitLeaderSignature, @PrincipalSignature, @CharterNo, @WarrantNo, @RegistrationFess, @ReceiptNo, @PayDate, @RegistrationFees1, @ReceiptNo1, @PayDate1, @DistrictSignature, @Zilla, @FeesPaidMagzine, @Checked, @CheckedMagzine, @khTotalContri, @khUnitContri, @khDistrictContri, @khStateContri, @NoOfStickers, @DhwajStickerFees, @DhwajStickerDistrictLevel, @DhwajStickerStateLevel, @PragatiPatParticipants, @PragatiPatCertificateNo, @PragatiPatDate, @PragatiPatExaminerName, @PragatiPatLetter, @UnitNondaniYear, @UnitNondaniNoOfUnits, @UnitNondaniAmount, @UnitNondaniReceiptNo, @UnitNondaniReceiptNoDate)" 
            UpdateCommand="UPDATE [SchoolTable] SET [SchoolType] = @SchoolType, [Year] = @Year, [UnitType] = @UnitType, [UnitName] = @UnitName, [SchoolName] = @SchoolName, [PermanentAddress] = @PermanentAddress, [Taluka] = @Taluka, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [Password] = @Password, [TribleSchool] = @TribleSchool, [Date] = @Date, [UnitLeaderSignature] = @UnitLeaderSignature, [PrincipalSignature] = @PrincipalSignature, [CharterNo] = @CharterNo, [WarrantNo] = @WarrantNo, [RegistrationFess] = @RegistrationFess, [ReceiptNo] = @ReceiptNo, [PayDate] = @PayDate, [RegistrationFees1] = @RegistrationFees1, [ReceiptNo1] = @ReceiptNo1, [PayDate1] = @PayDate1, [DistrictSignature] = @DistrictSignature, [Zilla] = @Zilla, [FeesPaidMagzine] = @FeesPaidMagzine, [Checked] = @Checked, [CheckedMagzine] = @CheckedMagzine, [khTotalContri] = @khTotalContri, [khUnitContri] = @khUnitContri, [khDistrictContri] = @khDistrictContri, [khStateContri] = @khStateContri, [NoOfStickers] = @NoOfStickers, [DhwajStickerFees] = @DhwajStickerFees, [DhwajStickerDistrictLevel] = @DhwajStickerDistrictLevel, [DhwajStickerStateLevel] = @DhwajStickerStateLevel, [PragatiPatParticipants] = @PragatiPatParticipants, [PragatiPatCertificateNo] = @PragatiPatCertificateNo, [PragatiPatDate] = @PragatiPatDate, [PragatiPatExaminerName] = @PragatiPatExaminerName, [PragatiPatLetter] = @PragatiPatLetter, [UnitNondaniYear] = @UnitNondaniYear, [UnitNondaniNoOfUnits] = @UnitNondaniNoOfUnits, [UnitNondaniAmount] = @UnitNondaniAmount, [UnitNondaniReceiptNo] = @UnitNondaniReceiptNo, [UnitNondaniReceiptNoDate] = @UnitNondaniReceiptNoDate WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:Parameter Name="SrNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SchoolType" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="PermanentAddress" Type="String" />
                <asp:Parameter Name="Taluka" Type="String" />
                <asp:Parameter Name="ContactNo" Type="Int32" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TribleSchool" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="UnitLeaderSignature" Type="String" />
                <asp:Parameter Name="PrincipalSignature" Type="String" />
                <asp:Parameter Name="CharterNo" Type="Int32" />
                <asp:Parameter Name="WarrantNo" Type="Int32" />
                <asp:Parameter Name="RegistrationFess" Type="Int32" />
                <asp:Parameter Name="ReceiptNo" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PayDate" />
                <asp:Parameter Name="RegistrationFees1" Type="Int32" />
                <asp:Parameter Name="ReceiptNo1" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PayDate1" />
                <asp:Parameter Name="DistrictSignature" Type="String" />
                <asp:Parameter Name="Zilla" Type="String" />
                <asp:Parameter Name="FeesPaidMagzine" Type="String" />
                <asp:Parameter Name="Checked" Type="String" />
                <asp:Parameter Name="CheckedMagzine" Type="String" />
                <asp:Parameter Name="khTotalContri" Type="Int32" />
                <asp:Parameter Name="khUnitContri" Type="Int32" />
                <asp:Parameter Name="khDistrictContri" Type="Int32" />
                <asp:Parameter Name="khStateContri" Type="Int32" />
                <asp:Parameter Name="NoOfStickers" Type="Int32" />
                <asp:Parameter Name="DhwajStickerFees" Type="Int32" />
                <asp:Parameter Name="DhwajStickerDistrictLevel" Type="Int32" />
                <asp:Parameter Name="DhwajStickerStateLevel" Type="Int32" />
                <asp:Parameter Name="PragatiPatParticipants" Type="Int32" />
                <asp:Parameter Name="PragatiPatCertificateNo" Type="String" />
                <asp:Parameter DbType="Date" Name="PragatiPatDate" />
                <asp:Parameter Name="PragatiPatExaminerName" Type="String" />
                <asp:Parameter Name="PragatiPatLetter" Type="String" />
                <asp:Parameter Name="UnitNondaniYear" Type="Int32" />
                <asp:Parameter Name="UnitNondaniNoOfUnits" Type="Int32" />
                <asp:Parameter Name="UnitNondaniAmount" Type="Int32" />
                <asp:Parameter Name="UnitNondaniReceiptNo" Type="Int32" />
                <asp:Parameter DbType="Date" Name="UnitNondaniReceiptNoDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SchoolType" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="PermanentAddress" Type="String" />
                <asp:Parameter Name="Taluka" Type="String" />
                <asp:Parameter Name="ContactNo" Type="Int32" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TribleSchool" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="UnitLeaderSignature" Type="String" />
                <asp:Parameter Name="PrincipalSignature" Type="String" />
                <asp:Parameter Name="CharterNo" Type="Int32" />
                <asp:Parameter Name="WarrantNo" Type="Int32" />
                <asp:Parameter Name="RegistrationFess" Type="Int32" />
                <asp:Parameter Name="ReceiptNo" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PayDate" />
                <asp:Parameter Name="RegistrationFees1" Type="Int32" />
                <asp:Parameter Name="ReceiptNo1" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PayDate1" />
                <asp:Parameter Name="DistrictSignature" Type="String" />
                <asp:Parameter Name="Zilla" Type="String" />
                <asp:Parameter Name="FeesPaidMagzine" Type="String" />
                <asp:Parameter Name="Checked" Type="String" />
                <asp:Parameter Name="CheckedMagzine" Type="String" />
                <asp:Parameter Name="khTotalContri" Type="Int32" />
                <asp:Parameter Name="khUnitContri" Type="Int32" />
                <asp:Parameter Name="khDistrictContri" Type="Int32" />
                <asp:Parameter Name="khStateContri" Type="Int32" />
                <asp:Parameter Name="NoOfStickers" Type="Int32" />
                <asp:Parameter Name="DhwajStickerFees" Type="Int32" />
                <asp:Parameter Name="DhwajStickerDistrictLevel" Type="Int32" />
                <asp:Parameter Name="DhwajStickerStateLevel" Type="Int32" />
                <asp:Parameter Name="PragatiPatParticipants" Type="Int32" />
                <asp:Parameter Name="PragatiPatCertificateNo" Type="String" />
                <asp:Parameter DbType="Date" Name="PragatiPatDate" />
                <asp:Parameter Name="PragatiPatExaminerName" Type="String" />
                <asp:Parameter Name="PragatiPatLetter" Type="String" />
                <asp:Parameter Name="UnitNondaniYear" Type="Int32" />
                <asp:Parameter Name="UnitNondaniNoOfUnits" Type="Int32" />
                <asp:Parameter Name="UnitNondaniAmount" Type="Int32" />
                <asp:Parameter Name="UnitNondaniReceiptNo" Type="Int32" />
                <asp:Parameter DbType="Date" Name="UnitNondaniReceiptNoDate" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource><hr />
        <asp:Button ID="btn" runat="server" onclick="btn_Click" Text="Submit" CssClass="btn btn-primary" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
    </center>
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
             Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Confirmation1.aspx">Back</asp:HyperLink></center>
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
