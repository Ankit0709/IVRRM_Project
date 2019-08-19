<%@page import="services.OTPGeneration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--IVRRM-->
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
	.alert
	{
	margin-top:15%;
	margin-bottom:15px;
	
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






 <div class="container">
   <div class="alert alert-success" id="abc" style="display: none;">OTP Sent</div>
   <div class="alert alert-danger" id="pqr" role="alert" style="display: none;">Error In Sending OTP</div>
   
 </div>
 
<!--================Login Box Area =================-->
<section class="login_box_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="login_form_inner" style="padding-top: 0px">
                    <div class="jumbotron">
                        <h1>Register Your Shop  With Us</h1>
                    </div>

                    <form class="needs-validation" novalidate enctype="multipart/form-data" action="vendorRegister" method="post">
                        <div class="form-row">
                            <div style="margin: 10px;">
                                <i class="fa fa-user fa-2x"></i>
                            </div>
                            <p style="margin:10px 10px 10px 0px;">Name</p>

                            <div class="col-lg-3  form-group">
                                <input type="text" class="form-control" id="validationCustomfirst" placeholder="First Name"  name="fname" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    This field is Required
                                </div>

                            </div>
                            <div class="col-lg-3 form-group">
                                <input type="text" class="form-control" placeholder="Middle Name" name="mname" aria-describedby="inputGroupPrepend" >

                            </div>
                            <div class="col-lg-3 form-group">
                                <input type="text" class="form-control" id="validationCustomlast" name="lname" placeholder="Last Name" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    This field is Required
                                </div>

                            </div>
                        </div>
                        <div class="form-row">
                                <div style="margin: 10px;">
                                    <i class="fa fa-mobile fa-2x"></i>
                                </div>
                                <p style="margin:10px 10px 10px 0px;">Contact Details</p>
                            <div class="col-lg-3">
                                <div class="input-group form-group">

                                    <input type="number" class="form-control"  name="mobile" id="mobile" placeholder="Mobile No" aria-describedby="inputGroupPrepend" required>
                                    <button onclick="generateOTP()" class="btn-sm btn-primary">Send OTP</button>
                                    <div class="invalid-feedback">
                                        Please choose a valid Contact No.
                                    </div>
                                </div>
                            </div>


                            <div  style="margin: 10px;">
                                <i class="fa fa-envelope fa-2x"></i>
                            </div>
                            <p style="margin: 10px 10px 10px 0px;" >Email Id</p>
                            <div class="col-lg-4">
                                <div class="input-group form-group">
                                    <input type="email" class="form-control" name="email" id="validationCustomEmail" placeholder="Email Id" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a email Id.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div style="margin: 10px;">
                                <i class="fa fa-key fa-2x"></i>
                            </div>
                            <p style="margin:10px 30px 10px 0px;">Password</p>
                            <div class="col-lg-3 form-group">
                                <div class="input-group">
                                   <input type="password" class="form-control" id="password" name="password"  placeholder="Password" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a Password
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 form-group">
                                <div class="input-group">
                                    <input type="password" class="form-control" id="confirm_password"  name="confirm_password" placeholder="Confirm Password" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Password Not Matched
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div style="margin: 10px;">
                                <i class="fa fa-shopping-basket fa-2x"></i>
                            </div>
                            <p style="margin:10px 19px 10px 0px;">Shop Name</p>
                                <div class="col-lg-4 col-md-3">
                                    <div class="input-group form-group">
                                        <input type="text" class="form-control" name="shop_name" placeholder="Shop Name" aria-describedby="inputGroupPrepend" required>
                                        <div class="invalid-feedback">
                                            Please choose a Shop Name.
                                        </div>
                                    </div>
                                </div>
                            <div style="margin: 10px;">
                                <i class="fa fa-address-card fa-2x"></i>
                            </div>
                            <p style="margin:10px 19px 10px 0px;">Shop Address</p>
                            <div class="col-lg-4 col-md-3">
                                <div class="input-group">
                                    <input type="text" class="form-control"  name="shop_address" placeholder="Shop Address" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a Shop Address.
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <div class="input-group form-group">
                                    <input type="number" class="form-control" name="shop_pincode" placeholder="Zipcode" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a Zip Code.
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-3 col-sm-12">
                                <select class="custom-select form-control" name="city" required>
                                    <option value="">City </option>
                                    <option value="delhi">Delhi</option>
                                    <option value="rajasthan">Rajasthan</option>
                                    <option value="noida">Noida</option>
                                    <option value="gurgaon">Gurgaon</option>
                                </select>
                                <div class="invalid-feedback">Select Your City</div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-3">
                                <select class="custom-select form-control" name="market" required>
                                    <option value="">Select Your Market </option>
                                    <option value="Tibetan Market">Tibetan Market</option>
                                    <option value="Paharganj">Paharganj</option>
                                    <option value="Chandni Chowk">Chandni Chowk</option>
                                    <option value="Sarojini Nagar">Sarojini Nagar</option>
                                    <option value="Lajpat Nagar">Lajpat Nagar</option>
                                    <option value="Khan Market">Khan Market</option>
                                    <option value="Janakpuri Market">Janakpuri Market</option>
                                    <option value="Dilli Haat">Dilli Haat</option>
                                    <option value="karol Bagh Market">Karol Bagh Market</option>
                                    <option value="Atta Market">Atta Market</option>
                                    <option value="Shankar Market">Shankar Market</option>
                                    <option value="Sundar Nagar">Sundar Nagar</option>
                                </select>
                                <div class="invalid-feedback">Select Your Market</div>
                            </div>

                            <div class="form-group col-lg-3">
                               <input type="file"  name="shop_image" class="custom-file-input" id="validatedCustomFile" accept="image/*" required>
                                
                                <label class="custom-file-label" for="validatedCustomFile">Choose shop image...</label>
                                <div class="invalid-feedback">Please Upload Shop image.</div>
                            </div>
                            </div>

                        <div class="form-row">
                            <div style="margin: 10px;">
                                <i class="fa fa-bank fa-2x"></i>
                            </div>
                            <p style="margin:10px 30px 10px 0px;">Paytm Bank Number</p>
                            <div class="col-lg-6 ">
                                <div class="input-group form-group">
                                    <input type="number" class="form-control"  name="paytm_number"  placeholder="Paytm Number" aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose account details
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                          
                            <input type="checkbox" required style="margin:20px"><p style="margin:10px 30px 10px 0px; color:grey">By filling this form,I agree to <a href="terms_vendor.html">Terms Of Use</a></p>
                            
                        </div>
							
							<div class="form-row">
                            <div class="col-lg-12 col-md-3">
                                <button class="btn btn-success btn-block" type="submit">Next</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>



<!--================End Login Box Area =================-->


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
function generateOTP() {
    var dataToBeSent  = {
      mobile : $("#mobile").val() , 
      
      };

    $.ajax({
          url : 'otpgenerate', 
          data :dataToBeSent, 
          type : 'POST',
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
<script>

    var password = document.getElementById("password")
        , confirm_password = document.getElementById("confirm_password");

    function validatePassword(){
        if(password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Passwords Don't Match");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;



</script>

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


<script src="js/main.js"></script>





</body>
</html>