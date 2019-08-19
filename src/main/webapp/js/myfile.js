 $(function(){
      function getOTP() {
          var dataToBeSent  = {
            mobile : $("#mobile").val()  //
            
            }; 
          $.ajax({
                url : '/otpgenerate', // Your Servlet mapping or JSP(not suggested)
                data :mobile, 
                type : 'GET',
                dataType : 'html', // Returns HTML as plain text; included script tags are evaluated when inserted in the DOM.
                success : function(response) {
                    alert("OTP Sent"); // create an empty div in your page with some id
                },
                error : function(request, textStatus, errorThrown) {
                    alert(errorThrown);
                }
            });
      }

});