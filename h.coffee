
$("#nav").children().click (e) ->
  clas = e.target.className
  top = $("#article > .#{clas}").offset().top
  $('body').animate scrollTop: top

inside = (a0, a, b0, b) -> (a0 >= b0) and (a0 + a <= b0 + b)

$(document).scroll (e) ->
  for elem in $ "#nav > div"
    elem = $ elem
    nav0 = elem.offset().top
    nav = elem.outerHeight()
    clas = elem.attr 'class'
    elem1 = $ "#article > .#{clas}"
    article0 = elem1.offset().top
    article = elem1.outerHeight()
    if inside nav0, nav, article0, article
      if elem[0].style.paddingLeft in ['8px', '']
        elem.animate 'padding-left': '40px'
    else if elem[0].style.paddingLeft is '40px'
      elem.animate 'padding-left': '8px'