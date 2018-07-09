<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteSchools.aspx.cs" Inherits="DeleteStudents" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SchoolTable] WHERE EmailId=@EmailId and Password=@Password" 
            InsertCommand="INSERT INTO [SchoolTable] ([SchoolType], [Year], [UnitType], [UnitName], [SchoolName], [PermanentAddress], [Taluka], [ContactNo], [EmailId], [Password], [TribleSchool], [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature], [Zilla], [FeesPaidMagzine], [Checked], [CheckedMagzine], [khTotalContri], [khUnitContri], [khDistrictContri], [khStateContri], [NoOfStickers], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel], [PragatiPatParticipants], [PragatiPatCertificateNo], [PragatiPatDate], [PragatiPatExaminerName], [PragatiPatLetter], [UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate]) VALUES (@SchoolType, @Year, @UnitType, @UnitName, @SchoolName, @PermanentAddress, @Taluka, @ContactNo, @EmailId, @Password, @TribleSchool, @Date, @UnitLeaderSignature, @PrincipalSignature, @CharterNo, @WarrantNo, @RegistrationFess, @ReceiptNo, @PayDate, @RegistrationFees1, @ReceiptNo1, @PayDate1, @DistrictSignature, @Zilla, @FeesPaidMagzine, @Checked, @CheckedMagzine, @khTotalContri, @khUnitContri, @khDistrictContri, @khStateContri, @NoOfStickers, @DhwajStickerFees, @DhwajStickerDistrictLevel, @DhwajStickerStateLevel, @PragatiPatParticipants, @PragatiPatCertificateNo, @PragatiPatDate, @PragatiPatExaminerName, @PragatiPatLetter, @UnitNondaniYear, @UnitNondaniNoOfUnits, @UnitNondaniAmount, @UnitNondaniReceiptNo, @UnitNondaniReceiptNoDate)" 
            SelectCommand="SELECT * FROM [SchoolTable]" 
            
            UpdateCommand="UPDATE [SchoolTable] SET [SchoolType] = @SchoolType, [Year] = @Year, [UnitType] = @UnitType, [UnitName] = @UnitName, [SchoolName] = @SchoolName, [PermanentAddress] = @PermanentAddress, [Taluka] = @Taluka, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [Password] = @Password, [TribleSchool] = @TribleSchool, [Date] = @Date, [UnitLeaderSignature] = @UnitLeaderSignature, [PrincipalSignature] = @PrincipalSignature, [CharterNo] = @CharterNo, [WarrantNo] = @WarrantNo, [RegistrationFess] = @RegistrationFess, [ReceiptNo] = @ReceiptNo, [PayDate] = @PayDate, [RegistrationFees1] = @RegistrationFees1, [ReceiptNo1] = @ReceiptNo1, [PayDate1] = @PayDate1, [DistrictSignature] = @DistrictSignature, [Zilla] = @Zilla, [FeesPaidMagzine] = @FeesPaidMagzine, [Checked] = @Checked, [CheckedMagzine] = @CheckedMagzine, [khTotalContri] = @khTotalContri, [khUnitContri] = @khUnitContri, [khDistrictContri] = @khDistrictContri, [khStateContri] = @khStateContri, [NoOfStickers] = @NoOfStickers, [DhwajStickerFees] = @DhwajStickerFees, [DhwajStickerDistrictLevel] = @DhwajStickerDistrictLevel, [DhwajStickerStateLevel] = @DhwajStickerStateLevel, [PragatiPatParticipants] = @PragatiPatParticipants, [PragatiPatCertificateNo] = @PragatiPatCertificateNo, [PragatiPatDate] = @PragatiPatDate, [PragatiPatExaminerName] = @PragatiPatExaminerName, [PragatiPatLetter] = @PragatiPatLetter, [UnitNondaniYear] = @UnitNondaniYear, [UnitNondaniNoOfUnits] = @UnitNondaniNoOfUnits, [UnitNondaniAmount] = @UnitNondaniAmount, [UnitNondaniReceiptNo] = @UnitNondaniReceiptNo, [UnitNondaniReceiptNoDate] = @UnitNondaniReceiptNoDate WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" />
                <asp:QueryStringParameter Name="Password" QueryStringField="pwd" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SchoolType" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="PermanentAddress" Type="String" />
                <asp:Parameter Name="Taluka" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
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
                <asp:Parameter Name="ContactNo" Type="String" />
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
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM UnitLeaderTable WHERE (EmailId = @EmailId) AND (Password = @Password)" 
            InsertCommand="INSERT INTO [UnitLeaderTable] ([EmailId], [Password], [Year], [SchoolName], [UnitType], [UnitName], [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo], [SupportingLeader], [SubjectNo], [OptionalSubjectNo], [Attendance], [PantPradhanLetter], [AdhikarCharterNumber], [AdhikarDate], [AdhikarWarrantnumber], [AdhikarRenewalDate], [AdhikarCertificate], [UnitLeaderAddress], [AdarshReceivedDate], [AdarshPlace], [AdarshChiefGuest], [AdarshPhoto], [AdarshCertificate], [AdarshLetter]) VALUES (@EmailId, @Password, @Year, @SchoolName, @UnitType, @UnitName, @FullName, @TrainingName, @CertificateNo, @Date, @AdhikarpatraNo, @SupportingLeader, @SubjectNo, @OptionalSubjectNo, @Attendance, @PantPradhanLetter, @AdhikarCharterNumber, @AdhikarDate, @AdhikarWarrantnumber, @AdhikarRenewalDate, @AdhikarCertificate, @UnitLeaderAddress, @AdarshReceivedDate, @AdarshPlace, @AdarshChiefGuest, @AdarshPhoto, @AdarshCertificate, @AdarshLetter)" 
            SelectCommand="SELECT * FROM [UnitLeaderTable]" 
            
            UpdateCommand="UPDATE [UnitLeaderTable] SET [EmailId] = @EmailId, [Password] = @Password, [Year] = @Year, [SchoolName] = @SchoolName, [UnitType] = @UnitType, [UnitName] = @UnitName, [FullName] = @FullName, [TrainingName] = @TrainingName, [CertificateNo] = @CertificateNo, [Date] = @Date, [AdhikarpatraNo] = @AdhikarpatraNo, [SupportingLeader] = @SupportingLeader, [SubjectNo] = @SubjectNo, [OptionalSubjectNo] = @OptionalSubjectNo, [Attendance] = @Attendance, [PantPradhanLetter] = @PantPradhanLetter, [AdhikarCharterNumber] = @AdhikarCharterNumber, [AdhikarDate] = @AdhikarDate, [AdhikarWarrantnumber] = @AdhikarWarrantnumber, [AdhikarRenewalDate] = @AdhikarRenewalDate, [AdhikarCertificate] = @AdhikarCertificate, [UnitLeaderAddress] = @UnitLeaderAddress, [AdarshReceivedDate] = @AdarshReceivedDate, [AdarshPlace] = @AdarshPlace, [AdarshChiefGuest] = @AdarshChiefGuest, [AdarshPhoto] = @AdarshPhoto, [AdarshCertificate] = @AdarshCertificate, [AdarshLetter] = @AdarshLetter WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" />
                <asp:QueryStringParameter Name="Password" QueryStringField="pwd" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="TrainingName" Type="String" />
                <asp:Parameter Name="CertificateNo" Type="Int32" />
                <asp:Parameter Name="Date" DbType="Date" />
                <asp:Parameter Name="AdhikarpatraNo" Type="Int32" />
                <asp:Parameter Name="SupportingLeader" Type="String" />
                <asp:Parameter Name="SubjectNo" Type="String" />
                <asp:Parameter Name="OptionalSubjectNo" Type="String" />
                <asp:Parameter Name="Attendance" Type="Int32" />
                <asp:Parameter Name="PantPradhanLetter" Type="String" />
                <asp:Parameter Name="AdhikarCharterNumber" Type="Int32" />
                <asp:Parameter Name="AdhikarDate" Type="DateTime" />
                <asp:Parameter Name="AdhikarWarrantnumber" Type="Int32" />
                <asp:Parameter Name="AdhikarRenewalDate" Type="DateTime" />
                <asp:Parameter Name="AdhikarCertificate" Type="String" />
                <asp:Parameter Name="UnitLeaderAddress" Type="String" />
                <asp:Parameter Name="AdarshReceivedDate" Type="DateTime" />
                <asp:Parameter Name="AdarshPlace" Type="String" />
                <asp:Parameter Name="AdarshChiefGuest" Type="String" />
                <asp:Parameter Name="AdarshPhoto" Type="String" />
                <asp:Parameter Name="AdarshCertificate" Type="String" />
                <asp:Parameter Name="AdarshLetter" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="TrainingName" Type="String" />
                <asp:Parameter Name="CertificateNo" Type="Int32" />
                <asp:Parameter Name="Date" DbType="Date" />
                <asp:Parameter Name="AdhikarpatraNo" Type="Int32" />
                <asp:Parameter Name="SupportingLeader" Type="String" />
                <asp:Parameter Name="SubjectNo" Type="String" />
                <asp:Parameter Name="OptionalSubjectNo" Type="String" />
                <asp:Parameter Name="Attendance" Type="Int32" />
                <asp:Parameter Name="PantPradhanLetter" Type="String" />
                <asp:Parameter Name="AdhikarCharterNumber" Type="Int32" />
                <asp:Parameter Name="AdhikarDate" Type="DateTime" />
                <asp:Parameter Name="AdhikarWarrantnumber" Type="Int32" />
                <asp:Parameter Name="AdhikarRenewalDate" Type="DateTime" />
                <asp:Parameter Name="AdhikarCertificate" Type="String" />
                <asp:Parameter Name="UnitLeaderAddress" Type="String" />
                <asp:Parameter Name="AdarshReceivedDate" Type="DateTime" />
                <asp:Parameter Name="AdarshPlace" Type="String" />
                <asp:Parameter Name="AdarshChiefGuest" Type="String" />
                <asp:Parameter Name="AdarshPhoto" Type="String" />
                <asp:Parameter Name="AdarshCertificate" Type="String" />
                <asp:Parameter Name="AdarshLetter" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM StudentTable WHERE (EmailId = @EmailID) AND (Password = @Password)" 
            InsertCommand="INSERT INTO [StudentTable] ([EmailId], [Password], [Year], [UnitType], [StudFullName], [StudDOB], [StudStandard], [SchoolName], [UnitName]) VALUES (@EmailId, @Password, @Year, @UnitType, @StudFullName, @StudDOB, @StudStandard, @SchoolName, @UnitName)" 
            SelectCommand="SELECT * FROM [StudentTable]" 
            
            UpdateCommand="UPDATE [StudentTable] SET [EmailId] = @EmailId, [Password] = @Password, [Year] = @Year, [UnitType] = @UnitType, [StudFullName] = @StudFullName, [StudDOB] = @StudDOB, [StudStandard] = @StudStandard, [SchoolName] = @SchoolName, [UnitName] = @UnitName WHERE [SrNo] = @SrNo">
            <DeleteParameters>
                <asp:QueryStringParameter Name="EmailId" QueryStringField="EmailId" />
                <asp:QueryStringParameter Name="Password" QueryStringField="pwd" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="StudFullName" Type="String" />
                <asp:Parameter DbType="Date" Name="StudDOB" />
                <asp:Parameter Name="StudStandard" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="StudFullName" Type="String" />
                <asp:Parameter DbType="Date" Name="StudDOB" />
                <asp:Parameter Name="StudStandard" Type="String" />
                <asp:Parameter Name="SchoolName" Type="String" />
                <asp:Parameter Name="UnitName" Type="String" />
                <asp:Parameter Name="SrNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
