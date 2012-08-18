
$('#nav').children().click (e) ->
  clas = e.target.className
  top = $("#article>.#{clas}").offset().top
  $('body').animate scrollTop: top

$('#article').children().mouseenter (e) ->
  clas = e.target.className
  elem = $ "#nav>.#{clas}"
  elem.animate 'padding-left': '40px'

$('#article').children().mouseleave (e) ->
  clas = e.target.className
  elem = $ "#nav>.#{clas}"
  elem.animate 'padding-left': '8px'
