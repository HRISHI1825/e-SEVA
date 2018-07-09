<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="StarryNightMoving_StarryNightMoving_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>Home Page</title>
   
    <link href="themes/style.css" rel="stylesheet" type="text/css" />
    <link href="themes/asetstyle.css" rel="stylesheet" type="text/css" />
    <link href="themes/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="themes/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="themes/bootstrap.min.css" rel="stylesheet" type="text/css" />

    
    
    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.backgroundPosition.js" type="text/javascript"></script>
   <script type="text/javascript">
	    $(function () {

	        $('#midground').css({ backgroundPosition: '0px 0px' });
	        $('#foreground').css({ backgroundPosition: '0px 0px' });
	        $('#background').css({ backgroundPosition: '0px 0px' });

	        $('#midground').animate({
	            backgroundPosition: "(-10000px -2000px)"
	        }, 240000, 'linear');

	        $('#foreground').animate({
	            backgroundPosition: "(-10000px -2000px)"
	        }, 120000, 'linear');

	        $('#background').animate({
	            backgroundPosition: "(-10000px -2000px)"
	        }, 480000, 'linear');

	        
           

	    });
        
	</script>
    
    </head>


<body>

 <!--   <div id="background"></div>-->
	<div id="midground"></div>
	<div id="foreground"></div> 
    <div class="navbar navbar-inverse navbar-fixed-top" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <img src="img/logo1.jpg" alt="Logo" height="70px" width="70px" 
                    style="width: 90px; height: 96px" />
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="admission1.aspx">NEW REGISTRATION</a></li>
                    <li><a href="Login.aspx">LOGIN</a></li>
                     <li><a href="Gallery.aspx">GALLERY</a></li>
                      <li><a href="Developers.aspx">CONTACT US</a></li>
                </ul>
            </div>
           
        </div>
    </div>

     <section id="home" class="text-center">
         
                <div  class="carousel slide" data-ride="carousel">

                 <div class="carousel-inner">

                  <div class="item active">

                            <img src="Gallery section/07.jpg" alt="" height="50%" />
                           <div class="carousel-caption" >
                            </div>
                        </div>
                        </div> 
                        
           
       </section>

    <%--<header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol> 

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('assets/img/1.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('assets/img/2.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('assets/img/3.JPG');"></div>
                <div class="carousel-caption">
                    <h2>Caption 3</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>--%>

	 
      <div class="row">
            <div class="col-lg-12">
                <h1>The Genesis of Scouting and Guiding in the World </h1>
                <pre style="font-family: 'Times New Roman'; font-size: medium; font-weight: normal; font-style: normal"  >
                
•The Boy Scouts Movement had a simple start in the year 1907 when a retired Army General Lord Baden Powell conducted an experimental camp in Brown sea Island in England with 20 boys. The successful conduct of the camp and publication of the Book “Scouting for Boys” in a fortnightly marked the start of the Boy Scout Movement. 
•In the year 1910, Crystal palace Rally was held where Girls wearing the boy Scout uniform appeared and wanted to join the Scout Movement. Lord Baden Powell decided to start a movement for Girls with the help of his sister Agnes Baden Powell 

<b style="font-size: x-large"  >Scouting In India</b>
 
•Scouting started in India in the year 1909, when Captain T.H.Baker established the first Scout Troop in Bangalore and got it registered with imperial Headquarters, London.subsequently, Scout Troops were formed in Kirkee (Pune), Simla, Madras, Jabalpur, Lonavla (Mumbai) and registered with the Imperial Headquarters during 1910 and 1911. These units were open to European and Anglo Indian Children only. 
•The first Guide Company in India was started in Jabalpur, Central India in 1911. 
•As the Scout Movement was not initially open to the Indian boys, Nationalist leaders of India decided to offer Scouting activities to Indian Boys and Sewa Samiti Scout Association was formed with Headquarters in Allahabad by Pandit Madan Mohan Malviya, Pandit Hriday Nath Kunzru and Pandit Sriram Bajpai. Dr.Annie Besant with the help of Shri G.S.Arundale started a seperate Scout Association for Indian Boys in Madras. 
•Efforts were made for unification of different scout groups existing in India during the visit of Lord Baden Powell to India in 1921 and 1937 but failed. Major reason for the failure in unification was the promise clause which included the word “Duty to King”. Our Patriotic sentiments of our Nationalist leaders did not approve the allegiance to the British Empire and instead it was insisted that allegiance loyalty to the Country should be part of the Scout Promise. 

<b style="font-size: x-large">Scouting Guiding In independent India </b> 

•After the independence of our country efforts were made for unification of the Scout and Guide Associations functioning in India. Serious efforts were made by our National leaders like Pt.Jawahar Lal Nehru, First Prime Minister of India, Mauland Abul Kalam Azad, the First education Minister of India,Shri Mangal Das Pakvasa, Governor of Central Province, and Scout leaders Pandit Hriday Nath Kunzru, Pandit Sri Ram Bajpai, Justice Vivian Bose and others for the merger of the Scout / Guide Associations.
•Dr.Tara chand, Education Secretary ,Government of India made significant contribution in finalizing the merger deed. 
•The Final merger took place on 7th November 1950 and the unified Organisation came into existence under the Name “The Bharat Scouts and Guides”. The Girl Guides Association formally joined the Bharat Scouts and Guides a little later on 15th August 1951.

<b style="font-size:x-large">Constitution and National Headquarters </b>

•The Bharat Scouts and Guides is a Registered Society under Societies Registrations Act. It is totally voluntary, non-political and secular Organisation.
•The National Headquarters of the Bharat Scouts functioned from Regal Building, Connaught Place, New Delhi, till 1963.Thereafter, it shifted to its own building and is functioning from Lakshmi Mazumdar Bhawan , 16, Mahatma Gandhi Marg, Indra Prasth Estate, New Delhi – 110002. The National Headquarters building was inaugurated in the year 1963 by the then Vice President of India Dr.Zakir Hussain.
State Headquarters:
The Maharashtra State Bharat Scouts and Guides has its State Headquarters is at 79, F Road, Marine Drive, Mumbai.

<b style="font-size: x-large">Amravati Bharat Scouts and Guides District Office.</b> 
The office of Amravati Bharat Scouts and Guides District Association is located at Amravati and having address Behind Ex-Servicemen Rest House, Morshi Road, Amravati. 

                </pre>
            </div>
        </div>

	
</body>

</html>