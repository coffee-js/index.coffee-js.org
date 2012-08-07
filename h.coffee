
$("#nav").children().click (e) ->
  clas = e.target.className
  top = $("#article>.#{clas}").offset().top
  $('body').animate scrollTop: top