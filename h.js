(function() {

  $(function() {
    return $('.title').click(function(e) {
      var classes, h, name;
      classes = e.target.className;
      name = classes.split(' ')[1];
      h = $("#article>." + name).offset().top;
      return $("body").animate({
        scrollTop: h
      });
    });
  });

}).call(this);
