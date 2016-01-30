#= require jquery
#= require jquery_ujs
#= require jquery.turbolinks
#= require modals
#= require turbolinks

$(document).ready ->
  $('[data-behavior~=modal_trigger]').leanModal()
