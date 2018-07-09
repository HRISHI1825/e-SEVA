
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:sqldatasource ID="Sqldatasource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE * FROM [ChaturthCharan] " 
            InsertCommand="INSERT INTO [ChaturthCharan] ([NameOfTheDistrict], [NameOfTheCub], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheCubMaster], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningCub], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfPrathamCharan], [DateOfCompletionOfDwitiyaCharan], [DateOfCompletionOfTritiyaCharan], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfChaturthCharan], [NameOfTheProficiencyBadgeearned1], [SignatureOfCubMaster], [SignatureOfCub], [Status]) VALUES (@NameOfTheDistrict, @NameOfTheCub, @Address, @Dist, @PinCode, @DateOfBirth, @NameOfTheGroup, @AddressOfTheGroup, @NameOfTheCubMaster, @CertificateNo, @Date, @WarrantNo, @DateOfJoiningCub, @DateOfCompletionOfPravesh, @DateOfInvestiture, @DateOfCompletionOfPrathamCharan, @DateOfCompletionOfDwitiyaCharan, @DateOfCompletionOfTritiyaCharan, @NameOfTheProficiencyBadgeearned, @DateOfCompletionOfChaturthCharan, @NameOfTheProficiencyBadgeearned1, @SignatureOfCubMaster, @SignatureOfCub, @Status)" 
            SelectCommand="SELECT * FROM [ChaturthCharan]" 
            
            UpdateCommand="UPDATE [ChaturthCharan] SET [NameOfTheDistrict] = @NameOfTheDistrict, [NameOfTheCub] = @NameOfTheCub, [Address] = @Address, [Dist] = @Dist, [PinCode] = @PinCode, [DateOfBirth] = @DateOfBirth, [NameOfTheGroup] = @NameOfTheGroup, [AddressOfTheGroup] = @AddressOfTheGroup, [NameOfTheCubMaster] = @NameOfTheCubMaster, [CertificateNo] = @CertificateNo, [Date] = @Date, [WarrantNo] = @WarrantNo, [DateOfJoiningCub] = @DateOfJoiningCub, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfInvestiture] = @DateOfInvestiture, [DateOfCompletionOfPrathamCharan] = @DateOfCompletionOfPrathamCharan, [DateOfCompletionOfDwitiyaCharan] = @DateOfCompletionOfDwitiyaCharan, [DateOfCompletionOfTritiyaCharan] = @DateOfCompletionOfTritiyaCharan, [NameOfTheProficiencyBadgeearned] = @NameOfTheProficiencyBadgeearned, [DateOfCompletionOfChaturthCharan] = @DateOfCompletionOfChaturthCharan, [NameOfTheProficiencyBadgeearned1] = @NameOfTheProficiencyBadgeearned1, [SignatureOfCubMaster] = @SignatureOfCubMaster, [SignatureOfCub] = @SignatureOfCub, [Status] = @Status WHERE [SrNo] = @SrNo">
        <InsertParameters>
            <asp:Parameter Name="NameOfTheDistrict" Type="String" />
            <asp:Parameter Name="NameOfTheCub" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Dist" Type="String" />
            <asp:Parameter Name="PinCode" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="NameOfTheGroup" Type="String" />
            <asp:Parameter Name="AddressOfTheGroup" Type="String" />
            <asp:Parameter Name="NameOfTheCubMaster" Type="String" />
            <asp:Parameter Name="CertificateNo" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="WarrantNo" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfJoiningCub" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
            <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamCharan" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaCharan" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaCharan" />
            <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfChaturthCharan" />
            <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
            <asp:Parameter Name="SignatureOfCubMaster" Type="String" />
            <asp:Parameter Name="SignatureOfCub" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NameOfTheDistrict" Type="String" />
            <asp:Parameter Name="NameOfTheCub" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Dist" Type="String" />
            <asp:Parameter Name="PinCode" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="NameOfTheGroup" Type="String" />
            <asp:Parameter Name="AddressOfTheGroup" Type="String" />
            <asp:Parameter Name="NameOfTheCubMaster" Type="String" />
            <asp:Parameter Name="CertificateNo" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="WarrantNo" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfJoiningCub" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
            <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamCharan" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaCharan" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaCharan" />
            <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfCompletionOfChaturthCharan" />
            <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
            <asp:Parameter Name="SignatureOfCubMaster" Type="String" />
            <asp:Parameter Name="SignatureOfCub" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="SrNo" Type="Int32" />
        </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Confirmation] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Confirmation] ([UnitName], [Students], [UnitLeader], [Total], [TotalRs], [Year], [UnitType], [Checked]) VALUES (@UnitName, @Students, @UnitLeader, @Total, @TotalRs, @Year, @UnitType, @Checked)" 
            SelectCommand="SELECT * FROM [Confirmation]" 
            UpdateCommand="UPDATE [Confirmation] SET [UnitName] = @UnitName, [Students] = @Students, [UnitLeader] = @UnitLeader, [Total] = @Total, [TotalRs] = @TotalRs, [Year] = @Year, [UnitType] = @UnitType, [Checked] = @Checked WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="Students" Type="Int32" />
        <asp:Parameter Name="UnitLeader" Type="Int32" />
        <asp:Parameter Name="Total" Type="Int32" />
        <asp:Parameter Name="TotalRs" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="Checked" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="Students" Type="Int32" />
        <asp:Parameter Name="UnitLeader" Type="Int32" />
        <asp:Parameter Name="Total" Type="Int32" />
        <asp:Parameter Name="TotalRs" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="Checked" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [GauravSevaPadak] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [GauravSevaPadak] ([Name], [SchoolName], [Address], [Award], [MeetingDate], [ApplicationDate], [Letter], [Form], [Certificate]) VALUES (@Name, @SchoolName, @Address, @Award, @MeetingDate, @ApplicationDate, @Letter, @Form, @Certificate)" 
            SelectCommand="SELECT * FROM [GauravSevaPadak]" 
            UpdateCommand="UPDATE [GauravSevaPadak] SET [Name] = @Name, [SchoolName] = @SchoolName, [Address] = @Address, [Award] = @Award, [MeetingDate] = @MeetingDate, [ApplicationDate] = @ApplicationDate, [Letter] = @Letter, [Form] = @Form, [Certificate] = @Certificate WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Award" Type="String" />
        <asp:Parameter Name="MeetingDate" Type="String" />
        <asp:Parameter Name="ApplicationDate" Type="String" />
        <asp:Parameter Name="Letter" Type="String" />
        <asp:Parameter Name="Form" Type="String" />
        <asp:Parameter Name="Certificate" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Award" Type="String" />
        <asp:Parameter Name="MeetingDate" Type="String" />
        <asp:Parameter Name="ApplicationDate" Type="String" />
        <asp:Parameter Name="Letter" Type="String" />
        <asp:Parameter Name="Form" Type="String" />
        <asp:Parameter Name="Certificate" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [HeerakPankh] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [HeerakPankh] ([NameOfTheDistrict], [NameOfTheBulbul], [Address], [Dist], [PinCode], [DateOfBirth], [NameOfTheGroup], [AddressOfTheGroup], [NameOfTheFlockLeader], [CertificateNo], [Date], [WarrantNo], [DateOfJoiningBulbul], [DateOfCompletionOfPravesh], [DateOfInvestiture], [DateOfCompletionOfKomalPankh], [DateOfCompletionOfRajatPankh], [DateOfCompletionOfSuvarnaPankh], [NameOfTheProficiencyBadgeearned], [DateOfCompletionOfHeerakPankh], [NameOfTheProficiencyBadgeearned1], [SignatureOfFlockLeader], [SignatureOfBulbul], [Status]) VALUES (@NameOfTheDistrict, @NameOfTheBulbul, @Address, @Dist, @PinCode, @DateOfBirth, @NameOfTheGroup, @AddressOfTheGroup, @NameOfTheFlockLeader, @CertificateNo, @Date, @WarrantNo, @DateOfJoiningBulbul, @DateOfCompletionOfPravesh, @DateOfInvestiture, @DateOfCompletionOfKomalPankh, @DateOfCompletionOfRajatPankh, @DateOfCompletionOfSuvarnaPankh, @NameOfTheProficiencyBadgeearned, @DateOfCompletionOfHeerakPankh, @NameOfTheProficiencyBadgeearned1, @SignatureOfFlockLeader, @SignatureOfBulbul, @Status)" 
            SelectCommand="SELECT * FROM [HeerakPankh]" 
            UpdateCommand="UPDATE [HeerakPankh] SET [NameOfTheDistrict] = @NameOfTheDistrict, [NameOfTheBulbul] = @NameOfTheBulbul, [Address] = @Address, [Dist] = @Dist, [PinCode] = @PinCode, [DateOfBirth] = @DateOfBirth, [NameOfTheGroup] = @NameOfTheGroup, [AddressOfTheGroup] = @AddressOfTheGroup, [NameOfTheFlockLeader] = @NameOfTheFlockLeader, [CertificateNo] = @CertificateNo, [Date] = @Date, [WarrantNo] = @WarrantNo, [DateOfJoiningBulbul] = @DateOfJoiningBulbul, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfInvestiture] = @DateOfInvestiture, [DateOfCompletionOfKomalPankh] = @DateOfCompletionOfKomalPankh, [DateOfCompletionOfRajatPankh] = @DateOfCompletionOfRajatPankh, [DateOfCompletionOfSuvarnaPankh] = @DateOfCompletionOfSuvarnaPankh, [NameOfTheProficiencyBadgeearned] = @NameOfTheProficiencyBadgeearned, [DateOfCompletionOfHeerakPankh] = @DateOfCompletionOfHeerakPankh, [NameOfTheProficiencyBadgeearned1] = @NameOfTheProficiencyBadgeearned1, [SignatureOfFlockLeader] = @SignatureOfFlockLeader, [SignatureOfBulbul] = @SignatureOfBulbul, [Status] = @Status WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NameOfTheDistrict" Type="String" />
        <asp:Parameter Name="NameOfTheBulbul" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Dist" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="NameOfTheGroup" Type="String" />
        <asp:Parameter Name="AddressOfTheGroup" Type="String" />
        <asp:Parameter Name="NameOfTheFlockLeader" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfJoiningBulbul" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfKomalPankh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajatPankh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfSuvarnaPankh" />
        <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfHeerakPankh" />
        <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
        <asp:Parameter Name="SignatureOfFlockLeader" Type="String" />
        <asp:Parameter Name="SignatureOfBulbul" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NameOfTheDistrict" Type="String" />
        <asp:Parameter Name="NameOfTheBulbul" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Dist" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="NameOfTheGroup" Type="String" />
        <asp:Parameter Name="AddressOfTheGroup" Type="String" />
        <asp:Parameter Name="NameOfTheFlockLeader" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfJoiningBulbul" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfInvestiture" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfKomalPankh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajatPankh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfSuvarnaPankh" />
        <asp:Parameter Name="NameOfTheProficiencyBadgeearned" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfHeerakPankh" />
        <asp:Parameter Name="NameOfTheProficiencyBadgeearned1" Type="String" />
        <asp:Parameter Name="SignatureOfFlockLeader" Type="String" />
        <asp:Parameter Name="SignatureOfBulbul" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Office] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [Office] ([InwardNo], [LetterAcceptingDate], [LetterNo1], [LetterDate], [LetterFrom], [InLetter], [TopicLetter], [FileNo], [InwardStatus], [OutwardDate], [OutwardLetterNo1], [OutwardTo], [OutwardAddress], [Outwardtopic], [OutwardFileNo], [HowSend], [Outletter], [StampUsed], [Ps], [Stamppurchased], [Ps1], [RemainingStamp], [Ps3], [OutwardStatus], [Year], [Report], [MeetingDate], [NameOfMeeting], [Attendance], [MeetingReport], [MeetingAgenda], [DayName], [Date], [ArrangedProgram], [ProgramAttendance], [Place], [ProgramReport], [ProgramPhoto], [TrainingName], [Trainee], [TrainDuration], [TrainCertificateNo], [TrainDate], [Trainhead], [TrainPlace], [TrainCertificate], [VarshikAnudanDate], [VarshikAnudanAmount], [UtilizationCertificate], [AuditReportYear], [AudiReport], [EmployeeName], [SendingDate], [Month], [MasikAhwalYear], [EmployeeReport], [MembershipDate], [MemberName], [MemberAddress], [ContactNumber], [EmailId], [Topic], [GrDate], [Gr], [OrganisationName], [OrganisationAddress], [HeadOfOrganisation], [HeadContactNo], [SalgnataYear], [SalgnataAmount], [SalgnataReceiptNo], [SalgnataReceiptNoDate], [DistrictMemberName], [DistrictCommitteeName], [DistrictMemberHomeAddress], [DistrictMemberSchoolName], [DistrictMemberSchoolAddress], [DistrictMemberPositionName], [DistrictMemberDuration], [DistrictMemberDateOfBirth], [DistrictMemberContactNo], [DistrictMemberEmailId], [StateMemberName], [StateMemberCommitteeName], [StateMemberHomeAddress], [StateMemberSchoolName], [StateMemberSchoolAddress], [StateMemberPositionName], [StateMemberDuration], [StateMemberDateOfBirth], [StateMemberContactNo], [StateMemberEmailId], [NewEquipDate], [NewEquipName], [NewEquipPrice], [NewEquipPricePs], [NewEquipDescription], [NewEquipBillNo], [NewEquipQuantity], [NewEquipTotalPrice], [NewEquipTotalPricePs], [InwardEquipDate], [InwardEquipName], [InwardEquipPrice], [InwardEquipPricePs], [InwardEquipDescription], [InwardEquipBillNo], [InwardEquipQuantity], [InwardEquipTotalPrice], [InwardEquipTotalPricePs], [OutwardEquipDate], [OutwardEquipName], [OutwardEquipPrice], [OutwardEquipPricePs], [OutwardEquipDescription], [OutwardEquipBillNo], [OutwardEquipQuantity], [OutwardEquipTotalPrice], [OutwardEquipTotalPricePs], [HolidayYear], [HolidayEmployeeName], [Arjit], [Vaidyakiya], [Kirkod], [HolidayTakenArjit], [HolidayTakenVaidyakiya], [HolidayTakenKirkod], [RemainingArjit], [RemainingVaidyakiya], [RemainingKirkod], [DonationYear], [DonationName], [DonationPurpose], [DonationAmount], [DonationReceiptNo], [DonationReceiptNoDate], [MaintainanceYear], [MaintainanceMonth], [MaintainanceElectricBill], [MaintainanceWaterBill], [MaintainanceTelephoneBill], [MaintainanceTax], [Questions], [Answers]) VALUES (@InwardNo, @LetterAcceptingDate, @LetterNo1, @LetterDate, @LetterFrom, @InLetter, @TopicLetter, @FileNo, @InwardStatus, @OutwardDate, @OutwardLetterNo1, @OutwardTo, @OutwardAddress, @Outwardtopic, @OutwardFileNo, @HowSend, @Outletter, @StampUsed, @Ps, @Stamppurchased, @Ps1, @RemainingStamp, @Ps3, @OutwardStatus, @Year, @Report, @MeetingDate, @NameOfMeeting, @Attendance, @MeetingReport, @MeetingAgenda, @DayName, @Date, @ArrangedProgram, @ProgramAttendance, @Place, @ProgramReport, @ProgramPhoto, @TrainingName, @Trainee, @TrainDuration, @TrainCertificateNo, @TrainDate, @Trainhead, @TrainPlace, @TrainCertificate, @VarshikAnudanDate, @VarshikAnudanAmount, @UtilizationCertificate, @AuditReportYear, @AudiReport, @EmployeeName, @SendingDate, @Month, @MasikAhwalYear, @EmployeeReport, @MembershipDate, @MemberName, @MemberAddress, @ContactNumber, @EmailId, @Topic, @GrDate, @Gr, @OrganisationName, @OrganisationAddress, @HeadOfOrganisation, @HeadContactNo, @SalgnataYear, @SalgnataAmount, @SalgnataReceiptNo, @SalgnataReceiptNoDate, @DistrictMemberName, @DistrictCommitteeName, @DistrictMemberHomeAddress, @DistrictMemberSchoolName, @DistrictMemberSchoolAddress, @DistrictMemberPositionName, @DistrictMemberDuration, @DistrictMemberDateOfBirth, @DistrictMemberContactNo, @DistrictMemberEmailId, @StateMemberName, @StateMemberCommitteeName, @StateMemberHomeAddress, @StateMemberSchoolName, @StateMemberSchoolAddress, @StateMemberPositionName, @StateMemberDuration, @StateMemberDateOfBirth, @StateMemberContactNo, @StateMemberEmailId, @NewEquipDate, @NewEquipName, @NewEquipPrice, @NewEquipPricePs, @NewEquipDescription, @NewEquipBillNo, @NewEquipQuantity, @NewEquipTotalPrice, @NewEquipTotalPricePs, @InwardEquipDate, @InwardEquipName, @InwardEquipPrice, @InwardEquipPricePs, @InwardEquipDescription, @InwardEquipBillNo, @InwardEquipQuantity, @InwardEquipTotalPrice, @InwardEquipTotalPricePs, @OutwardEquipDate, @OutwardEquipName, @OutwardEquipPrice, @OutwardEquipPricePs, @OutwardEquipDescription, @OutwardEquipBillNo, @OutwardEquipQuantity, @OutwardEquipTotalPrice, @OutwardEquipTotalPricePs, @HolidayYear, @HolidayEmployeeName, @Arjit, @Vaidyakiya, @Kirkod, @HolidayTakenArjit, @HolidayTakenVaidyakiya, @HolidayTakenKirkod, @RemainingArjit, @RemainingVaidyakiya, @RemainingKirkod, @DonationYear, @DonationName, @DonationPurpose, @DonationAmount, @DonationReceiptNo, @DonationReceiptNoDate, @MaintainanceYear, @MaintainanceMonth, @MaintainanceElectricBill, @MaintainanceWaterBill, @MaintainanceTelephoneBill, @MaintainanceTax, @Questions, @Answers)" 
            SelectCommand="SELECT * FROM [Office]" 
            UpdateCommand="UPDATE [Office] SET [InwardNo] = @InwardNo, [LetterAcceptingDate] = @LetterAcceptingDate, [LetterNo1] = @LetterNo1, [LetterDate] = @LetterDate, [LetterFrom] = @LetterFrom, [InLetter] = @InLetter, [TopicLetter] = @TopicLetter, [FileNo] = @FileNo, [InwardStatus] = @InwardStatus, [OutwardDate] = @OutwardDate, [OutwardLetterNo1] = @OutwardLetterNo1, [OutwardTo] = @OutwardTo, [OutwardAddress] = @OutwardAddress, [Outwardtopic] = @Outwardtopic, [OutwardFileNo] = @OutwardFileNo, [HowSend] = @HowSend, [Outletter] = @Outletter, [StampUsed] = @StampUsed, [Ps] = @Ps, [Stamppurchased] = @Stamppurchased, [Ps1] = @Ps1, [RemainingStamp] = @RemainingStamp, [Ps3] = @Ps3, [OutwardStatus] = @OutwardStatus, [Year] = @Year, [Report] = @Report, [MeetingDate] = @MeetingDate, [NameOfMeeting] = @NameOfMeeting, [Attendance] = @Attendance, [MeetingReport] = @MeetingReport, [MeetingAgenda] = @MeetingAgenda, [DayName] = @DayName, [Date] = @Date, [ArrangedProgram] = @ArrangedProgram, [ProgramAttendance] = @ProgramAttendance, [Place] = @Place, [ProgramReport] = @ProgramReport, [ProgramPhoto] = @ProgramPhoto, [TrainingName] = @TrainingName, [Trainee] = @Trainee, [TrainDuration] = @TrainDuration, [TrainCertificateNo] = @TrainCertificateNo, [TrainDate] = @TrainDate, [Trainhead] = @Trainhead, [TrainPlace] = @TrainPlace, [TrainCertificate] = @TrainCertificate, [VarshikAnudanDate] = @VarshikAnudanDate, [VarshikAnudanAmount] = @VarshikAnudanAmount, [UtilizationCertificate] = @UtilizationCertificate, [AuditReportYear] = @AuditReportYear, [AudiReport] = @AudiReport, [EmployeeName] = @EmployeeName, [SendingDate] = @SendingDate, [Month] = @Month, [MasikAhwalYear] = @MasikAhwalYear, [EmployeeReport] = @EmployeeReport, [MembershipDate] = @MembershipDate, [MemberName] = @MemberName, [MemberAddress] = @MemberAddress, [ContactNumber] = @ContactNumber, [EmailId] = @EmailId, [Topic] = @Topic, [GrDate] = @GrDate, [Gr] = @Gr, [OrganisationName] = @OrganisationName, [OrganisationAddress] = @OrganisationAddress, [HeadOfOrganisation] = @HeadOfOrganisation, [HeadContactNo] = @HeadContactNo, [SalgnataYear] = @SalgnataYear, [SalgnataAmount] = @SalgnataAmount, [SalgnataReceiptNo] = @SalgnataReceiptNo, [SalgnataReceiptNoDate] = @SalgnataReceiptNoDate, [DistrictMemberName] = @DistrictMemberName, [DistrictCommitteeName] = @DistrictCommitteeName, [DistrictMemberHomeAddress] = @DistrictMemberHomeAddress, [DistrictMemberSchoolName] = @DistrictMemberSchoolName, [DistrictMemberSchoolAddress] = @DistrictMemberSchoolAddress, [DistrictMemberPositionName] = @DistrictMemberPositionName, [DistrictMemberDuration] = @DistrictMemberDuration, [DistrictMemberDateOfBirth] = @DistrictMemberDateOfBirth, [DistrictMemberContactNo] = @DistrictMemberContactNo, [DistrictMemberEmailId] = @DistrictMemberEmailId, [StateMemberName] = @StateMemberName, [StateMemberCommitteeName] = @StateMemberCommitteeName, [StateMemberHomeAddress] = @StateMemberHomeAddress, [StateMemberSchoolName] = @StateMemberSchoolName, [StateMemberSchoolAddress] = @StateMemberSchoolAddress, [StateMemberPositionName] = @StateMemberPositionName, [StateMemberDuration] = @StateMemberDuration, [StateMemberDateOfBirth] = @StateMemberDateOfBirth, [StateMemberContactNo] = @StateMemberContactNo, [StateMemberEmailId] = @StateMemberEmailId, [NewEquipDate] = @NewEquipDate, [NewEquipName] = @NewEquipName, [NewEquipPrice] = @NewEquipPrice, [NewEquipPricePs] = @NewEquipPricePs, [NewEquipDescription] = @NewEquipDescription, [NewEquipBillNo] = @NewEquipBillNo, [NewEquipQuantity] = @NewEquipQuantity, [NewEquipTotalPrice] = @NewEquipTotalPrice, [NewEquipTotalPricePs] = @NewEquipTotalPricePs, [InwardEquipDate] = @InwardEquipDate, [InwardEquipName] = @InwardEquipName, [InwardEquipPrice] = @InwardEquipPrice, [InwardEquipPricePs] = @InwardEquipPricePs, [InwardEquipDescription] = @InwardEquipDescription, [InwardEquipBillNo] = @InwardEquipBillNo, [InwardEquipQuantity] = @InwardEquipQuantity, [InwardEquipTotalPrice] = @InwardEquipTotalPrice, [InwardEquipTotalPricePs] = @InwardEquipTotalPricePs, [OutwardEquipDate] = @OutwardEquipDate, [OutwardEquipName] = @OutwardEquipName, [OutwardEquipPrice] = @OutwardEquipPrice, [OutwardEquipPricePs] = @OutwardEquipPricePs, [OutwardEquipDescription] = @OutwardEquipDescription, [OutwardEquipBillNo] = @OutwardEquipBillNo, [OutwardEquipQuantity] = @OutwardEquipQuantity, [OutwardEquipTotalPrice] = @OutwardEquipTotalPrice, [OutwardEquipTotalPricePs] = @OutwardEquipTotalPricePs, [HolidayYear] = @HolidayYear, [HolidayEmployeeName] = @HolidayEmployeeName, [Arjit] = @Arjit, [Vaidyakiya] = @Vaidyakiya, [Kirkod] = @Kirkod, [HolidayTakenArjit] = @HolidayTakenArjit, [HolidayTakenVaidyakiya] = @HolidayTakenVaidyakiya, [HolidayTakenKirkod] = @HolidayTakenKirkod, [RemainingArjit] = @RemainingArjit, [RemainingVaidyakiya] = @RemainingVaidyakiya, [RemainingKirkod] = @RemainingKirkod, [DonationYear] = @DonationYear, [DonationName] = @DonationName, [DonationPurpose] = @DonationPurpose, [DonationAmount] = @DonationAmount, [DonationReceiptNo] = @DonationReceiptNo, [DonationReceiptNoDate] = @DonationReceiptNoDate, [MaintainanceYear] = @MaintainanceYear, [MaintainanceMonth] = @MaintainanceMonth, [MaintainanceElectricBill] = @MaintainanceElectricBill, [MaintainanceWaterBill] = @MaintainanceWaterBill, [MaintainanceTelephoneBill] = @MaintainanceTelephoneBill, [MaintainanceTax] = @MaintainanceTax, [Questions] = @Questions, [Answers] = @Answers WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="InwardNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="LetterAcceptingDate" />
        <asp:Parameter Name="LetterNo1" Type="Int32" />
        <asp:Parameter DbType="Date" Name="LetterDate" />
        <asp:Parameter Name="LetterFrom" Type="String" />
        <asp:Parameter Name="InLetter" Type="String" />
        <asp:Parameter Name="TopicLetter" Type="String" />
        <asp:Parameter Name="FileNo" Type="Int32" />
        <asp:Parameter Name="InwardStatus" Type="String" />
        <asp:Parameter DbType="Date" Name="OutwardDate" />
        <asp:Parameter Name="OutwardLetterNo1" Type="Int32" />
        <asp:Parameter Name="OutwardTo" Type="String" />
        <asp:Parameter Name="OutwardAddress" Type="String" />
        <asp:Parameter Name="Outwardtopic" Type="String" />
        <asp:Parameter Name="OutwardFileNo" Type="Int32" />
        <asp:Parameter Name="HowSend" Type="String" />
        <asp:Parameter Name="Outletter" Type="String" />
        <asp:Parameter Name="StampUsed" Type="String" />
        <asp:Parameter Name="Ps" Type="Int32" />
        <asp:Parameter Name="Stamppurchased" Type="String" />
        <asp:Parameter Name="Ps1" Type="Int32" />
        <asp:Parameter Name="RemainingStamp" Type="String" />
        <asp:Parameter Name="Ps3" Type="Int32" />
        <asp:Parameter Name="OutwardStatus" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="Report" Type="String" />
        <asp:Parameter DbType="Date" Name="MeetingDate" />
        <asp:Parameter Name="NameOfMeeting" Type="String" />
        <asp:Parameter Name="Attendance" Type="Int32" />
        <asp:Parameter Name="MeetingReport" Type="String" />
        <asp:Parameter Name="MeetingAgenda" Type="String" />
        <asp:Parameter Name="DayName" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="ArrangedProgram" Type="String" />
        <asp:Parameter Name="ProgramAttendance" Type="Int32" />
        <asp:Parameter Name="Place" Type="String" />
        <asp:Parameter Name="ProgramReport" Type="String" />
        <asp:Parameter Name="ProgramPhoto" Type="String" />
        <asp:Parameter Name="TrainingName" Type="String" />
        <asp:Parameter Name="Trainee" Type="String" />
        <asp:Parameter Name="TrainDuration" Type="String" />
        <asp:Parameter Name="TrainCertificateNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="TrainDate" />
        <asp:Parameter Name="Trainhead" Type="String" />
        <asp:Parameter Name="TrainPlace" Type="String" />
        <asp:Parameter Name="TrainCertificate" Type="String" />
        <asp:Parameter DbType="Date" Name="VarshikAnudanDate" />
        <asp:Parameter Name="VarshikAnudanAmount" Type="Int32" />
        <asp:Parameter Name="UtilizationCertificate" Type="String" />
        <asp:Parameter Name="AuditReportYear" Type="String" />
        <asp:Parameter Name="AudiReport" Type="String" />
        <asp:Parameter Name="EmployeeName" Type="String" />
        <asp:Parameter DbType="Date" Name="SendingDate" />
        <asp:Parameter Name="Month" Type="String" />
        <asp:Parameter Name="MasikAhwalYear" Type="String" />
        <asp:Parameter Name="EmployeeReport" Type="String" />
        <asp:Parameter DbType="Date" Name="MembershipDate" />
        <asp:Parameter Name="MemberName" Type="String" />
        <asp:Parameter Name="MemberAddress" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="Int32" />
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Topic" Type="String" />
        <asp:Parameter DbType="Date" Name="GrDate" />
        <asp:Parameter Name="Gr" Type="String" />
        <asp:Parameter Name="OrganisationName" Type="String" />
        <asp:Parameter Name="OrganisationAddress" Type="String" />
        <asp:Parameter Name="HeadOfOrganisation" Type="String" />
        <asp:Parameter Name="HeadContactNo" Type="Int32" />
        <asp:Parameter Name="SalgnataYear" Type="Int32" />
        <asp:Parameter Name="SalgnataAmount" Type="Int32" />
        <asp:Parameter Name="SalgnataReceiptNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="SalgnataReceiptNoDate" />
        <asp:Parameter Name="DistrictMemberName" Type="String" />
        <asp:Parameter Name="DistrictCommitteeName" Type="String" />
        <asp:Parameter Name="DistrictMemberHomeAddress" Type="String" />
        <asp:Parameter Name="DistrictMemberSchoolName" Type="String" />
        <asp:Parameter Name="DistrictMemberSchoolAddress" Type="String" />
        <asp:Parameter Name="DistrictMemberPositionName" Type="String" />
        <asp:Parameter Name="DistrictMemberDuration" Type="String" />
        <asp:Parameter DbType="Date" Name="DistrictMemberDateOfBirth" />
        <asp:Parameter Name="DistrictMemberContactNo" Type="Int32" />
        <asp:Parameter Name="DistrictMemberEmailId" Type="String" />
        <asp:Parameter Name="StateMemberName" Type="String" />
        <asp:Parameter Name="StateMemberCommitteeName" Type="String" />
        <asp:Parameter Name="StateMemberHomeAddress" Type="String" />
        <asp:Parameter Name="StateMemberSchoolName" Type="String" />
        <asp:Parameter Name="StateMemberSchoolAddress" Type="String" />
        <asp:Parameter Name="StateMemberPositionName" Type="String" />
        <asp:Parameter Name="StateMemberDuration" Type="String" />
        <asp:Parameter DbType="Date" Name="StateMemberDateOfBirth" />
        <asp:Parameter Name="StateMemberContactNo" Type="Int32" />
        <asp:Parameter Name="StateMemberEmailId" Type="String" />
        <asp:Parameter DbType="Date" Name="NewEquipDate" />
        <asp:Parameter Name="NewEquipName" Type="String" />
        <asp:Parameter Name="NewEquipPrice" Type="Int32" />
        <asp:Parameter Name="NewEquipPricePs" Type="Int32" />
        <asp:Parameter Name="NewEquipDescription" Type="String" />
        <asp:Parameter Name="NewEquipBillNo" Type="Int32" />
        <asp:Parameter Name="NewEquipQuantity" Type="Int32" />
        <asp:Parameter Name="NewEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="NewEquipTotalPricePs" Type="Int32" />
        <asp:Parameter DbType="Date" Name="InwardEquipDate" />
        <asp:Parameter Name="InwardEquipName" Type="String" />
        <asp:Parameter Name="InwardEquipPrice" Type="Int32" />
        <asp:Parameter Name="InwardEquipPricePs" Type="Int32" />
        <asp:Parameter Name="InwardEquipDescription" Type="String" />
        <asp:Parameter Name="InwardEquipBillNo" Type="Int32" />
        <asp:Parameter Name="InwardEquipQuantity" Type="Int32" />
        <asp:Parameter Name="InwardEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="InwardEquipTotalPricePs" Type="Int32" />
        <asp:Parameter DbType="Date" Name="OutwardEquipDate" />
        <asp:Parameter Name="OutwardEquipName" Type="String" />
        <asp:Parameter Name="OutwardEquipPrice" Type="Int32" />
        <asp:Parameter Name="OutwardEquipPricePs" Type="Int32" />
        <asp:Parameter Name="OutwardEquipDescription" Type="String" />
        <asp:Parameter Name="OutwardEquipBillNo" Type="Int32" />
        <asp:Parameter Name="OutwardEquipQuantity" Type="Int32" />
        <asp:Parameter Name="OutwardEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="OutwardEquipTotalPricePs" Type="Int32" />
        <asp:Parameter Name="HolidayYear" Type="String" />
        <asp:Parameter Name="HolidayEmployeeName" Type="String" />
        <asp:Parameter Name="Arjit" Type="String" />
        <asp:Parameter Name="Vaidyakiya" Type="String" />
        <asp:Parameter Name="Kirkod" Type="String" />
        <asp:Parameter Name="HolidayTakenArjit" Type="String" />
        <asp:Parameter Name="HolidayTakenVaidyakiya" Type="String" />
        <asp:Parameter Name="HolidayTakenKirkod" Type="String" />
        <asp:Parameter Name="RemainingArjit" Type="String" />
        <asp:Parameter Name="RemainingVaidyakiya" Type="String" />
        <asp:Parameter Name="RemainingKirkod" Type="String" />
        <asp:Parameter Name="DonationYear" Type="String" />
        <asp:Parameter Name="DonationName" Type="String" />
        <asp:Parameter Name="DonationPurpose" Type="String" />
        <asp:Parameter Name="DonationAmount" Type="String" />
        <asp:Parameter Name="DonationReceiptNo" Type="String" />
        <asp:Parameter Name="DonationReceiptNoDate" Type="String" />
        <asp:Parameter Name="MaintainanceYear" Type="String" />
        <asp:Parameter Name="MaintainanceMonth" Type="String" />
        <asp:Parameter Name="MaintainanceElectricBill" Type="String" />
        <asp:Parameter Name="MaintainanceWaterBill" Type="String" />
        <asp:Parameter Name="MaintainanceTelephoneBill" Type="String" />
        <asp:Parameter Name="MaintainanceTax" Type="String" />
        <asp:Parameter Name="Questions" Type="String" />
        <asp:Parameter Name="Answers" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="InwardNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="LetterAcceptingDate" />
        <asp:Parameter Name="LetterNo1" Type="Int32" />
        <asp:Parameter DbType="Date" Name="LetterDate" />
        <asp:Parameter Name="LetterFrom" Type="String" />
        <asp:Parameter Name="InLetter" Type="String" />
        <asp:Parameter Name="TopicLetter" Type="String" />
        <asp:Parameter Name="FileNo" Type="Int32" />
        <asp:Parameter Name="InwardStatus" Type="String" />
        <asp:Parameter DbType="Date" Name="OutwardDate" />
        <asp:Parameter Name="OutwardLetterNo1" Type="Int32" />
        <asp:Parameter Name="OutwardTo" Type="String" />
        <asp:Parameter Name="OutwardAddress" Type="String" />
        <asp:Parameter Name="Outwardtopic" Type="String" />
        <asp:Parameter Name="OutwardFileNo" Type="Int32" />
        <asp:Parameter Name="HowSend" Type="String" />
        <asp:Parameter Name="Outletter" Type="String" />
        <asp:Parameter Name="StampUsed" Type="String" />
        <asp:Parameter Name="Ps" Type="Int32" />
        <asp:Parameter Name="Stamppurchased" Type="String" />
        <asp:Parameter Name="Ps1" Type="Int32" />
        <asp:Parameter Name="RemainingStamp" Type="String" />
        <asp:Parameter Name="Ps3" Type="Int32" />
        <asp:Parameter Name="OutwardStatus" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="Report" Type="String" />
        <asp:Parameter DbType="Date" Name="MeetingDate" />
        <asp:Parameter Name="NameOfMeeting" Type="String" />
        <asp:Parameter Name="Attendance" Type="Int32" />
        <asp:Parameter Name="MeetingReport" Type="String" />
        <asp:Parameter Name="MeetingAgenda" Type="String" />
        <asp:Parameter Name="DayName" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="ArrangedProgram" Type="String" />
        <asp:Parameter Name="ProgramAttendance" Type="Int32" />
        <asp:Parameter Name="Place" Type="String" />
        <asp:Parameter Name="ProgramReport" Type="String" />
        <asp:Parameter Name="ProgramPhoto" Type="String" />
        <asp:Parameter Name="TrainingName" Type="String" />
        <asp:Parameter Name="Trainee" Type="String" />
        <asp:Parameter Name="TrainDuration" Type="String" />
        <asp:Parameter Name="TrainCertificateNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="TrainDate" />
        <asp:Parameter Name="Trainhead" Type="String" />
        <asp:Parameter Name="TrainPlace" Type="String" />
        <asp:Parameter Name="TrainCertificate" Type="String" />
        <asp:Parameter DbType="Date" Name="VarshikAnudanDate" />
        <asp:Parameter Name="VarshikAnudanAmount" Type="Int32" />
        <asp:Parameter Name="UtilizationCertificate" Type="String" />
        <asp:Parameter Name="AuditReportYear" Type="String" />
        <asp:Parameter Name="AudiReport" Type="String" />
        <asp:Parameter Name="EmployeeName" Type="String" />
        <asp:Parameter DbType="Date" Name="SendingDate" />
        <asp:Parameter Name="Month" Type="String" />
        <asp:Parameter Name="MasikAhwalYear" Type="String" />
        <asp:Parameter Name="EmployeeReport" Type="String" />
        <asp:Parameter DbType="Date" Name="MembershipDate" />
        <asp:Parameter Name="MemberName" Type="String" />
        <asp:Parameter Name="MemberAddress" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="Int32" />
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Topic" Type="String" />
        <asp:Parameter DbType="Date" Name="GrDate" />
        <asp:Parameter Name="Gr" Type="String" />
        <asp:Parameter Name="OrganisationName" Type="String" />
        <asp:Parameter Name="OrganisationAddress" Type="String" />
        <asp:Parameter Name="HeadOfOrganisation" Type="String" />
        <asp:Parameter Name="HeadContactNo" Type="Int32" />
        <asp:Parameter Name="SalgnataYear" Type="Int32" />
        <asp:Parameter Name="SalgnataAmount" Type="Int32" />
        <asp:Parameter Name="SalgnataReceiptNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="SalgnataReceiptNoDate" />
        <asp:Parameter Name="DistrictMemberName" Type="String" />
        <asp:Parameter Name="DistrictCommitteeName" Type="String" />
        <asp:Parameter Name="DistrictMemberHomeAddress" Type="String" />
        <asp:Parameter Name="DistrictMemberSchoolName" Type="String" />
        <asp:Parameter Name="DistrictMemberSchoolAddress" Type="String" />
        <asp:Parameter Name="DistrictMemberPositionName" Type="String" />
        <asp:Parameter Name="DistrictMemberDuration" Type="String" />
        <asp:Parameter DbType="Date" Name="DistrictMemberDateOfBirth" />
        <asp:Parameter Name="DistrictMemberContactNo" Type="Int32" />
        <asp:Parameter Name="DistrictMemberEmailId" Type="String" />
        <asp:Parameter Name="StateMemberName" Type="String" />
        <asp:Parameter Name="StateMemberCommitteeName" Type="String" />
        <asp:Parameter Name="StateMemberHomeAddress" Type="String" />
        <asp:Parameter Name="StateMemberSchoolName" Type="String" />
        <asp:Parameter Name="StateMemberSchoolAddress" Type="String" />
        <asp:Parameter Name="StateMemberPositionName" Type="String" />
        <asp:Parameter Name="StateMemberDuration" Type="String" />
        <asp:Parameter DbType="Date" Name="StateMemberDateOfBirth" />
        <asp:Parameter Name="StateMemberContactNo" Type="Int32" />
        <asp:Parameter Name="StateMemberEmailId" Type="String" />
        <asp:Parameter DbType="Date" Name="NewEquipDate" />
        <asp:Parameter Name="NewEquipName" Type="String" />
        <asp:Parameter Name="NewEquipPrice" Type="Int32" />
        <asp:Parameter Name="NewEquipPricePs" Type="Int32" />
        <asp:Parameter Name="NewEquipDescription" Type="String" />
        <asp:Parameter Name="NewEquipBillNo" Type="Int32" />
        <asp:Parameter Name="NewEquipQuantity" Type="Int32" />
        <asp:Parameter Name="NewEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="NewEquipTotalPricePs" Type="Int32" />
        <asp:Parameter DbType="Date" Name="InwardEquipDate" />
        <asp:Parameter Name="InwardEquipName" Type="String" />
        <asp:Parameter Name="InwardEquipPrice" Type="Int32" />
        <asp:Parameter Name="InwardEquipPricePs" Type="Int32" />
        <asp:Parameter Name="InwardEquipDescription" Type="String" />
        <asp:Parameter Name="InwardEquipBillNo" Type="Int32" />
        <asp:Parameter Name="InwardEquipQuantity" Type="Int32" />
        <asp:Parameter Name="InwardEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="InwardEquipTotalPricePs" Type="Int32" />
        <asp:Parameter DbType="Date" Name="OutwardEquipDate" />
        <asp:Parameter Name="OutwardEquipName" Type="String" />
        <asp:Parameter Name="OutwardEquipPrice" Type="Int32" />
        <asp:Parameter Name="OutwardEquipPricePs" Type="Int32" />
        <asp:Parameter Name="OutwardEquipDescription" Type="String" />
        <asp:Parameter Name="OutwardEquipBillNo" Type="Int32" />
        <asp:Parameter Name="OutwardEquipQuantity" Type="Int32" />
        <asp:Parameter Name="OutwardEquipTotalPrice" Type="Int32" />
        <asp:Parameter Name="OutwardEquipTotalPricePs" Type="Int32" />
        <asp:Parameter Name="HolidayYear" Type="String" />
        <asp:Parameter Name="HolidayEmployeeName" Type="String" />
        <asp:Parameter Name="Arjit" Type="String" />
        <asp:Parameter Name="Vaidyakiya" Type="String" />
        <asp:Parameter Name="Kirkod" Type="String" />
        <asp:Parameter Name="HolidayTakenArjit" Type="String" />
        <asp:Parameter Name="HolidayTakenVaidyakiya" Type="String" />
        <asp:Parameter Name="HolidayTakenKirkod" Type="String" />
        <asp:Parameter Name="RemainingArjit" Type="String" />
        <asp:Parameter Name="RemainingVaidyakiya" Type="String" />
        <asp:Parameter Name="RemainingKirkod" Type="String" />
        <asp:Parameter Name="DonationYear" Type="String" />
        <asp:Parameter Name="DonationName" Type="String" />
        <asp:Parameter Name="DonationPurpose" Type="String" />
        <asp:Parameter Name="DonationAmount" Type="String" />
        <asp:Parameter Name="DonationReceiptNo" Type="String" />
        <asp:Parameter Name="DonationReceiptNoDate" Type="String" />
        <asp:Parameter Name="MaintainanceYear" Type="String" />
        <asp:Parameter Name="MaintainanceMonth" Type="String" />
        <asp:Parameter Name="MaintainanceElectricBill" Type="String" />
        <asp:Parameter Name="MaintainanceWaterBill" Type="String" />
        <asp:Parameter Name="MaintainanceTelephoneBill" Type="String" />
        <asp:Parameter Name="MaintainanceTax" Type="String" />
        <asp:Parameter Name="Questions" Type="String" />
        <asp:Parameter Name="Answers" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [RajyaPuraskarGuide] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [RajyaPuraskarGuide] ([District], [NameOfTheGuide], [DateOfBirth], [HomeAddress], [PinCode], [TelifAny], [NameOfUnit], [AddressOfUnit], [CharterNo], [DateOfValidity], [DateOfInvestitute], [DateOfCompletionOfRajyaPuraskar], [Photo], [DateOfBirthCertificate], [SignatureOfGuideCaptain], [SignatureOfApplicant], [NameOfUnitLeader], [GuideCaptainQualification], [CertificateNo], [WarrantNo], [DateOfValidity1], [SignatureOfDOC], [Date], [SignatureOfDistrictSecretary], [Date1], [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [Date2], [Status]) VALUES (@District, @NameOfTheGuide, @DateOfBirth, @HomeAddress, @PinCode, @TelifAny, @NameOfUnit, @AddressOfUnit, @CharterNo, @DateOfValidity, @DateOfInvestitute, @DateOfCompletionOfRajyaPuraskar, @Photo, @DateOfBirthCertificate, @SignatureOfGuideCaptain, @SignatureOfApplicant, @NameOfUnitLeader, @GuideCaptainQualification, @CertificateNo, @WarrantNo, @DateOfValidity1, @SignatureOfDOC, @Date, @SignatureOfDistrictSecretary, @Date1, @DateOfCompletionOfPravesh, @DateOfCompletionOfPrathamSopan, @DateOfCompletionOfDwitiyaSopan, @DateOfCompletionOfTritiyaSopan, @CertificateNo1, @DateOfIssue, @NameOfBadge, @DateOfPassing, @NameOfExaminer, @NameOfBadge1, @DateOfPassing1, @NameOfExaminer1, @NameOfBadge2, @DateOfPassing2, @NameOfExaminer2, @NameOfBadge3, @DateOfPassing3, @NameOfExaminer3, @NameOfBadge4, @DateOfPassing4, @NameOfExaminer4, @NameOfBadge5, @DateOfPassing5, @NameOfExaminer5, @NameOfBadge6, @DateOfPassing6, @NameOfExaminer6, @NameOfBadge7, @DateOfPassing7, @NameOfExaminer7, @NameOfBadge8, @DateOfPassing8, @NameOfExaminer8, @NameOfBadge9, @DateOfPassing9, @NameOfExaminer9, @Date2, @Status)" 
            SelectCommand="SELECT * FROM [RajyaPuraskarGuide]" 
            UpdateCommand="UPDATE [RajyaPuraskarGuide] SET [District] = @District, [NameOfTheGuide] = @NameOfTheGuide, [DateOfBirth] = @DateOfBirth, [HomeAddress] = @HomeAddress, [PinCode] = @PinCode, [TelifAny] = @TelifAny, [NameOfUnit] = @NameOfUnit, [AddressOfUnit] = @AddressOfUnit, [CharterNo] = @CharterNo, [DateOfValidity] = @DateOfValidity, [DateOfInvestitute] = @DateOfInvestitute, [DateOfCompletionOfRajyaPuraskar] = @DateOfCompletionOfRajyaPuraskar, [Photo] = @Photo, [DateOfBirthCertificate] = @DateOfBirthCertificate, [SignatureOfGuideCaptain] = @SignatureOfGuideCaptain, [SignatureOfApplicant] = @SignatureOfApplicant, [NameOfUnitLeader] = @NameOfUnitLeader, [GuideCaptainQualification] = @GuideCaptainQualification, [CertificateNo] = @CertificateNo, [WarrantNo] = @WarrantNo, [DateOfValidity1] = @DateOfValidity1, [SignatureOfDOC] = @SignatureOfDOC, [Date] = @Date, [SignatureOfDistrictSecretary] = @SignatureOfDistrictSecretary, [Date1] = @Date1, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfCompletionOfPrathamSopan] = @DateOfCompletionOfPrathamSopan, [DateOfCompletionOfDwitiyaSopan] = @DateOfCompletionOfDwitiyaSopan, [DateOfCompletionOfTritiyaSopan] = @DateOfCompletionOfTritiyaSopan, [CertificateNo1] = @CertificateNo1, [DateOfIssue] = @DateOfIssue, [NameOfBadge] = @NameOfBadge, [DateOfPassing] = @DateOfPassing, [NameOfExaminer] = @NameOfExaminer, [NameOfBadge1] = @NameOfBadge1, [DateOfPassing1] = @DateOfPassing1, [NameOfExaminer1] = @NameOfExaminer1, [NameOfBadge2] = @NameOfBadge2, [DateOfPassing2] = @DateOfPassing2, [NameOfExaminer2] = @NameOfExaminer2, [NameOfBadge3] = @NameOfBadge3, [DateOfPassing3] = @DateOfPassing3, [NameOfExaminer3] = @NameOfExaminer3, [NameOfBadge4] = @NameOfBadge4, [DateOfPassing4] = @DateOfPassing4, [NameOfExaminer4] = @NameOfExaminer4, [NameOfBadge5] = @NameOfBadge5, [DateOfPassing5] = @DateOfPassing5, [NameOfExaminer5] = @NameOfExaminer5, [NameOfBadge6] = @NameOfBadge6, [DateOfPassing6] = @DateOfPassing6, [NameOfExaminer6] = @NameOfExaminer6, [NameOfBadge7] = @NameOfBadge7, [DateOfPassing7] = @DateOfPassing7, [NameOfExaminer7] = @NameOfExaminer7, [NameOfBadge8] = @NameOfBadge8, [DateOfPassing8] = @DateOfPassing8, [NameOfExaminer8] = @NameOfExaminer8, [NameOfBadge9] = @NameOfBadge9, [DateOfPassing9] = @DateOfPassing9, [NameOfExaminer9] = @NameOfExaminer9, [Date2] = @Date2, [Status] = @Status WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="District" Type="String" />
        <asp:Parameter Name="NameOfTheGuide" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="HomeAddress" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter Name="TelifAny" Type="String" />
        <asp:Parameter Name="NameOfUnit" Type="String" />
        <asp:Parameter Name="AddressOfUnit" Type="String" />
        <asp:Parameter Name="CharterNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity" />
        <asp:Parameter DbType="Date" Name="DateOfInvestitute" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
        <asp:Parameter Name="Photo" Type="String" />
        <asp:Parameter Name="DateOfBirthCertificate" Type="String" />
        <asp:Parameter Name="SignatureOfGuideCaptain" Type="String" />
        <asp:Parameter Name="SignatureOfApplicant" Type="String" />
        <asp:Parameter Name="NameOfUnitLeader" Type="String" />
        <asp:Parameter Name="GuideCaptainQualification" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity1" />
        <asp:Parameter Name="SignatureOfDOC" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="SignatureOfDistrictSecretary" Type="String" />
        <asp:Parameter DbType="Date" Name="Date1" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
        <asp:Parameter Name="CertificateNo1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfIssue" />
        <asp:Parameter Name="NameOfBadge" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing" />
        <asp:Parameter Name="NameOfExaminer" Type="String" />
        <asp:Parameter Name="NameOfBadge1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing1" />
        <asp:Parameter Name="NameOfExaminer1" Type="String" />
        <asp:Parameter Name="NameOfBadge2" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing2" />
        <asp:Parameter Name="NameOfExaminer2" Type="String" />
        <asp:Parameter Name="NameOfBadge3" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing3" />
        <asp:Parameter Name="NameOfExaminer3" Type="String" />
        <asp:Parameter Name="NameOfBadge4" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing4" />
        <asp:Parameter Name="NameOfExaminer4" Type="String" />
        <asp:Parameter Name="NameOfBadge5" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing5" />
        <asp:Parameter Name="NameOfExaminer5" Type="String" />
        <asp:Parameter Name="NameOfBadge6" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing6" />
        <asp:Parameter Name="NameOfExaminer6" Type="String" />
        <asp:Parameter Name="NameOfBadge7" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing7" />
        <asp:Parameter Name="NameOfExaminer7" Type="String" />
        <asp:Parameter Name="NameOfBadge8" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing8" />
        <asp:Parameter Name="NameOfExaminer8" Type="String" />
        <asp:Parameter Name="NameOfBadge9" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing9" />
        <asp:Parameter Name="NameOfExaminer9" Type="String" />
        <asp:Parameter DbType="Date" Name="Date2" />
        <asp:Parameter Name="Status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="District" Type="String" />
        <asp:Parameter Name="NameOfTheGuide" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="HomeAddress" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter Name="TelifAny" Type="String" />
        <asp:Parameter Name="NameOfUnit" Type="String" />
        <asp:Parameter Name="AddressOfUnit" Type="String" />
        <asp:Parameter Name="CharterNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity" />
        <asp:Parameter DbType="Date" Name="DateOfInvestitute" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
        <asp:Parameter Name="Photo" Type="String" />
        <asp:Parameter Name="DateOfBirthCertificate" Type="String" />
        <asp:Parameter Name="SignatureOfGuideCaptain" Type="String" />
        <asp:Parameter Name="SignatureOfApplicant" Type="String" />
        <asp:Parameter Name="NameOfUnitLeader" Type="String" />
        <asp:Parameter Name="GuideCaptainQualification" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity1" />
        <asp:Parameter Name="SignatureOfDOC" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="SignatureOfDistrictSecretary" Type="String" />
        <asp:Parameter DbType="Date" Name="Date1" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
        <asp:Parameter Name="CertificateNo1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfIssue" />
        <asp:Parameter Name="NameOfBadge" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing" />
        <asp:Parameter Name="NameOfExaminer" Type="String" />
        <asp:Parameter Name="NameOfBadge1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing1" />
        <asp:Parameter Name="NameOfExaminer1" Type="String" />
        <asp:Parameter Name="NameOfBadge2" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing2" />
        <asp:Parameter Name="NameOfExaminer2" Type="String" />
        <asp:Parameter Name="NameOfBadge3" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing3" />
        <asp:Parameter Name="NameOfExaminer3" Type="String" />
        <asp:Parameter Name="NameOfBadge4" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing4" />
        <asp:Parameter Name="NameOfExaminer4" Type="String" />
        <asp:Parameter Name="NameOfBadge5" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing5" />
        <asp:Parameter Name="NameOfExaminer5" Type="String" />
        <asp:Parameter Name="NameOfBadge6" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing6" />
        <asp:Parameter Name="NameOfExaminer6" Type="String" />
        <asp:Parameter Name="NameOfBadge7" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing7" />
        <asp:Parameter Name="NameOfExaminer7" Type="String" />
        <asp:Parameter Name="NameOfBadge8" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing8" />
        <asp:Parameter Name="NameOfExaminer8" Type="String" />
        <asp:Parameter Name="NameOfBadge9" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing9" />
        <asp:Parameter Name="NameOfExaminer9" Type="String" />
        <asp:Parameter DbType="Date" Name="Date2" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [RajyaPuraskarScout] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [RajyaPuraskarScout] ([District], [NameOfTheScout], [DateOfBirth], [HomeAddress], [PinCode], [TelifAny], [NameOfUnit], [AddressOfUnit], [CharterNo], [DateOfValidity], [DateOfInvestitute], [DateOfCompletionOfRajyaPuraskar], [Photo], [DateOfBirthCertificate], [SignatureOfScoutMaster], [SignatureOfApplicant], [NameOfUnitLeader], [ScoutLeaderQualification], [CertificateNo], [WarrantNo], [DateOfValidity1], [SignatureOfDistrictOrganisor], [Date], [SignatureOfDistrictSecretary], [Date1], [DateOfCompletionOfPravesh], [DateOfCompletionOfPrathamSopan], [DateOfCompletionOfDwitiyaSopan], [DateOfCompletionOfTritiyaSopan], [CertificateNo1], [DateOfIssue], [NameOfBadge], [DateOfPassing], [NameOfExaminer], [NameOfBadge1], [DateOfPassing1], [NameOfExaminer1], [NameOfBadge2], [DateOfPassing2], [NameOfExaminer2], [NameOfBadge3], [DateOfPassing3], [NameOfExaminer3], [NameOfBadge4], [DateOfPassing4], [NameOfExaminer4], [NameOfBadge5], [DateOfPassing5], [NameOfExaminer5], [NameOfBadge6], [DateOfPassing6], [NameOfExaminer6], [NameOfBadge7], [DateOfPassing7], [NameOfExaminer7], [NameOfBadge8], [DateOfPassing8], [NameOfExaminer8], [NameOfBadge9], [DateOfPassing9], [NameOfExaminer9], [NameOfBadge10], [DateOfPassing10], [NameOfExaminer10], [NameOfBadge11], [DateOfPassing11], [NameOfExaminer11], [Date2], [Status]) VALUES (@District, @NameOfTheScout, @DateOfBirth, @HomeAddress, @PinCode, @TelifAny, @NameOfUnit, @AddressOfUnit, @CharterNo, @DateOfValidity, @DateOfInvestitute, @DateOfCompletionOfRajyaPuraskar, @Photo, @DateOfBirthCertificate, @SignatureOfScoutMaster, @SignatureOfApplicant, @NameOfUnitLeader, @ScoutLeaderQualification, @CertificateNo, @WarrantNo, @DateOfValidity1, @SignatureOfDistrictOrganisor, @Date, @SignatureOfDistrictSecretary, @Date1, @DateOfCompletionOfPravesh, @DateOfCompletionOfPrathamSopan, @DateOfCompletionOfDwitiyaSopan, @DateOfCompletionOfTritiyaSopan, @CertificateNo1, @DateOfIssue, @NameOfBadge, @DateOfPassing, @NameOfExaminer, @NameOfBadge1, @DateOfPassing1, @NameOfExaminer1, @NameOfBadge2, @DateOfPassing2, @NameOfExaminer2, @NameOfBadge3, @DateOfPassing3, @NameOfExaminer3, @NameOfBadge4, @DateOfPassing4, @NameOfExaminer4, @NameOfBadge5, @DateOfPassing5, @NameOfExaminer5, @NameOfBadge6, @DateOfPassing6, @NameOfExaminer6, @NameOfBadge7, @DateOfPassing7, @NameOfExaminer7, @NameOfBadge8, @DateOfPassing8, @NameOfExaminer8, @NameOfBadge9, @DateOfPassing9, @NameOfExaminer9, @NameOfBadge10, @DateOfPassing10, @NameOfExaminer10, @NameOfBadge11, @DateOfPassing11, @NameOfExaminer11, @Date2, @Status)" 
            SelectCommand="SELECT * FROM [RajyaPuraskarScout]" 
            UpdateCommand="UPDATE [RajyaPuraskarScout] SET [District] = @District, [NameOfTheScout] = @NameOfTheScout, [DateOfBirth] = @DateOfBirth, [HomeAddress] = @HomeAddress, [PinCode] = @PinCode, [TelifAny] = @TelifAny, [NameOfUnit] = @NameOfUnit, [AddressOfUnit] = @AddressOfUnit, [CharterNo] = @CharterNo, [DateOfValidity] = @DateOfValidity, [DateOfInvestitute] = @DateOfInvestitute, [DateOfCompletionOfRajyaPuraskar] = @DateOfCompletionOfRajyaPuraskar, [Photo] = @Photo, [DateOfBirthCertificate] = @DateOfBirthCertificate, [SignatureOfScoutMaster] = @SignatureOfScoutMaster, [SignatureOfApplicant] = @SignatureOfApplicant, [NameOfUnitLeader] = @NameOfUnitLeader, [ScoutLeaderQualification] = @ScoutLeaderQualification, [CertificateNo] = @CertificateNo, [WarrantNo] = @WarrantNo, [DateOfValidity1] = @DateOfValidity1, [SignatureOfDistrictOrganisor] = @SignatureOfDistrictOrganisor, [Date] = @Date, [SignatureOfDistrictSecretary] = @SignatureOfDistrictSecretary, [Date1] = @Date1, [DateOfCompletionOfPravesh] = @DateOfCompletionOfPravesh, [DateOfCompletionOfPrathamSopan] = @DateOfCompletionOfPrathamSopan, [DateOfCompletionOfDwitiyaSopan] = @DateOfCompletionOfDwitiyaSopan, [DateOfCompletionOfTritiyaSopan] = @DateOfCompletionOfTritiyaSopan, [CertificateNo1] = @CertificateNo1, [DateOfIssue] = @DateOfIssue, [NameOfBadge] = @NameOfBadge, [DateOfPassing] = @DateOfPassing, [NameOfExaminer] = @NameOfExaminer, [NameOfBadge1] = @NameOfBadge1, [DateOfPassing1] = @DateOfPassing1, [NameOfExaminer1] = @NameOfExaminer1, [NameOfBadge2] = @NameOfBadge2, [DateOfPassing2] = @DateOfPassing2, [NameOfExaminer2] = @NameOfExaminer2, [NameOfBadge3] = @NameOfBadge3, [DateOfPassing3] = @DateOfPassing3, [NameOfExaminer3] = @NameOfExaminer3, [NameOfBadge4] = @NameOfBadge4, [DateOfPassing4] = @DateOfPassing4, [NameOfExaminer4] = @NameOfExaminer4, [NameOfBadge5] = @NameOfBadge5, [DateOfPassing5] = @DateOfPassing5, [NameOfExaminer5] = @NameOfExaminer5, [NameOfBadge6] = @NameOfBadge6, [DateOfPassing6] = @DateOfPassing6, [NameOfExaminer6] = @NameOfExaminer6, [NameOfBadge7] = @NameOfBadge7, [DateOfPassing7] = @DateOfPassing7, [NameOfExaminer7] = @NameOfExaminer7, [NameOfBadge8] = @NameOfBadge8, [DateOfPassing8] = @DateOfPassing8, [NameOfExaminer8] = @NameOfExaminer8, [NameOfBadge9] = @NameOfBadge9, [DateOfPassing9] = @DateOfPassing9, [NameOfExaminer9] = @NameOfExaminer9, [NameOfBadge10] = @NameOfBadge10, [DateOfPassing10] = @DateOfPassing10, [NameOfExaminer10] = @NameOfExaminer10, [NameOfBadge11] = @NameOfBadge11, [DateOfPassing11] = @DateOfPassing11, [NameOfExaminer11] = @NameOfExaminer11, [Date2] = @Date2, [Status] = @Status WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="District" Type="String" />
        <asp:Parameter Name="NameOfTheScout" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="HomeAddress" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter Name="TelifAny" Type="String" />
        <asp:Parameter Name="NameOfUnit" Type="String" />
        <asp:Parameter Name="AddressOfUnit" Type="String" />
        <asp:Parameter Name="CharterNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity" />
        <asp:Parameter DbType="Date" Name="DateOfInvestitute" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
        <asp:Parameter Name="Photo" Type="String" />
        <asp:Parameter Name="DateOfBirthCertificate" Type="String" />
        <asp:Parameter Name="SignatureOfScoutMaster" Type="String" />
        <asp:Parameter Name="SignatureOfApplicant" Type="String" />
        <asp:Parameter Name="NameOfUnitLeader" Type="String" />
        <asp:Parameter Name="ScoutLeaderQualification" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity1" />
        <asp:Parameter Name="SignatureOfDistrictOrganisor" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="SignatureOfDistrictSecretary" Type="String" />
        <asp:Parameter DbType="Date" Name="Date1" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
        <asp:Parameter Name="CertificateNo1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfIssue" />
        <asp:Parameter Name="NameOfBadge" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing" />
        <asp:Parameter Name="NameOfExaminer" Type="String" />
        <asp:Parameter Name="NameOfBadge1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing1" />
        <asp:Parameter Name="NameOfExaminer1" Type="String" />
        <asp:Parameter Name="NameOfBadge2" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing2" />
        <asp:Parameter Name="NameOfExaminer2" Type="String" />
        <asp:Parameter Name="NameOfBadge3" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing3" />
        <asp:Parameter Name="NameOfExaminer3" Type="String" />
        <asp:Parameter Name="NameOfBadge4" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing4" />
        <asp:Parameter Name="NameOfExaminer4" Type="String" />
        <asp:Parameter Name="NameOfBadge5" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing5" />
        <asp:Parameter Name="NameOfExaminer5" Type="String" />
        <asp:Parameter Name="NameOfBadge6" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing6" />
        <asp:Parameter Name="NameOfExaminer6" Type="String" />
        <asp:Parameter Name="NameOfBadge7" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing7" />
        <asp:Parameter Name="NameOfExaminer7" Type="String" />
        <asp:Parameter Name="NameOfBadge8" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing8" />
        <asp:Parameter Name="NameOfExaminer8" Type="String" />
        <asp:Parameter Name="NameOfBadge9" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing9" />
        <asp:Parameter Name="NameOfExaminer9" Type="String" />
        <asp:Parameter Name="NameOfBadge10" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing10" />
        <asp:Parameter Name="NameOfExaminer10" Type="String" />
        <asp:Parameter Name="NameOfBadge11" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing11" />
        <asp:Parameter Name="NameOfExaminer11" Type="String" />
        <asp:Parameter DbType="Date" Name="Date2" />
        <asp:Parameter Name="Status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="District" Type="String" />
        <asp:Parameter Name="NameOfTheScout" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfBirth" />
        <asp:Parameter Name="HomeAddress" Type="String" />
        <asp:Parameter Name="PinCode" Type="String" />
        <asp:Parameter Name="TelifAny" Type="String" />
        <asp:Parameter Name="NameOfUnit" Type="String" />
        <asp:Parameter Name="AddressOfUnit" Type="String" />
        <asp:Parameter Name="CharterNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity" />
        <asp:Parameter DbType="Date" Name="DateOfInvestitute" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfRajyaPuraskar" />
        <asp:Parameter Name="Photo" Type="String" />
        <asp:Parameter Name="DateOfBirthCertificate" Type="String" />
        <asp:Parameter Name="SignatureOfScoutMaster" Type="String" />
        <asp:Parameter Name="SignatureOfApplicant" Type="String" />
        <asp:Parameter Name="NameOfUnitLeader" Type="String" />
        <asp:Parameter Name="ScoutLeaderQualification" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="String" />
        <asp:Parameter Name="WarrantNo" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfValidity1" />
        <asp:Parameter Name="SignatureOfDistrictOrganisor" Type="String" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="SignatureOfDistrictSecretary" Type="String" />
        <asp:Parameter DbType="Date" Name="Date1" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPravesh" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfPrathamSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfDwitiyaSopan" />
        <asp:Parameter DbType="Date" Name="DateOfCompletionOfTritiyaSopan" />
        <asp:Parameter Name="CertificateNo1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfIssue" />
        <asp:Parameter Name="NameOfBadge" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing" />
        <asp:Parameter Name="NameOfExaminer" Type="String" />
        <asp:Parameter Name="NameOfBadge1" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing1" />
        <asp:Parameter Name="NameOfExaminer1" Type="String" />
        <asp:Parameter Name="NameOfBadge2" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing2" />
        <asp:Parameter Name="NameOfExaminer2" Type="String" />
        <asp:Parameter Name="NameOfBadge3" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing3" />
        <asp:Parameter Name="NameOfExaminer3" Type="String" />
        <asp:Parameter Name="NameOfBadge4" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing4" />
        <asp:Parameter Name="NameOfExaminer4" Type="String" />
        <asp:Parameter Name="NameOfBadge5" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing5" />
        <asp:Parameter Name="NameOfExaminer5" Type="String" />
        <asp:Parameter Name="NameOfBadge6" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing6" />
        <asp:Parameter Name="NameOfExaminer6" Type="String" />
        <asp:Parameter Name="NameOfBadge7" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing7" />
        <asp:Parameter Name="NameOfExaminer7" Type="String" />
        <asp:Parameter Name="NameOfBadge8" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing8" />
        <asp:Parameter Name="NameOfExaminer8" Type="String" />
        <asp:Parameter Name="NameOfBadge9" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing9" />
        <asp:Parameter Name="NameOfExaminer9" Type="String" />
        <asp:Parameter Name="NameOfBadge10" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing10" />
        <asp:Parameter Name="NameOfExaminer10" Type="String" />
        <asp:Parameter Name="NameOfBadge11" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfPassing11" />
        <asp:Parameter Name="NameOfExaminer11" Type="String" />
        <asp:Parameter DbType="Date" Name="Date2" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE * FROM [SchoolTable]" 
            InsertCommand="INSERT INTO [SchoolTable] ([SchoolType], [Year], [UnitType], [UnitName], [SchoolName], [PermanentAddress], [Taluka], [ContactNo], [EmailId], [Password], [TribleSchool], [Date], [UnitLeaderSignature], [PrincipalSignature], [CharterNo], [WarrantNo], [RegistrationFess], [ReceiptNo], [PayDate], [RegistrationFees1], [ReceiptNo1], [PayDate1], [DistrictSignature], [Zilla], [FeesPaidMagzine], [CheckedMagzine], [khTotalContri], [khUnitContri], [khDistrictContri], [khStateContri], [NoOfStickers], [DhwajStickerFees], [DhwajStickerDistrictLevel], [DhwajStickerStateLevel], [PragatiPatParticipants], [PragatiPatCertificateNo], [PragatiPatDate], [PragatiPatExaminerName], [PragatiPatLetter], [UnitNondaniYear], [UnitNondaniNoOfUnits], [UnitNondaniAmount], [UnitNondaniReceiptNo], [UnitNondaniReceiptNoDate]) VALUES (@SchoolType, @Year, @UnitType, @UnitName, @SchoolName, @PermanentAddress, @Taluka, @ContactNo, @EmailId, @Password, @TribleSchool, @Date, @UnitLeaderSignature, @PrincipalSignature, @CharterNo, @WarrantNo, @RegistrationFess, @ReceiptNo, @PayDate, @RegistrationFees1, @ReceiptNo1, @PayDate1, @DistrictSignature, @Zilla, @FeesPaidMagzine, @CheckedMagzine, @khTotalContri, @khUnitContri, @khDistrictContri, @khStateContri, @NoOfStickers, @DhwajStickerFees, @DhwajStickerDistrictLevel, @DhwajStickerStateLevel, @PragatiPatParticipants, @PragatiPatCertificateNo, @PragatiPatDate, @PragatiPatExaminerName, @PragatiPatLetter, @UnitNondaniYear, @UnitNondaniNoOfUnits, @UnitNondaniAmount, @UnitNondaniReceiptNo, @UnitNondaniReceiptNoDate)" 
            SelectCommand="SELECT * FROM [SchoolTable]" 
            
            UpdateCommand="UPDATE [SchoolTable] SET [SchoolType] = @SchoolType, [Year] = @Year, [UnitType] = @UnitType, [UnitName] = @UnitName, [SchoolName] = @SchoolName, [PermanentAddress] = @PermanentAddress, [Taluka] = @Taluka, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [Password] = @Password, [TribleSchool] = @TribleSchool, [Date] = @Date, [UnitLeaderSignature] = @UnitLeaderSignature, [PrincipalSignature] = @PrincipalSignature, [CharterNo] = @CharterNo, [WarrantNo] = @WarrantNo, [RegistrationFess] = @RegistrationFess, [ReceiptNo] = @ReceiptNo, [PayDate] = @PayDate, [RegistrationFees1] = @RegistrationFees1, [ReceiptNo1] = @ReceiptNo1, [PayDate1] = @PayDate1, [DistrictSignature] = @DistrictSignature, [Zilla] = @Zilla, [FeesPaidMagzine] = @FeesPaidMagzine, [CheckedMagzine] = @CheckedMagzine, [khTotalContri] = @khTotalContri, [khUnitContri] = @khUnitContri, [khDistrictContri] = @khDistrictContri, [khStateContri] = @khStateContri, [NoOfStickers] = @NoOfStickers, [DhwajStickerFees] = @DhwajStickerFees, [DhwajStickerDistrictLevel] = @DhwajStickerDistrictLevel, [DhwajStickerStateLevel] = @DhwajStickerStateLevel, [PragatiPatParticipants] = @PragatiPatParticipants, [PragatiPatCertificateNo] = @PragatiPatCertificateNo, [PragatiPatDate] = @PragatiPatDate, [PragatiPatExaminerName] = @PragatiPatExaminerName, [PragatiPatLetter] = @PragatiPatLetter, [UnitNondaniYear] = @UnitNondaniYear, [UnitNondaniNoOfUnits] = @UnitNondaniNoOfUnits, [UnitNondaniAmount] = @UnitNondaniAmount, [UnitNondaniReceiptNo] = @UnitNondaniReceiptNo, [UnitNondaniReceiptNoDate] = @UnitNondaniReceiptNoDate WHERE [SrNo] = @SrNo">
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
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource9" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SevaPrakalp] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [SevaPrakalp] ([Year], [SchoolName], [UnitName], [SevaEventName], [SevaEventDate], [SevaAttendance], [SevaDuration], [SevaPlace], [SevaReport], [SevaPhoto]) VALUES (@Year, @SchoolName, @UnitName, @SevaEventName, @SevaEventDate, @SevaAttendance, @SevaDuration, @SevaPlace, @SevaReport, @SevaPhoto)" 
            SelectCommand="SELECT * FROM [SevaPrakalp]" 
            UpdateCommand="UPDATE [SevaPrakalp] SET [Year] = @Year, [SchoolName] = @SchoolName, [UnitName] = @UnitName, [SevaEventName] = @SevaEventName, [SevaEventDate] = @SevaEventDate, [SevaAttendance] = @SevaAttendance, [SevaDuration] = @SevaDuration, [SevaPlace] = @SevaPlace, [SevaReport] = @SevaReport, [SevaPhoto] = @SevaPhoto WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="SevaEventName" Type="String" />
        <asp:Parameter DbType="Date" Name="SevaEventDate" />
        <asp:Parameter Name="SevaAttendance" Type="Int32" />
        <asp:Parameter Name="SevaDuration" Type="String" />
        <asp:Parameter Name="SevaPlace" Type="String" />
        <asp:Parameter Name="SevaReport" Type="String" />
        <asp:Parameter Name="SevaPhoto" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="SevaEventName" Type="String" />
        <asp:Parameter DbType="Date" Name="SevaEventDate" />
        <asp:Parameter Name="SevaAttendance" Type="Int32" />
        <asp:Parameter Name="SevaDuration" Type="String" />
        <asp:Parameter Name="SevaPlace" Type="String" />
        <asp:Parameter Name="SevaReport" Type="String" />
        <asp:Parameter Name="SevaPhoto" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource10" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [StatisticalData] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StatisticalData] ([Year], [Cub], [Scout], [Rover], [Bulbul], [Guide], [Ranger], [Bunny], [Total], [Cub1], [Scout1], [Rover1], [Bulbul1], [Guide1], [Ranger1], [Bunny1], [Total1], [TotalUnits], [CollectedFees], [TotalParticipatedSchools], [PrimarySchool], [SecondarySchool], [TotalMembers]) VALUES (@Year, @Cub, @Scout, @Rover, @Bulbul, @Guide, @Ranger, @Bunny, @Total, @Cub1, @Scout1, @Rover1, @Bulbul1, @Guide1, @Ranger1, @Bunny1, @Total1, @TotalUnits, @CollectedFees, @TotalParticipatedSchools, @PrimarySchool, @SecondarySchool, @TotalMembers)" 
            SelectCommand="SELECT * FROM [StatisticalData]" 
            UpdateCommand="UPDATE [StatisticalData] SET [Year] = @Year, [Cub] = @Cub, [Scout] = @Scout, [Rover] = @Rover, [Bulbul] = @Bulbul, [Guide] = @Guide, [Ranger] = @Ranger, [Bunny] = @Bunny, [Total] = @Total, [Cub1] = @Cub1, [Scout1] = @Scout1, [Rover1] = @Rover1, [Bulbul1] = @Bulbul1, [Guide1] = @Guide1, [Ranger1] = @Ranger1, [Bunny1] = @Bunny1, [Total1] = @Total1, [TotalUnits] = @TotalUnits, [CollectedFees] = @CollectedFees, [TotalParticipatedSchools] = @TotalParticipatedSchools, [PrimarySchool] = @PrimarySchool, [SecondarySchool] = @SecondarySchool, [TotalMembers] = @TotalMembers WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="Cub" Type="Int32" />
        <asp:Parameter Name="Scout" Type="Int32" />
        <asp:Parameter Name="Rover" Type="Int32" />
        <asp:Parameter Name="Bulbul" Type="Int32" />
        <asp:Parameter Name="Guide" Type="Int32" />
        <asp:Parameter Name="Ranger" Type="Int32" />
        <asp:Parameter Name="Bunny" Type="Int32" />
        <asp:Parameter Name="Total" Type="Int32" />
        <asp:Parameter Name="Cub1" Type="Int32" />
        <asp:Parameter Name="Scout1" Type="Int32" />
        <asp:Parameter Name="Rover1" Type="Int32" />
        <asp:Parameter Name="Bulbul1" Type="Int32" />
        <asp:Parameter Name="Guide1" Type="Int32" />
        <asp:Parameter Name="Ranger1" Type="Int32" />
        <asp:Parameter Name="Bunny1" Type="Int32" />
        <asp:Parameter Name="Total1" Type="Int32" />
        <asp:Parameter Name="TotalUnits" Type="Int32" />
        <asp:Parameter Name="CollectedFees" Type="Int32" />
        <asp:Parameter Name="TotalParticipatedSchools" Type="Int32" />
        <asp:Parameter Name="PrimarySchool" Type="Int32" />
        <asp:Parameter Name="SecondarySchool" Type="Int32" />
        <asp:Parameter Name="TotalMembers" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="Cub" Type="Int32" />
        <asp:Parameter Name="Scout" Type="Int32" />
        <asp:Parameter Name="Rover" Type="Int32" />
        <asp:Parameter Name="Bulbul" Type="Int32" />
        <asp:Parameter Name="Guide" Type="Int32" />
        <asp:Parameter Name="Ranger" Type="Int32" />
        <asp:Parameter Name="Bunny" Type="Int32" />
        <asp:Parameter Name="Total" Type="Int32" />
        <asp:Parameter Name="Cub1" Type="Int32" />
        <asp:Parameter Name="Scout1" Type="Int32" />
        <asp:Parameter Name="Rover1" Type="Int32" />
        <asp:Parameter Name="Bulbul1" Type="Int32" />
        <asp:Parameter Name="Guide1" Type="Int32" />
        <asp:Parameter Name="Ranger1" Type="Int32" />
        <asp:Parameter Name="Bunny1" Type="Int32" />
        <asp:Parameter Name="Total1" Type="Int32" />
        <asp:Parameter Name="TotalUnits" Type="Int32" />
        <asp:Parameter Name="CollectedFees" Type="Int32" />
        <asp:Parameter Name="TotalParticipatedSchools" Type="Int32" />
        <asp:Parameter Name="PrimarySchool" Type="Int32" />
        <asp:Parameter Name="SecondarySchool" Type="Int32" />
        <asp:Parameter Name="TotalMembers" Type="Int32" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource11" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [StudentTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [StudentTable] ([EmailId], [Password], [Year], [UnitType], [StudFullName], [StudDOB], [StudStandard], [SchoolName], [UnitName]) VALUES (@EmailId, @Password, @Year, @UnitType, @StudFullName, @StudDOB, @StudStandard, @SchoolName, @UnitName)" 
            SelectCommand="SELECT * FROM [StudentTable]" 
            UpdateCommand="UPDATE [StudentTable] SET [EmailId] = @EmailId, [Password] = @Password, [Year] = @Year, [UnitType] = @UnitType, [StudFullName] = @StudFullName, [StudDOB] = @StudDOB, [StudStandard] = @StudStandard, [SchoolName] = @SchoolName, [UnitName] = @UnitName WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
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
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource12" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UnitInformation] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [UnitInformation] ([UnitType], [TotalUnits], [TotalStudent], [StudentRegistrationFees], [StudentTotalFees], [TotalUnitLeader], [TotalSupportingLeader], [UnitLeaderRegistrationFees], [UnitLeaderTotalFees], [TotalMembers], [TotalFees], [Year]) VALUES (@UnitType, @TotalUnits, @TotalStudent, @StudentRegistrationFees, @StudentTotalFees, @TotalUnitLeader, @TotalSupportingLeader, @UnitLeaderRegistrationFees, @UnitLeaderTotalFees, @TotalMembers, @TotalFees, @Year)" 
            SelectCommand="SELECT * FROM [UnitInformation]" 
            UpdateCommand="UPDATE [UnitInformation] SET [UnitType] = @UnitType, [TotalUnits] = @TotalUnits, [TotalStudent] = @TotalStudent, [StudentRegistrationFees] = @StudentRegistrationFees, [StudentTotalFees] = @StudentTotalFees, [TotalUnitLeader] = @TotalUnitLeader, [TotalSupportingLeader] = @TotalSupportingLeader, [UnitLeaderRegistrationFees] = @UnitLeaderRegistrationFees, [UnitLeaderTotalFees] = @UnitLeaderTotalFees, [TotalMembers] = @TotalMembers, [TotalFees] = @TotalFees, [Year] = @Year WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="TotalUnits" Type="Int32" />
        <asp:Parameter Name="TotalStudent" Type="Int32" />
        <asp:Parameter Name="StudentRegistrationFees" Type="String" />
        <asp:Parameter Name="StudentTotalFees" Type="String" />
        <asp:Parameter Name="TotalUnitLeader" Type="Int32" />
        <asp:Parameter Name="TotalSupportingLeader" Type="Int32" />
        <asp:Parameter Name="UnitLeaderRegistrationFees" Type="String" />
        <asp:Parameter Name="UnitLeaderTotalFees" Type="String" />
        <asp:Parameter Name="TotalMembers" Type="Int32" />
        <asp:Parameter Name="TotalFees" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="TotalUnits" Type="Int32" />
        <asp:Parameter Name="TotalStudent" Type="Int32" />
        <asp:Parameter Name="StudentRegistrationFees" Type="String" />
        <asp:Parameter Name="StudentTotalFees" Type="String" />
        <asp:Parameter Name="TotalUnitLeader" Type="Int32" />
        <asp:Parameter Name="TotalSupportingLeader" Type="Int32" />
        <asp:Parameter Name="UnitLeaderRegistrationFees" Type="String" />
        <asp:Parameter Name="UnitLeaderTotalFees" Type="String" />
        <asp:Parameter Name="TotalMembers" Type="Int32" />
        <asp:Parameter Name="TotalFees" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>
<asp:sqldatasource ID="Sqldatasource13" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UnitLeaderTable] WHERE [SrNo] = @SrNo" 
            InsertCommand="INSERT INTO [UnitLeaderTable] ([EmailId], [Password], [Year], [SchoolName], [UnitType], [UnitName], [FullName], [TrainingName], [CertificateNo], [Date], [AdhikarpatraNo], [SupportingLeader], [SubjectNo], [OptionalSubjectNo], [Attendance], [PantPradhanLetter], [AdhikarCharterNumber], [AdhikarDate], [AdhikarWarrantnumber], [AdhikarRenewalDate], [AdhikarCertificate], [UnitLeaderAddress], [AdarshReceivedDate], [AdarshPlace], [AdarshChiefGuest], [AdarshPhoto], [AdarshCertificate], [AdarshLetter]) VALUES (@EmailId, @Password, @Year, @SchoolName, @UnitType, @UnitName, @FullName, @TrainingName, @CertificateNo, @Date, @AdhikarpatraNo, @SupportingLeader, @SubjectNo, @OptionalSubjectNo, @Attendance, @PantPradhanLetter, @AdhikarCharterNumber, @AdhikarDate, @AdhikarWarrantnumber, @AdhikarRenewalDate, @AdhikarCertificate, @UnitLeaderAddress, @AdarshReceivedDate, @AdarshPlace, @AdarshChiefGuest, @AdarshPhoto, @AdarshCertificate, @AdarshLetter)" 
            SelectCommand="SELECT * FROM [UnitLeaderTable]" 
            UpdateCommand="UPDATE [UnitLeaderTable] SET [EmailId] = @EmailId, [Password] = @Password, [Year] = @Year, [SchoolName] = @SchoolName, [UnitType] = @UnitType, [UnitName] = @UnitName, [FullName] = @FullName, [TrainingName] = @TrainingName, [CertificateNo] = @CertificateNo, [Date] = @Date, [AdhikarpatraNo] = @AdhikarpatraNo, [SupportingLeader] = @SupportingLeader, [SubjectNo] = @SubjectNo, [OptionalSubjectNo] = @OptionalSubjectNo, [Attendance] = @Attendance, [PantPradhanLetter] = @PantPradhanLetter, [AdhikarCharterNumber] = @AdhikarCharterNumber, [AdhikarDate] = @AdhikarDate, [AdhikarWarrantnumber] = @AdhikarWarrantnumber, [AdhikarRenewalDate] = @AdhikarRenewalDate, [AdhikarCertificate] = @AdhikarCertificate, [UnitLeaderAddress] = @UnitLeaderAddress, [AdarshReceivedDate] = @AdarshReceivedDate, [AdarshPlace] = @AdarshPlace, [AdarshChiefGuest] = @AdarshChiefGuest, [AdarshPhoto] = @AdarshPhoto, [AdarshCertificate] = @AdarshCertificate, [AdarshLetter] = @AdarshLetter WHERE [SrNo] = @SrNo">
    <DeleteParameters>
        <asp:Parameter Name="SrNo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Year" Type="Int32" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="TrainingName" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="AdhikarpatraNo" Type="Int32" />
        <asp:Parameter Name="SupportingLeader" Type="String" />
        <asp:Parameter Name="SubjectNo" Type="String" />
        <asp:Parameter Name="OptionalSubjectNo" Type="String" />
        <asp:Parameter Name="Attendance" Type="Int32" />
        <asp:Parameter Name="PantPradhanLetter" Type="String" />
        <asp:Parameter Name="AdhikarCharterNumber" Type="Int32" />
        <asp:Parameter DbType="Date" Name="AdhikarDate" />
        <asp:Parameter Name="AdhikarWarrantnumber" Type="Int32" />
        <asp:Parameter DbType="Date" Name="AdhikarRenewalDate" />
        <asp:Parameter Name="AdhikarCertificate" Type="String" />
        <asp:Parameter Name="UnitLeaderAddress" Type="String" />
        <asp:Parameter DbType="Date" Name="AdarshReceivedDate" />
        <asp:Parameter Name="AdarshPlace" Type="String" />
        <asp:Parameter Name="AdarshChiefGuest" Type="String" />
        <asp:Parameter Name="AdarshPhoto" Type="String" />
        <asp:Parameter Name="AdarshCertificate" Type="String" />
        <asp:Parameter Name="AdarshLetter" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Year" Type="Int32" />
        <asp:Parameter Name="SchoolName" Type="String" />
        <asp:Parameter Name="UnitType" Type="String" />
        <asp:Parameter Name="UnitName" Type="String" />
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="TrainingName" Type="String" />
        <asp:Parameter Name="CertificateNo" Type="Int32" />
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="AdhikarpatraNo" Type="Int32" />
        <asp:Parameter Name="SupportingLeader" Type="String" />
        <asp:Parameter Name="SubjectNo" Type="String" />
        <asp:Parameter Name="OptionalSubjectNo" Type="String" />
        <asp:Parameter Name="Attendance" Type="Int32" />
        <asp:Parameter Name="PantPradhanLetter" Type="String" />
        <asp:Parameter Name="AdhikarCharterNumber" Type="Int32" />
        <asp:Parameter DbType="Date" Name="AdhikarDate" />
        <asp:Parameter Name="AdhikarWarrantnumber" Type="Int32" />
        <asp:Parameter DbType="Date" Name="AdhikarRenewalDate" />
        <asp:Parameter Name="AdhikarCertificate" Type="String" />
        <asp:Parameter Name="UnitLeaderAddress" Type="String" />
        <asp:Parameter DbType="Date" Name="AdarshReceivedDate" />
        <asp:Parameter Name="AdarshPlace" Type="String" />
        <asp:Parameter Name="AdarshChiefGuest" Type="String" />
        <asp:Parameter Name="AdarshPhoto" Type="String" />
        <asp:Parameter Name="AdarshCertificate" Type="String" />
        <asp:Parameter Name="AdarshLetter" Type="String" />
        <asp:Parameter Name="SrNo" Type="Int32" />
    </UpdateParameters>
        </asp:sqldatasource>

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />

    </div>
    </form>
</body>
</html>
