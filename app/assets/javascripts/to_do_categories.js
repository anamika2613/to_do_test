$(document).ready(function(){
   $("#new_to_do_category").validate({
    rules: {
          "to_do_category[title]":{
              required: true,
              minlength: 3,
              maxlength: 30
          },
          "to_do_category[due_date]":{
              required: true
          },
          "to_do_category[sub_category_id]": {
              required: true
          },
    },
     submitHandler: function(form) {
      form.submit();
    }
  });
    $('.datepicker').datepicker();
});