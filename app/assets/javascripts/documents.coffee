#= require autosize

$(document).ready ->
  $(".js-auto-size").autosize()
  $("#editInfoTrigger").leanModal()
  $("#document_content").keyup ->
    $("#documentEditor").submit()
