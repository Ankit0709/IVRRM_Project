<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- AIVM-->
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
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
	
<style>
 .fa
    {
    color:black;
    }
    .form-row >p
    {
    color:black;}

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
   #box
   {
   margin:5% auto;}
</style>
</head>
<body >
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



<div class="container">
   <div class="alert alert-success" id="abc" style="display: none;">Product Added Successfully</div>
    
 </div>
 
<%
if(session.getAttribute("Vendor")==null)
	response.sendRedirect("vendor_login.jsp");
%>


<div class="container" id="box">
    <div class="row">
        <div class="col-lg-12">
            <div class="login_form_inner" style="padding-top: 0px">
                <div class="jumbotron">
                    <h1>Add Your Product</h1>
                </div>

                <form class="needs-validation" novalidate action="addProduct" method="post" enctype="multipart/form-data">
                    <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-shopping-basket fa-2x"></i>
                        </div>
                        <p style="margin:10px 10px 10px 0px;">Product Name</p>

                        <div class="col-lg-9  form-group">
                            <input type="text" class="form-control"  placeholder="Product Name"  name="product_name" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Enter Your Product Name
                            </div>

                        </div>

                    </div>

                    <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-product-hunt fa-2x"></i>
                        </div>
                        <p style="margin:10px 10px 10px 0px;">PRODUCT CATEGORY</p>
                        <div class="form-group col-lg-3">
                            <select class="custom-select form-control" name="product_category" id="category" required size="1" onchange="makeSubmenu(this.value)">
                                <option value="electronics">Electronics</option>
                                <option value="fashion">Fashion</option>
                                <option value="Home and furniture">Home and Furniture</option>
                                <option value="TVs & Appliances">TVs & Appliances</option>
                                <option value="beauty">Beauty Toys and More</option>
                               
                            </select>

                        </div>
                    </div>
                    



                    <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-file-text fa-2x"></i>
                        </div>
                        <p style="margin:10px 10px 10px 0px;">PRODUCT DESCRIPTION</p>
                            <div class="col-lg-9  form-group">

                                        <textarea class="form-control" id="product_description" name="product_description" style="height: 200px;" required></textarea>
                                <div class="invalid-feedback">
                                    Please enter valid Product description
                                </div>
                                    </div>


                     </div>

                   <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-image fa-2x"></i>
                        </div>
                        <p style="margin:10px 30px 10px 0px;">PRODUCT IMAGE</p>
                        <div class="form-group col-lg-3">
                            <input type="file"  name="product_image" class="custom-file-input" id="validatedCustomFile" accept="image/*" required>
                            <label class="custom-file-label" for="validatedCustomFile">Choose Product image...</label>
                            <div class="invalid-feedback">Please Upload Product image.</div>
                        </div>
                    </div>
                     <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-quantity fa-2x"></i>
                        </div>
                        <p style="margin:10px 30px 10px 0px;">PRODUCT QUANTITY</p>
                        <div class="col-lg-6 ">
                            <div class="input-group form-group">
                                <input type="number" class="form-control"  name="product_quantity"  placeholder="Product Quantity" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please enter Product Quantity
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div style="margin: 10px;">
                            <i class="fa fa-money fa-2x"></i>
                        </div>
                        <p style="margin:10px 30px 10px 0px;">PRODUCT PRICE</p>
                        <div class="col-lg-6 ">
                            <div class="input-group form-group">
                                <input type="number" class="form-control"  name="product_price"  placeholder="Product price" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please enter Product Price
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-12 col-md-3">
                            <button class="btn btn-success btn-block" onclick="successMessage()" type="submit">Add the Product</button>
                        </div>
                    </div>
                </form>
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



<script>
function successMessage() {
    
    $.ajax({
         
          dataType : 'html', 
          success : function(response) {
        	  $("#abc").show();
          },
          error : function(request, textStatus, errorThrown) {
        	
        	  $("#pqr").show();
          }
      });
}

</script>
<script>
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

</script>
</body>
</html>