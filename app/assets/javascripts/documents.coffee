#= require autosize

$(document).ready ->
  $('[data-behavior~=auto_size]').autosize()
  $('[data-behavior~=document_editor_content]').keyup ->
    $('[data-behavior~=document_editor_content]').submit()
