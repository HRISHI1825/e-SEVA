<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin2.aspx.cs" Inherits="Admin2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server" >
    <link href="themes/mainbootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="themes/mainbootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="themes/mainbootstrap.css" rel="stylesheet" type="text/css" />
    <link href="themes/mainbootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="themes/spacelabbootstrap.css" rel="stylesheet" type="text/css" />
    <link href="themes/spacelabcustom.css" rel="stylesheet" type="text/css" />
    <link href="themes/StyleSheet.css" rel="stylesheet" type="text/css" />


 
  
    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="">
    <meta name="author" content="">

    <title>
       
    </title>

    
    

    <!-- Custom CSS -->

     <!-- -->
    <link href="themes/one-page-wonder.css" rel="stylesheet"/>

    <style type ="text/css" >
      
        h1.page-header {
            margin-top: -5px;
        }
        
        .sidebar {
            padding-left: 0;
            width: 183px;
            margin-left: -16px;
        }
        
        .main-container {
            background: #FFF;
            padding-top: 15px;
            margin-top: -20px;
        }
        
        .footer {
            width: 100%;
        }
        
        :focus {
            outline: none;
        }
        
        .side-menu {
            position: relative;
            width: 100%;
            height: 100%;
            background-color: #f8f8f8;
            border-right: 1px solid #e7e7e7;
        }
        
        .side-menu .navbar {
            border: none;
        }
        
        .side-menu .navbar-header {
            width: 100%;
            border-bottom: 1px solid #e7e7e7;
        }
        
        .side-menu .navbar-nav .active a {
            background-color: transparent;
            margin-right: -1px;
            border-right: 5px solid #e7e7e7;
        }
        
        .side-menu .navbar-nav li {
            display: block;
            width: 100%;
            border-bottom: 1px solid #e7e7e7;
        }
        
        .side-menu .navbar-nav li a {
            padding: 15px;
        }
        
        .side-menu .navbar-nav li a .glyphicon {
            padding-right: 10px;
        }
        
        .side-menu #dropdown {
            border: 0;
            margin-bottom: 0;
            border-radius: 0;
            background-color: transparent;
            box-shadow: none;
        }
        
        .side-menu #dropdown .caret {
            float: right;
            margin: 9px 5px 0;
        }
        
        .side-menu #dropdown .indicator {
            float: right;
        }
        
        .side-menu #dropdown > a {
            border-bottom: 1px solid #e7e7e7;
        }
        
        .side-menu #dropdown .panel-body {
            padding: 0;
            background-color: #f3f3f3;
        }
        
        .side-menu #dropdown .panel-body .navbar-nav {
            width: 100%;
        }
        
        .side-menu #dropdown .panel-body .navbar-nav li {
            padding-left: 15px;
            border-bottom: 1px solid #e7e7e7;
        }
        
        .side-menu #dropdown .panel-body .navbar-nav li:last-child {
            border-bottom: none;
        }
        
        .side-menu #dropdown .panel-body .panel > a {
            margin-left: -20px;
            padding-left: 35px;
        }
        
        .side-menu #dropdown .panel-body .panel-body {
            margin-left: -15px;
        }
        
        .side-menu #dropdown .panel-body .panel-body li {
            padding-left: 30px;
        }
        
        .side-menu #dropdown .panel-body .panel-body li:last-child {
            border-bottom: 1px solid #e7e7e7;
        }
        
        .side-menu #search-trigger {
            background-color: #f3f3f3;
            border: 0;
            border-radius: 0;
            position: absolute;
            top: 0;
            right: 0;
            padding: 15px 18px;
        }
        
        .side-menu .brand-name-wrapper {
            min-height: 50px;
        }
        
        .side-menu .brand-name-wrapper .navbar-brand {
            display: block;
        }
        
        .side-menu #search {
            position: relative;
            z-index: 1000;
        }
        
        .side-menu #search .panel-body {
            padding: 0;
        }
        
        .side-menu #search .panel-body .navbar-form {
            padding: 0;
            padding-right: 50px;
            width: 100%;
            margin: 0;
            position: relative;
            border-top: 1px solid #e7e7e7;
        }
        
        .side-menu #search .panel-body .navbar-form .form-group {
            width: 100%;
            position: relative;
        }
        
        .side-menu #search .panel-body .navbar-form input {
            border: 0;
            border-radius: 0;
            box-shadow: none;
            width: 100%;
            height: 50px;
        }
        
        .side-menu #search .panel-body .navbar-form .btn {
            position: absolute;
            right: 0;
            top: 0;
            border: 0;
            border-radius: 0;
            background-color: #f3f3f3;
            padding: 15px 18px;
        }
        /* Main body section */
        
        .side-body {
            margin-left: 310px;
        }
        /* small screen */
        
        @media (max-width: 768px) {
            .side-menu {
                position: relative;
                width: 100%;
                height: 0;
                border-right: 0;
            }
            .side-menu .navbar {
                z-index: 999;
                position: relative;
                height: 0;
                min-height: 0;
                background-color: none !important;
                border-color: none !important;
            }
            .side-menu .brand-name-wrapper .navbar-brand {
                display: inline-block;
            }
            /* Slide in animation */
            @-moz-keyframes slidein {
                0% {
                    left: -300px;
                }
                100% {
                    left: 10px;
                }
            }
            @-webkit-keyframes slidein {
                0% {
                    left: -300px;
                }
                100% {
                    left: 10px;
                }
            }
            @keyframes slidein {
                0% {
                    left: -300px;
                }
                100% {
                    left: 10px;
                }
            }
            @-moz-keyframes slideout {
                0% {
                    left: 0;
                }
                100% {
                    left: -300px;
                }
            }
            @-webkit-keyframes slideout {
                0% {
                    left: 0;
                }
                100% {
                    left: -300px;
                }
            }
            @keyframes slideout {
                0% {
                    left: 0;
                }
                100% {
                    left: -300px;
                }
            }
            /* Slide side menu*/
            /* Add .absolute-wrapper.slide-in for scrollable menu -> see top comment */
            .side-menu-container > .navbar-nav.slide-in {
                -moz-animation: slidein 300ms forwards;
                -o-animation: slidein 300ms forwards;
                -webkit-animation: slidein 300ms forwards;
                animation: slidein 300ms forwards;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }
            .side-menu-container > .navbar-nav {
                /* Add position:absolute for scrollable menu -> see top comment */
                position: fixed;
                left: -300px;
                width: 300px;
                top: 43px;
                height: 100%;
                border-right: 1px solid #e7e7e7;
                background-color: #f8f8f8;
                overflow: auto;
                -moz-animation: slideout 300ms forwards;
                -o-animation: slideout 300ms forwards;
                -webkit-animation: slideout 300ms forwards;
                animation: slideout 300ms forwards;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }
            @-moz-keyframes bodyslidein {
                0% {
                    left: 0;
                }
                100% {
                    left: 300px;
                }
            }
            @-webkit-keyframes bodyslidein {
                0% {
                    left: 0;
                }
                100% {
                    left: 300px;
                }
            }
            @keyframes bodyslidein {
                0% {
                    left: 0;
                }
                100% {
                    left: 300px;
                }
            }
            @-moz-keyframes bodyslideout {
                0% {
                    left: 300px;
                }
                100% {
                    left: 0;
                }
            }
            @-webkit-keyframes bodyslideout {
                0% {
                    left: 300px;
                }
                100% {
                    left: 0;
                }
            }
            @keyframes bodyslideout {
                0% {
                    left: 300px;
                }
                100% {
                    left: 0;
                }
            }
            /* Slide side body*/
            .side-body {
                margin-left: 5px;
               
                position: relative;
                -moz-animation: bodyslideout 300ms forwards;
                -o-animation: bodyslideout 300ms forwards;
                -webkit-animation: bodyslideout 300ms forwards;
                animation: bodyslideout 300ms forwards;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }
            .body-slide-in {
                -moz-animation: bodyslidein 300ms forwards;
                -o-animation: bodyslidein 300ms forwards;
                -webkit-animation: bodyslidein 300ms forwards;
                animation: bodyslidein 300ms forwards;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }
            /* Hamburger */
            .navbar-toggle-sidebar {
                border: 0;
                float: left;
                padding: 18px;
                margin: 0;
                border-radius: 0;
                background-color: #f3f3f3;
            }
            /* Search */
            #search .panel-body .navbar-form {
                border-bottom: 0;
            }
            #search .panel-body .navbar-form .form-group {
                margin: 0;
            }
            .side-menu .navbar-header {
                /* this is probably redundant */
                position: fixed;
                z-index: 3;
                background-color: #f8f8f8;
            }
            /* Dropdown tweek */
            #dropdown .panel-body .navbar-nav {
                margin: 0;
            }
        }
       

    </style>

</head>

<body style=" width: 100%; height: 100%; top: 100%; right: 100%; bottom: 100%; left: 100%;">

    <form runat="server" id="form1">

    <!-- Navigation  style="height: auto; width: auto; display: inline-block; top: 0px;">-->
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">
              Toggle navigation
            </span>
                    <span class="icon-bar">
            </span>
                    <span class="icon-bar">
            </span>
                    <span class="icon-bar">
            </span>
                </button>
                <h1 class="logo">
            
             <asp:Image ID="Image2" runat="server" ImageUrl="~/img/logo1.jpg" Width="150px" Height="150px"></asp:Image>
             <asp:Label ID="lbl1" runat="server" Text="Maharashtra State Bharat Scouts and Guides" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="White"></asp:Label>
   
                      </h1>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Full Width Image Header -->


    <!-- Page Content -->
  <br />
    <div class="container " 
        style="position: static; width: 100%; height: 100%; top: 100%; right: 100%; bottom: 100%; left: 100%; ">

        <h1 class="thick-heading " style="font-family: 'Arial Black'; font-weight: bold; font-size: xx-large; color: #000000;">
       ||Admin Dashboard|| 
      </h1>
        <!-- First Featurette -->
        <div class="featurette" id="about">
            <!------------------------code---------------start---------------->
            <asp:Menu ID="Menu2" runat="server" 
                CssClass="navbar navbar-static-top "  
            Orientation="Horizontal" BackColor="#EEEEEE" Font-Bold="False" Width="100%" 
                Font-Size="Medium" Font-Names="sans-serif" IncludeStyleBlock="False" 
                RenderingMode="Table">
                 <Items>
                <asp:MenuItem Text="Letters" Value="Letters">
                 <asp:MenuItem Text="Inward Letter" Value="Inward Letter">
                     <asp:MenuItem NavigateUrl="~/letterinward1.aspx" Text="Inward Letters" 
                         Value="Inward Letters"></asp:MenuItem>
                     <asp:MenuItem NavigateUrl="~/letterinward2.aspx" Text="New Inward Letter" 
                         Value="New Inward Letter"></asp:MenuItem>
                     <asp:MenuItem NavigateUrl="~/LetterInwardStatus.aspx" 
                         Text="Change Letter Status" Value="Change Letter Status"></asp:MenuItem>
                     <asp:MenuItem NavigateUrl="~/Searchletterinward.aspx" 
                         Text="Search Inward Letters" Value="Search Inward Letters"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Outward Letter" Value="Outward Letter">
                        <asp:MenuItem NavigateUrl="~/letteroutward1.aspx" Text="Outward Letters" 
                            Value="Outward Letters"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/letteroutward2.aspx" Text="New Outward Letter" 
                            Value="New Outward Letter"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/LetterOutwardStatus.aspx" 
                            Text="Change Letter Status" Value="Change Letter Status"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Searchletteroutward.aspx" 
                            Text="Search Outward Letters" Value="Search Outward Letters"></asp:MenuItem>
                    </asp:MenuItem>
               
                </asp:MenuItem>
                <asp:MenuItem Text="Meetings" Value="Meeting">
                 <asp:MenuItem Text="New Meeting" Value="New Meeting" NavigateUrl="~/Meetings.aspx"></asp:MenuItem>
                 <asp:MenuItem Text="Previous Meeting Details" Value="List of Passed Students" 
                        NavigateUrl="~/MeetingDetails.aspx"></asp:MenuItem>
                 <asp:MenuItem Text="Meeting Information" Value="List of failed Students" 
                        NavigateUrl="~/MainMeetings.aspx"></asp:MenuItem>
                </asp:MenuItem>

                     <asp:MenuItem Text="National Days" Value="National Days">
                         <asp:MenuItem NavigateUrl="~/NationalDays.aspx" Text="New Day" Value="New Day">
                         </asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/NationalDayDetails.aspx" 
                             Text="National Day Details" Value="National Day Details"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/MainNationalDays.aspx" 
                             Text="National Days Information" Value="National Days Information">
                         </asp:MenuItem>
                     </asp:MenuItem>

                <asp:MenuItem Text="Heerak Pankh" Value="Heerank Pank">
                 <asp:MenuItem Text="List of Candidates" Value="List of Candidates" 
                        NavigateUrl="~/HeerakPankhListOfCandidates1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Change Status of Candidates" 
                        Value="Change Status of Candidates" 
                        NavigateUrl="~/HeerakPankhListOfCandidates.aspx?Status=Not Qualified"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Rajya Puraskar" Value="Rajya Puraskar">
                <asp:MenuItem Text="Rajya Puraskar for Scout" Value="Scout">
                    <asp:MenuItem Text="List of Candidates" Value="List of Candidates" 
                        NavigateUrl="~/RajyaPuraskarScoutListOfCandidates1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Change Status of Candidates" 
                        Value="Change Status of Candidates" 
                        
                        NavigateUrl="~/RajyaPuraskarScoutListOfCandidates.aspx?Status=Not Qualified"></asp:MenuItem>
                </asp:MenuItem>
                         <asp:MenuItem Text="Rajya Puraskar for Guide" Value="Guide">
                          <asp:MenuItem Text="List of Candidates" Value="List of Candidates" 
                                 NavigateUrl="~/RajyaPuraskarGuideListOfCandidates1.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Change Status of Candidates" Value="List of failed Students" 
                                 
                                 NavigateUrl="~/RajyaPuraskarGuideListOfCandidates.aspx?Status=Not Qualified"></asp:MenuItem>
                         </asp:MenuItem>
                      </asp:MenuItem>
                <asp:MenuItem Text="Camps" Value="Dhawaj Sticker">
                    <asp:MenuItem Text="National" Value="National"></asp:MenuItem>
                    <asp:MenuItem Text="International" Value="International"></asp:MenuItem>
                </asp:MenuItem>
                

                 <asp:MenuItem Text="Chaturth Charan" Value="Rashtrapati Puraskar">
                
                 <asp:MenuItem Text="List of Candidates" Value="List of Candidates" 
                         NavigateUrl="~/ChaturthCharanListOfCandidates1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Change Status of Candidates" 
                         Value="Change Status of Candidates" 
                         NavigateUrl="~/ChaturthCharanListOfCandidates.aspx?Status=Not Qualified"></asp:MenuItem>
                
                
                </asp:MenuItem>
               
                <asp:MenuItem Text="Equipment" Value="Equipment">
                    <asp:MenuItem Text="Inward Equipment" Value="Inward Equipment" 
                        NavigateUrl="~/EquipmentInward1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Outward Equipment" Value="Outward Equipment" 
                        NavigateUrl="~/EquipmentOutward1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Inventory" Value="Inventory" NavigateUrl="~/Equipment.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Commitees" Value="Commitees">
                        <asp:MenuItem Text="District Commitees" Value="District Commitees" 
                            NavigateUrl="~/DistrictCommittee1.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="State Commitees" Value="State Commitees" 
                            NavigateUrl="~/StateCommittee1.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    
                     <asp:MenuItem Text="Leaves" Value="Leaves">
                         <asp:MenuItem NavigateUrl="~/TotalHoliday.aspx" Text="Enter Total Leaves" 
                             Value="Enter Total Leaves"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/HolidayTaken.aspx" 
                             Text="Leave Taken By Employee" Value="Leave Taken By Employee">
                         </asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/HolidayDetails.aspx" Text="Leave Details" 
                             Value="Leave Details"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/HolidayInformation.aspx" Text="Leave Information" 
                             Value="Leave Information"></asp:MenuItem>
                     </asp:MenuItem>
                     <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Log out" Value="Log out">
                     </asp:MenuItem>
            </Items>
                 <StaticHoverStyle BackColor="#DBDBDB" Height="100%" Width="100%" />
            </asp:Menu>


           
            <div class="container-fluid main-container">
                <div class="col-md-2 sidebar">
                    <div class="row">
                        <!-- uncomment code for absolute positioning tweek see top comment in css -->
                        <div class="absolute-wrapper"> </div>
                        <!-- Menu -->
                        <div class="side-menu">
                            <nav class="collapse navbar-collapse" role="navigation">
                                <!-- Main Menu -->
                                <div class="side-menu-container">
                                    <ul class="nav navbar-nav">
                                     <li ><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                                    <li ><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Posts.aspx">Posts</asp:HyperLink></li>
                                    <li ><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AnnualReport.aspx">Annual Reports</asp:HyperLink></li>
                                         <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Magzine.aspx">Magzines</asp:HyperLink></li>
                                        <li ><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Registration.aspx">List Of Unit Registration</asp:HyperLink></li>
                                       <li ><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Training.aspx">Trainings</asp:HyperLink></li>
                                       <li ><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/KhariKamai.aspx">Khari Kamai</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DhwajSticker.aspx">Dhawaj Sticker</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="~/Statistical1.aspx">Statistical Data</asp:HyperLink></li>
                                       <li ><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/VarshikAnudan.aspx">Varshik Anudan</asp:HyperLink></li>
                                       <li ><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/seva.aspx">Seva Prakalp</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/SG puraskar.aspx">Adarsh Scout and Guide Puraskar</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="~/PragatiPat.aspx">Pragati Pat</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink38" runat="server" NavigateUrl="~/Confirmation1.aspx">Unit Registration Information Sheet</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink35" runat="server" NavigateUrl="~/MasikAhawal.aspx">Mashik Ahwal</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink37" runat="server" NavigateUrl="~/AuditReport.aspx">Audit Report</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdivasiVikasPrakalp.aspx">Adivasi Vikas Prakalp</asp:HyperLink></li>
                                       <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Donation2.aspx">Donation Information</asp:HyperLink></li>
                                        <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/EnterFAQs.aspx">FAQs</asp:HyperLink></li>
                                        <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Maintainance2.aspx">Maintainance Information</asp:HyperLink></li>

                                        

   
   
   
   
    
                                      
                                    </ul>
                                </div>
                                <!-- /.navbar-collapse -->
                            </nav>

                        </div>
                    </div>
                </div>
                <div class="col-md-10 content">
                <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Notifications</h3>
  </div>
  <div class="panel-body">
      <asp:Label ID="Label1" runat="server" CssClass="alert" Font-Bold="True" 
          Font-Italic="False" Font-Size="X-Large" Font-Names="Arial Black" 
          ForeColor="#0066CC" Height="50px" style="text-decoration:blink"></asp:Label>
      <asp:Label ID="Label2" runat="server" CssClass="alert" Font-Bold="True" 
          Font-Italic="False" Font-Size="X-Large" Font-Names="Arial Black" 
          ForeColor="#0066CC" Height="50px" style="text-decoration:blink"></asp:Label><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT [MeetingDate] FROM [Office]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT [Date] FROM [Office]"></asp:SqlDataSource>
  
</div>
</div>

                 
  <div id="preview">
   <div id="center_preview" >
<div id="topic" class="default">
<ul>

<li>
    <asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="~/Adhikar.aspx">Adhikar Patra</asp:HyperLink></li>
    <li>
    <asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="~/GauravSevaPadak.aspx">Gaurav Seva Padak </asp:HyperLink></li>
   
                                       <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admission4.aspx">Confirm Registration</asp:HyperLink></li>
     
      <li ><asp:HyperLink ID="HyperLink17" runat="server" 
              NavigateUrl="~/Salgnata Shulk.aspx">Salagnata Shulk</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink39" runat="server" NavigateUrl="~/UnitInformation1.aspx">Unit Information</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/standardlist.aspx">Standard wise list of Students</asp:HyperLink></li>
   
   

</ul>
</div> <!-- #topic -->

<div id="topic" class="default">
<ul>

    <li><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/GovernmentDecision.aspx">GRs</asp:HyperLink></li>
    <li>
    <asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/ImportantOffices.aspx">Important Offices</asp:HyperLink></li>
   
    <li>
    <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/PantPradhanDhalSpardha.aspx">Pant Pradhan Dhal Spardha</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AjivanSabasadYadi.aspx">Life Members Information</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/EnterSchtypeandStd.aspx">Enter School Type and Standard</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/EnterTalukaandDistrict.aspx">Enter Taluka and District</asp:HyperLink></li>
</ul>
</div> <!-- #topic -->



                    </div>
                </div>
                </div>


            </div>
            <!----Code------end----------------------------------->
        </div>
        <!-- /.container -->
      </div>   
     </form>    <!-- jQuery -->
      <script src="http://www.tutorialspoint.com/bootstrap/scripts/jquery.min.js">
        </script>
     <%--   <script>
          $(function () {
                $('.navbar-toggle-sidebar').click(function () {
                    $('.navbar-nav').toggleClass('slide-in');
                    $('.side-body').toggleClass('body-slide-in');
                    $('#search').removeClass('in').addClass('collapse').slideUp(200);
                });

                $('#search-trigger').click(function () {
                    $('.navbar-nav').removeClass('slide-in');
                    $('.side-body').removeClass('body-slide-in');
                    $('.search-input').focus();
                });
            });
        </script> --%>
        <!-- Bootstrap Core JavaScript -->
        <script src="http://www.tutorialspoint.com/bootstrap/js/bootstrap.min.js">
        </script> 

</body>
</html>
