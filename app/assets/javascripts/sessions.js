$(document).ready(function(){
   $("#session_id").validate({
    rules: {
          "email":{
              required: true,
              minlength: 3,
              maxlength: 30
          },
          "password":{
              required: true
          },
    },
     submitHandler: function(form) {
      form.submit();
    }
  });

});