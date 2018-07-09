<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schooldashboard.aspx.cs" Inherits="StarryNightMoving_StarryNightMoving_Schooldashboard" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat ="server" >
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

        <h1 class="thick-heading " style="font-family: 'Arial Black'; text-decoration: blink; font-weight: bold; font-size: xx-large; color: #000000;">
       ||Dashboard|| 
      </h1>
        <!-- First Featurette -->
      
        <div class="featurette" id="about">
            <!------------------------code---------------start---------------->
            <asp:Menu ID="Menu2" runat="server" 
                CssClass="navbar"  
            Orientation="Horizontal" BackColor="#EEEEEE" Font-Bold="False" Width="100%" 
                Font-Size="Medium" Font-Names="sans-serif" IncludeStyleBlock="False" 
                RenderingMode="Table">
                 <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Default.aspx">
                </asp:MenuItem>
                     <asp:MenuItem Text="Seva Prakalp" Value="Seva Prakalp" 
                         NavigateUrl="~/seva1.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="ChaturthCharan" Value="ChaturthCharan" 
                         NavigateUrl="~/ChaturthCharanFormn.aspx">
                        </asp:MenuItem>
                       <asp:MenuItem Text="Trainings" Value="Training" 
                         NavigateUrl="~/training1.aspx"></asp:MenuItem>
                    
                     <asp:MenuItem Text="Rajya Puraskar" Value="Rajya Puraskar">
                         <asp:MenuItem Text="Rajya Puraskar for Scout" Value="Rajya Puraskar for Scout" 
                             NavigateUrl="~/RajyaPuraskarScout1.aspx"></asp:MenuItem>
                         <asp:MenuItem Text="Rajya Puraskar for Guide" Value="Rajya Puraskar for Guide" 
                             NavigateUrl="~/RajyaPuraskarGuide1.aspx"></asp:MenuItem>
                     </asp:MenuItem>
                     <asp:MenuItem Text="Rashtrapati Puraskar" Value="Rashtrapati Puraskar">
                         <asp:MenuItem Text="Rashtrapati Puraskar for Scout" Value="Scout"></asp:MenuItem>
                         <asp:MenuItem Text="Rashtrapati Puraskar for Guide" Value="Guide"></asp:MenuItem>
                     </asp:MenuItem>
                     <asp:MenuItem Text="Heerak Pankh" Value="Heerak Pankh" 
                         NavigateUrl="~/HeerakhPankhForm.aspx"></asp:MenuItem>
                     <asp:MenuItem Text="Pant Pradhan Dhal Spardha" 
                         Value="Pant Pradhan Dhal Spardha" NavigateUrl="~/PantPradhanDhalSpardha1.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx">
                      </asp:MenuItem>
                     <asp:MenuItem NavigateUrl="~/FAQs.aspx" Text="FAQs" Value="FAQs"></asp:MenuItem>
            </Items>
                 <StaticHoverStyle BackColor="#DBDBDB" Height="100%" Width="100%" />
            </asp:Menu>
            
           <div class="container-fluid main-container">
                <div class="">
                <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Notifications</h3>
  </div>
  <div class="panel-body">
  <marquee direction="up">
  <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" 
           Font-Size="XX-Large"  width="1000px"
          ForeColor="Black"  Font-Names="Arial" BackColor="#003366" BorderWidth="2px" BorderStyle="Groove" BorderColor="Black"></asp:Label>

          </marquee>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          SelectCommand="SELECT [Post], [PostDate] FROM [Office]">
      </asp:SqlDataSource>
</div>
</div>

                 
  
                </div>


            </div>
            <!----Code------end----------------------------------->
        </div>
        <!-- /.container -->
      </div>   
     </form>    <!-- jQuery -->
      <script src="http://www.tutorialspoint.com/bootstrap/scripts/jquery.min.js" type ="text/javascript" >
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
        <script src="http://www.tutorialspoint.com/bootstrap/js/bootstrap.min.js" type="text/javascript">
        </script> 

</body>
</html>
