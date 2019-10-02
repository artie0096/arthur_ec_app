$(document).on('turbolinks:load', function() {
  $('#user_is_yucho').change(function(){
      if($(this).val()=="true"){
        $('#bank_account_branch_label').text("支店番号");
        $("#bank_account_type_container").hide();
      }else{
        $('#bank_account_branch_label').text("支店名");
        $("#bank_account_type_container").show();
      }
    }
  )
});