<%@page import="beans.Product"%>
<%@page import="services.HibernateSessionProvider"%>
<%@page import="beans.Cart"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.User"%>
<%@page import="services.OTPGeneration"%>
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
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
    
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


   



    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->



	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Price</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody>

							<%float total=0.00f;
							   
								Session session2 = HibernateSessionProvider.getSession();
								User user = ((User) session.getAttribute("User"));
								if(user==null)
								{response.sendRedirect("login.jsp");
									
								}
								else
								{
									Query query = session2.createQuery("from Cart where customer='" + user.getUser_id() + "'");
									List<Cart> cart = query.list();
									session.setAttribute("cart",cart);
						
									for (Cart c : cart) {
										int counter=1;
										

										Product p = session2.get(Product.class, c.getP_id());
										total+=p.getPrice();
								%>
									
								
								

							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
											<img src="<%=p.getPics() %>" style="width:50px;height:50px;">
										</div>
										<div class="media-body">
											<p style="color: black"><%=p.getName() %></p>
										</div>
									</div>
								</td>
								<td>
						
									<h5><%=p.getPrice() %></h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst" maxlength="12"
											value="1" title="Quantity:" class="input-text qty">
										<button
											onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
											class="increase items-count<%=counter++ %>" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button
											onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
											class="reduced items-count<%=counter-- %>" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5><%=p.getPrice() *counter%></h5>
								</td>
								<td>
									<a class="btn btn-sm btn-danger" href="removeProduct?id=<%=c.getId()%>">Remove Product</a>
								</td>
							</tr>

							<%
								}
								}
							%>

                        		<tr class="bottom_button">
								<td><a class="gray_btn" href="products.jsp?id=<%=session.getAttribute("vendor_id")%>">Update Cart</a></td>
								<td></td>
								<td></td>
								<td>
									<div class="cupon_text d-flex align-items-center">
										
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>
									<h5>Subtotal</h5>
								</td>
								<td>
									<h5><%=total %></h5>
								</td>
							</tr>
							<tr class="shipping_area">
								
								<td>
									<div class="checkout_btn_inner d-flex">
										<a class="gray_btn" href="products.jsp?id=<%=session.getAttribute("vendor_id")%>">Continue Shopping</a>
										 <a class="primary-btn align-items-right" href="checkout.jsp">Proceed to checkout</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->
	
		
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
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>