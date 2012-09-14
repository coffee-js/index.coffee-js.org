
$ ->
  $('.title').click (e) ->
    classes = e.target.className
    name = classes.split(' ')[1]
    h = $("#article>.#{name}").offset().top
    $("body").animate scrollTop: h