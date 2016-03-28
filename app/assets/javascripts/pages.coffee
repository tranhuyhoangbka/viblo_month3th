$ ->
  $("#append_content").click ->
    $.ajax(url: "pages/test").done (html) ->
      $("body").append html
