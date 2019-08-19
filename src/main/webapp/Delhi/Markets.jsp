<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- AIVM-->
    <link rel="shortcut icon" href="../img/IVRRM.png">
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
    <link rel="stylesheet" href="../css/linearicons.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/themify-icons.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/nice-select.css">
    <link rel="stylesheet" href="../css/nouislider.min.css">
    <link rel="stylesheet" href="../css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="../css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <link rel="stylesheet" href="../css/main.css">

<style>
  .footer-area
    {
        background-color: #000000;
         color: whitesmoke;
        font-size: 18px;
        
    }
    .card
    {
   		height:550px;
   		padding:0px;
   		font-size:17px;
   		color:black;
   	
    
    }
    .img-thumbnail
    
    {
    padding:0px;
    }
    
    .footer-area h6 {
        color: white;
        font-size: 20px;

    }
    .btn 
    {
    margin:10px;
    }
     b
    {
   color:black;
   font-weight:3px;
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
                <a class="navbar-brand logo_h" href="../index.jsp"><img src="../img/IVRRM.png" alt="AIVM" style="width:50px;height:50px"></a>
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
                               aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                                <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                                <li class="nav-item"><a class="nav-link" href="../cart.jsp">Shopping Cart</a></li>
                                <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                            </ul>
                        </li>
                         <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">User</a>
                            <ul class="dropdown-menu">
                            <%if(session.getAttribute("User")==null) 
                            {
                            	%><li class="nav-item"><a class="nav-link" href="../login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="../registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="../logoutUser">Logout</a></li>
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
                            	%><li class="nav-item"><a class="nav-link" href="../vendor_login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="../vendor_registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="../logoutVendor">Logout</a></li>
                            	<%
                            }
                            %>
                                
                            </ul>
                        </li>
               
                        <li class="nav-item"><a class="nav-link" href="../contact.jsp">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item"><a href="../cart.jsp" class="cart"><span class="ti-bag"></span></a></li>
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





<section style="padding-top: 15px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="section-title">
            
               <h1 class="margin-bottom-10 margin-top-0" style="font-weight: 100px; font-size: 50px; color: black; text-align: center;margin-top: 120px">
                    Markets in Delhi </h1>
               </div>
                
            </div>
        </div>
        <div class="row text-center " style="display:flex;flex-wrap: wrap">


            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12 ">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Tibetan_Market.jpg">
                    <div class="caption">
                        <h4><strong>Tibetan Market (Janpath Market)</strong> </h4>
                    </div>
                    <div>
                        <p>This is also a good place to sample some original Tibetan home food.
                            Restaurants like Zomsa and Shakura serve Tibetan delicacies including thukpa.

                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b>Janpath,just off Connaught Place</li>
                            <li style="text-align: left;"><b>Famous for:</b>Handicrafts, Hippy Clothing, Shoes, Paintings, Brassware,
                                Indian artifacts, Leather work, and Cheap jewelry.</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Tibetan Market.jsp" class="btn btn-success ">View The Shops</a></p>
                </div>
            </div>


            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Paharganj.jpg">
                    <div class="caption">
                        <h4><strong>Paharganj</strong></h4>
                    </div>
                    <div>
                        <p>Paharganj is definitely not for the faint of heart.
                            It's chaotic, noisy, dirty, and full of crumbling buildings.
                            The area is favored mostly by  budget travelers .
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Paharganj Main Bazaar, opposite the New Delhi Railway Station</li>
                            <li style="text-align: left;"><b>Famous for:</b>Clothes, Shoes, Books,Textiles, Handicrafts, Hookah pipes, Incense</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Paharganj.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>


            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Chandni%20Chowk.jpg">
                    <div class="caption">
                        <h4><strong>Chandni Chowk</strong></h4>
                    </div>
                    <div>
                        <p>The shopping district of Chandni Chowk has
                            been in existence for hundreds of years and an
                            exploration of its winding, narrow alleyways is certainly an adventure.
                            Kinari bazaar sells everything you need for a wedding.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Old Delhi</li>
                            <li style="text-align: left;"><b>Famous for:</b>Fabrics, jewelry, spices, and electronic goods</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Chandni_Chowk.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>

            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Sarojini%20Nagar.jpg">
                    <div class="caption">
                        <h4><strong>Sarojini Nagar</strong></h4>
                    </div>
                    <div>
                        <p> Shops and stalls, selling all kinds of clothes and fashion accessories, sprawl onto the streets.
                            There's also a sweet market (Babu Market) and vegetable market (Subzi Mundi) in the area.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> South Delhi, near Safdarjung Airport</li>
                            <li style="text-align: left;"><b>Famous for:</b>Designer clothes, Indian clothes, fashion accessories, shoes</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Sarojini Nagar.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>

            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Lajpat%20Nagar.jpg">
                    <div class="caption">
                        <h4><strong>Lajpat Nagar (Central Market)</strong></h4>
                    </div>
                    <div>

                        <p> The hectic <b>Lajpat Nagar</b> market provides an interesting glimpse into Indian culture.
                            It's one of the oldest markets in India and is abuzz with middle-class Indian shoppers,
                            all swarming around its roadside stalls and showrooms.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> South Delhi, near Defense Colony</li>
                            <li style="text-align: left;"><b>Famous for:</b>Indian clothing, shoes, bags
                                and home furnishings</li>
                        </ul>
                    </div>

                    <p><a href="../Delhi/markets/Lajpat Nagar.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>


            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Khan%20Market.jpg">
                    <div class="caption">
                        <h4><strong>Khan Market</strong></h4>
                    </div>
                    <div>
                        <p> Established in 1951, <b>Khan Market</b> is a small U-shaped market that's one of Delhi's classiest.
                            Bargain hunters are likely to be disappointed at this market.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b>  New Delhi, not far from India Gate</li>
                            <li style="text-align: left;"><b>Famous for:</b>Books, Music, Branded and Tailored Clothes,
                                Ayurvedic Food and Cosmetics,and home furnishings</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Khan Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>



            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/janakpuri.jpg" >
                    <div class="caption">
                        <h4><strong>Janakpuri  Market (District Center) </strong></h4>
                    </div>
                    <div>
                        <p> The one stop solution for all kinds of shoppers, District Centre Market,
                            <b>Janakpuri</b> has been known as a prominent precinct for purchases and entertainment.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Near Janakpuri West Metro Station</li>
                            <li style="text-align: left;"><b>Famous for:</b>Showrooms,Electronics Market,Branded Clothes</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Janakpuri Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>

            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/dili%20haat.jpg" >
                    <div class="caption">
                        <h4><strong>Dilli Haat</strong></h4>
                    </div>
                    <div>
                        <p> This huge Delhi market has been deliberately made
                            to feel like a traditional weekly village market, called a haat.
                            Small thatched roof cottages with a village atmosphere give it great ambiance.Don't miss it!
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b>  Opposite INA Market, south Delhi</li>
                            <li style="text-align: left;"><b>Famous for:</b>Indian handcrafts and artifacts</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Dilli Haat.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>

            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/karol%20bagh.jpg" >
                    <div class="caption">
                        <h4><strong>Karol Bagh Market</strong></h4>
                    </div>
                    <div>
                        <p> <b>Karol Bagh Market</b>, a great place for shopping at cheapest price.
                            If you bargain you can get anything in very reasonable or cheap rate.

                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Near Karol Bagh Metro Station</li>
                            <li style="text-align: left;"><b>Famous for:</b>Indian Clothing, Shoes, Bags
                                and Home Furnishings</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Karol Bagh Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>

            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/atta%20market.jpg" >
                    <div class="caption">
                        <h4><strong>Atta Market</strong></h4>
                    </div>
                    <div>
                        <p><b>  Atta</b> is place where you can get clothes road side or in shops. Jwellery, electric, electronics, mobile accessories etc at very reasonable prices.
                            Busy Lane and crowded place. So many gift shop are also there.

                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Under Noida Sector-18 Metro Station</li>
                            <li style="text-align: left;"><b>Famous for:</b>Indian Clothing, Shoes, Bags</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Atta Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>



            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Shankar%20Market.jpg">
                    <div class="caption">
                        <h4><strong>Shankar Market</strong></h4>
                    </div>
                    <div>
                        <p> If you're looking to buy fabrics by the meter, <b>Shankar Market</b> is where you should head!
                            It has more than 150 shops and stalls spread over two floors,
                            stocking everything from plain cotton to silk brocades.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Opposite Connaught Place M-Block</li>
                            <li style="text-align: left;"><b>Famous for:</b>Fabrics</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Shankar Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>



            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Sundar%20Nagar.jpg">
                    <div class="caption">
                        <h4><strong>Sundar Nagar</strong></h4>
                    </div>
                    <div>
                        <p> This quaint market attracts quite a few rich
                            Indian socialites because of its art and antique shops.

                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> Off Mathura Road,near the zoo and Oberoi Hotel.</li>
                            <li style="text-align: left;"><b>Famous for:</b>Tea,silver jewelry, art, textiles, carpets, and antiques</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Sundar Market.jsp" class="btn btn-success">View The Shops</a></p>
                </div>
            </div>




            <div class=" col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="card">
                    <img class="img-thumbnail" src="markets/img/Matka%20Market.jpg" >
                    <div class="caption">
                        <h4><strong>Matka Market</strong></h4>
                    </div>
                    <div>
                        <p>Pottery from all over India is available at <b>Matka Market</b> in south Delhi.
                            The market is a fantastic place to shop for festival decorations, especially during Diwali.
                        </p>
                    </div>
                    <div>
                        <ul>
                            <li style="text-align: left;"><b>Location:</b> A.K. Roy Marg, near Sarojini Nagar bus depot, south Delhi</li>
                            <li style="text-align: left;"><b>Famous for:</b>All kinds of clay items</li>
                        </ul>
                    </div>
                    <p><a href="../Delhi/markets/Matka Market.jsp" class="btn btn-success">View The Shops</a></p>
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
                Copyright &copy; <script>document.write(new Date().getFullYear());</script> <b style="color:yellow;">IVRRM</b> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>
<!-- End footer Area -->

<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/jquery.ajaxchimp.min.js"></script>
<script src="../js/jquery.nice-select.min.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/nouislider.min.js"></script>
<script src="../js/countdown.js"></script>
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="../js/gmaps.min.js"></script>
<script src="../js/main.js"></script>
</body>

</html>