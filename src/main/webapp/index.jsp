<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- IVRRM-->
    <link rel="shortcut icon" href="img/IVRRM.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>IVRRM</title>
    <!--
        CSS
        ============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/slider.css">
    <style>
    .footer-area
    {
        background-color: #000000;
    }
    body{
        color: whitesmoke;
        font-size: 18px;
    }
    .footer-area h6 {
        color: #fff;
        font-size: 20px;

    }
  h1
  {
  font-size:50px;
  }
  
</style>
</head>

<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="index.jsp"><img src="img/IVRRM.png" alt="IVRRM" style="width:50px;height:50px"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                      
                         <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">User</a>
                            <ul class="dropdown-menu">
                            <%if(session.getAttribute("User")==null) 
                            {
                            	%><li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="logoutUser">Logout</a></li>
                            	<%
                            }
                            %>
                                


                            </ul>
                        </li>
                         <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Vendor</a>
                            <ul class="dropdown-menu">
                                 <%if(session.getAttribute("Vendor")==null) 
                            {
                            	%><li class="nav-item"><a class="nav-link" href="vendor_login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="vendor_registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="logoutVendor">Logout</a></li>
                            	<%
                            }
                            %>
                                
                            </ul>
                        </li>
               
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item"><a href="cart.jsp" class="cart"><span class="ti-bag"></span></a></li>
                        <li class="nav-item">
                            <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
   
</header>
<!-- End Header Area -->






<!-- Silder Area Starts -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100 img-responsive" src="img/banner/bb.jpeg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>India's First Website for Regional and Domestic Market</h5>
					
				</div>
			</div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/banner/cc.jpeg" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
					<h5>A Better Way to Increase your Shop Publicity</h5>
					
				</div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/banner/ee.jpeg" alt="Third slide">
       <div class="carousel-caption d-none d-md-block">
		<h5>Delivery Within 48 hour In same city</h5>
		</div>
    </div>
     <div class="carousel-item">
      <img class="d-block w-100" src="img/banner/dd.jpeg" alt="Fourth slide">
        <div class="carousel-caption d-none d-md-block">
		  <h5>Provide Global Customers</h5>
					
		</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  <!-- Silder Area Ends -->


<section class="cities">
  <div class="cities">
    <div class="container">

        <h1>Select Your State</h1>
        <div class="row">
        
         <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Andhra Pradesh" href=""><img title="Andhra Pradesh" class="img-responsive" src="img/city/andhra-pradesh.jpg" alt="Andhra Pradesh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Andhra Pradesh" href="">Andhra Pardesh</a></h2>

            </div>
             <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Arunachal Pradesh" href=""><img title="Arunachal Pradesh" class="img-responsive" src="img/city/arunachal-pradesh.jpg" alt="Andhra Pradesh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Arunachal Pradesh" href="">Arunachal Pardesh</a></h2>

            </div>
              <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Assam" href=""><img title="Assam" class="img-responsive" src="img/city/assam.jpg" alt="Assam" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Assam" href="">Assam</a></h2>

            </div>
               <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Bihar" href=""><img title="Bihar" class="img-responsive" src="img/city/bihar.jpg" alt="Bihar" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Bihar" href="">Bihar</a></h2>

            </div>
            
            
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Chattisgarh" href=""><img title="Chattisgarh" class="img-responsive" src="img/city/chattisgarh.jpg" alt="Chattisgarh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Chattisgarh" href="">Chattisgarh</a></h2>

            </div>
            
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Delhi" href="Delhi/Markets.jsp"><img title="Delhi" class="img-responsive" src="img/city/delhi.jpg" alt="Delhi" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Delhi" href="">Delhi</a></h2>

            </div>
            

         <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Goa" href=""><img title="Goa" class="img-responsive" src="img/city/goa.jpg" alt="Goa" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Goa" href="">Goa</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Gujarat" href=""><img title="Gujarat" class="img-responsive" src="img/city/gujrat.jpg" alt="Gujarat" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Gujarat" href="">Gujarat</a></h2>

            </div>
             <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Haryana" href=""><img title="Haryana" class="img-responsive" src="img/city/haryana.jpg" alt="Haryana" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Haryana" href="">Haryana</a></h2>

            </div>
                 <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Himachal Pradesh" href=""><img title="Himachal Pradesh" class="img-responsive" src="img/city/himachal.jpg" alt="Himachal Pradesh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Himachal Pradesh" href="">Himachal Pradesh</a></h2>

            </div>
           <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Jammu and Kashmir" href=""><img title="Jammu and Kashmir" class="img-responsive" src="img/city/jammu.jpg" alt="Jammu and Kashmir" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Jammu and Kashmir" href="">Jammu and Kashmir</a></h2>

            </div>
             <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Jharkhand" href=""><img title="Jharkhand" class="img-responsive" src="img/city/jharkhand.jpg" alt="Jharkhand" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Jharkhand" href="">Jharkhand</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Karnataka" href=""><img title="Karnataka" class="img-responsive" src="img/city/karnataka.jpg" alt="Karnataka" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Karnataka" href="">Karnataka</a></h2>

            </div>
               <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Kerela" href=""><img title="Kerela" class="img-responsive" src="img/city/kerela.jpg" alt="Kerela" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Kerela" href="">Kerela</a></h2>

            </div>
               <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Madhya Pradesh" href=""><img title="Madhya Pradesh" class="img-responsive" src="img/city/madhya pradesh.jpg" alt="Madhya Pradesh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Madhya Pradesh" href="">Madhya Pradesh</a></h2>

            </div>
                  <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Maharashtra" href=""><img title="Maharashtra" class="img-responsive" src="img/city/maharashtra.jpg" alt="Maharashtra" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Maharashtra" href="">Maharashtra</a></h2>

            </div>
                     <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Manipur" href=""><img title="Manipur" class="img-responsive" src="img/city/manipur.jpg" alt="Manipur" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Manipur" href="">Manipur</a></h2>

            </div>
               <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Meghalaya" href=""><img title="Meghalaya" class="img-responsive" src="img/city/meghalaya.jpg" alt="Meghalaya" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Meghalaya" href="">Meghalaya</a></h2>

            </div>
            
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Mizoram" href=""><img title="Mizoram" class="img-responsive" src="img/city/mizoram.jpg" alt="Mizoram" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Mizoram" href="">Mizoram</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Nagaland" href=""><img title="Nagaland" class="img-responsive" src="img/city/nagaland.jpg" alt="Nagaland" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Nagaland" href="">Nagaland</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Odhisa" href=""><img title="Odhisa" class="img-responsive" src="img/city/odhisa.jpg" alt="Odhisa" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Odhisa" href="">Odhisa</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Punjab" href=""><img title="Punjab" class="img-responsive" src="img/city/punjab.jpg" alt="Punjab" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Punjab" href="">Punjab</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Rajasthan" href=""><img title="Rajasthan" class="img-responsive" src="img/city/rajasthan.jpg" alt="Rajasthan" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Rajasthan" href="">Rajasthan</a></h2>

            </div>
                <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Sikkim" href=""><img title="Sikkim" class="img-responsive" src="img/city/sikkim.jpg" alt="Sikkim" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Sikkim" href="">Sikkim</a></h2>

            </div>
              <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Tamil Nadu" href=""><img title="Tamil Nadu" class="img-responsive" src="img/city/tamil nadu.jpg" alt="Tamil Nadu" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Tamil Nadu" href="">Tamil Nadu</a></h2>

            </div>
            <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Telangana" href=""><img title="Telangana" class="img-responsive" src="img/city/telangana.jpg" alt="Telangana" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Telangana" href="">Telangana</a></h2>

            </div>
             <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Tripura" href=""><img title="Tripura" class="img-responsive" src="img/city/tripura.jpg" alt="Tripura" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Tripura" href="">Tripura</a></h2>

            </div>
                <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Uttarakhand" href=""><img title="Uttarakhand" class="img-responsive" src="img/city/uttarakhand.jpg" alt="Uttarakhand" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Uttarakhand" href="">Uttarakhand</a></h2>

            </div>
             <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="Uttar Pradesh" href=""><img title="Uttar Pradesh" class="img-responsive" src="img/city/uttar pradesh.jpg" alt="Uttar Pradesh" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="Uttar Pradesh" href="">Uttar Pradesh</a></h2>

            </div>
               <div class="blog-post-item noborder margin-bottom-10 padding-left-0 padding-right-0 col-md-2 col-sm-4 col-xs-3 text-center">
                <!-- IMAGE -->
                <figure class="margin-bottom-10">
                    <a title="West Bengal" href=""><img title="West Bengal" class="img-responsive" src="img/city/west bengal.jpg" alt="West Bengal" style="width: 160px; height: auto; border-radius:50%;"></a> </figure>
                <h2 class="size-15 weight-600 text-center hidden-xs"><a title="West Bengal" href="">West Bengal</a></h2>

            </div>


        </div>

    </div>
  </div>
</section>
<!-- start footer Area -->

<footer class="footer-area section_gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-3  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>ABOUT US</h6>
                    <p>
                        IVRRM (Indian Virtual Regional Market) is a place that connects the
                        shoppers and the consumers together.
                    </p>
                </div>
            </div>
            <div class="col-lg-4  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>NEWSLETTER</h6>
                    <p>Stay update with our latest</p>
                    <div class="" id="mc_embed_signup">

                        <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                              method="get" class="form-inline">

                            <div class="d-flex flex-row">

                                <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
                                       required="" type="email">

                                <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                                </div>

                                <!-- <div class="col-lg-4 col-md-4">
                                                <button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
                                            </div>  -->
                            </div>
                            <div class="info"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>REGISTERED OFFICE ADDRESS</h6>
                        <p>IVRRM ECOMMERCE PVT. LTD.<br>
                        C/O SHEELA DEVI JASROOP NAGAR,CHANDERLOK COLONY<br>
                        MODI NAGAR ROAD,HAPUR,Ghaziabad,<br>
                        Uttar Pradesh,245101.
                        
                        </p>
                    </div>
                </div>

            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6>FOLLOW US</h6>
                    <p>Let us be social</p>
                    <div class="footer-social d-flex align-items-center">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-envelope"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
            <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy; <script>document.write(new Date().getFullYear());</script> <b>IVRRM</b> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>
<!-- End footer Area -->



<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/countdown.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="js/gmaps.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>