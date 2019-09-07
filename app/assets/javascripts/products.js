$(document).on('turbolinks:load', function() {
  $(".searchable").select2({
    width:      200,
    allowClear: true,
    multiple: true
  })
})