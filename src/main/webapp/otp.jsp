<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IVRRM</title>

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
        form>input[type=number]{
            margin-top: 20px;
            margin-left:20px;
          }
        button
        {
         margin-top: 2px;
                  
        }
        .login_box_area
        {
         margin-top:10%;
        }
        input[type=number] {
            height: 50px;
            width: 50px;
            font-size: 30px;
            text-align: center;
            border: 1px solid #000000;
            float:center;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
       .jumbotron
       {
           margin: 0px auto;
       }
        #box{
            margin: 0% auto 0% auto;
        }
        
         a{
         margin: 20px auto;
            color: grey;
             
            font-size:20px;
            text-align:center;
        }
      a:hover
      {
      color:red;}
        input[type=submit]
        {
        float:center;
        margin-top:30px;
        
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
    margin-top:5px;
    }


</style>
  
</head>
<body>



 <div class="container">
 <div class="alert alert-success" id="abc" style="display: none;">OTP Sent Again</div>
 <div class="alert alert-danger" id="pqr" role="alert" style="display: none;">Error In Sending OTP</div>
   
 </div>



<section class="login_box_area">

   
    <div class="container">
        <div class="row">
            <div id="box">
            <div class="jumbotron">
                <h3>Enter The OTP You have Received</h3>
            </div>
                <form action="verifyOTP" method="post">
                    <input id="codeBox1" name="codeBox1"  type="number" maxlength="1" onkeyup="onKeyUpEvent(1, event)" onfocus="onFocusEvent(1)"/>
                    <input id="codeBox2" name="codeBox2" type="number" maxlength="1" onkeyup="onKeyUpEvent(2, event)" onfocus="onFocusEvent(2)"/>
                    <input id="codeBox3" name="codeBox3" type="number" maxlength="1" onkeyup="onKeyUpEvent(3, event)" onfocus="onFocusEvent(3)"/>
                    <input id="codeBox4" name="codeBox4"  type="number" maxlength="1" onkeyup="onKeyUpEvent(4, event)" onfocus="onFocusEvent(4)"/>
                    <input id="codeBox5" name="codeBox5" type="number" maxlength="1" onkeyup="onKeyUpEvent(5, event)" onfocus="onFocusEvent(5)"/>
                    <input id="codeBox6" name="codeBox6" type="number" maxlength="1" onkeyup="onKeyUpEvent(6, event)" onfocus="onFocusEvent(6)"/>
                    <input type="submit" class="btn-success btn-block btn-lg" value="Verify OTP">
              
                </form><br>
                <br>
                  <button class="btn btn-danger btn-block btn-lg" onclick="generateOTP()">Send OTP Again</button>
            </div>


        </div>
        
    </div>
</section>

<script>
function generateOTP() {
  
    $.ajax({
          url : 'otpgenerate', 
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
    function getCodeBoxElement(index) {
        return document.getElementById('codeBox' + index);
    }
    function onKeyUpEvent(index, event) {
        const eventCode = event.which || event.keyCode;
        if (getCodeBoxElement(index).value.length === 1) {
            if (index !== 6) {
                getCodeBoxElement(index+ 1).focus();
            } else {
                getCodeBoxElement(index).blur();
                // Submit code
                console.log('submit code ');
            }
        }
        if (eventCode === 8 && index !== 1) {
            getCodeBoxElement(index - 1).focus();
        }
    }
    function onFocusEvent(index) {
        for (item = 1; item < index; item++) {
            const currentElement = getCodeBoxElement(item);
            if (!currentElement.value) {
                currentElement.focus();
                break;
            }
        }
    }
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