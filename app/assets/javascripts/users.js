$(document).ready(function(){
   $("#new_user").validate({
    rules: {
          "user[email]":{
              required: true,
              minlength: 3,
              maxlength: 30,
              email: true
          },
          "user[password]":{
              required: true
          },
          "user[password_confirmation]": {
              required: true,
              equalTo: "#user_password"
          },
    },
     submitHandler: function(form) {
      form.submit();
    }
  });
    $('.datepicker').datepicker();
});
