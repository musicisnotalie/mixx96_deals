jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  #$("#user_email_confirmation").listen () ->
  #	if $("#user_email").val() == $(this).val()
  #		alert("booger")