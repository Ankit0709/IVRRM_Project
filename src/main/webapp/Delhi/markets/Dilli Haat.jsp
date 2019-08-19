<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="services.HibernateSessionProvider"%>
<%@page import="beans.Vendor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- AIVM-->
    <link rel="shortcut icon" href="../../img/IVRRM.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">

<title>IVRRM</title>

    <link rel="stylesheet" href="../../css/linearicons.css">
    <link rel="stylesheet" href="../../css/owl.carousel.css">
    <link rel="stylesheet" href="../../css/themify-icons.css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/nice-select.css">
    <link rel="stylesheet" href="../../css/nouislider.min.css">
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/main.css">
    <style>
.login_box_area
{
margin-top:5%;
}

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
    .fa
    {
    color:black;
    }
    .form-row >p
    {
    color:black;}


</style>
</head>
<body>

<!-- Start Header Area -->
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="../../index.jsp"><img src="../../img/IVRRM.png" alt="IVRRM" style="width:50px;height:50px"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="../../index.jsp">Home</a></li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                                <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                                <li class="nav-item"><a class="nav-link" href="cart.jsp">Shopping Cart</a></li>
                                <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                            </ul>
                        </li>
                         <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">User</a>
                            <ul class="dropdown-menu">
                            <%if(session.getAttribute("User")==null) 
                            {
                            	%><li class="nav-item"><a class="nav-link" href="../../login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="../../registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="../../logoutUser">Logout</a></li>
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
                            	%><li class="nav-item"><a class="nav-link" href="../../vendor_login.jsp">Login</a></li>
                                 <li class="nav-item"><a class="nav-link" href="../../vendor_registration.jsp">SignUp</a></li>
                                 <%
                            }
                            else
                            {
                            	%>
                            	<li class="nav-item"><a class="nav-link" href="../../logoutVendor">Logout</a></li>
                            	<%
                            }
                            %>
                                
                            </ul>
                        </li>
               
                        <li class="nav-item"><a class="nav-link" href="../../contact.jsp">Contact</a></li>
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


<div class="section-title">
            
               <h1  style="font-weight: 50px; font-size: 40px; color: black; text-align: center;margin-top:100px">
                    Shops In The Dilli Haat </h1>
               </div>
                
          </div>

<section style="padding-top:8%">
	  <div class="container">
	    <div class="row">
<%
  Session session2=HibernateSessionProvider.getSession();
  Query query=session2.createQuery("from Vendor where city='Delhi' and market='Dilli Haat' ");
  
  
  
  if(query!=null)
  {
	  List<Vendor> vendor=query.list();
	  for(Vendor v:vendor)
	  {
		  %>
		<div class="col-lg-4 col-md-6">
		<div class="card" style="width:20rem;heigth:30rem;">
		  <img class="card-img-top" src="<%=v.getShop_image()%>">
		  <div class="card-body">
		    <h5 class="card-title"><i class="fa fa-home" aria-hidden="true"></i>  <%=v.getShop_name() %></h5>
		    <h5 class="card-text"><i class="fa fa-map-marker" aria-hidden="true"></i>  <%=v.getShop_address() %></h5>
		    <a href="../../products.jsp?id=<%=v.getCust_id()%>" class="btn btn-success">Show Products</a>
		  </div>
		</div>
		</div>
		  <%
		  
	  }  
  }
  
  

%>
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


</body>
</html>