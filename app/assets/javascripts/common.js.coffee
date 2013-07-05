$(document).ready ->
  $("#cart > .heading a").click ->
    $("#cart").addClass "active"
    # Некая функция загрузки данных корзины
    #$('#cart').load('index.php?route=module/cart #cart > *');
    $('#cart').mouseleave ->
      $(this).removeClass('active');

  # Setup drop down menu
  $(".dropdown-toggle").dropdown()

  # Fix input element click problem
  $(".dropdown input, .dropdown label").click (e) ->
    e.stopPropagation()

  #Add Hover effect to menus
  #jQuery("ul.nav li.dropdown").hover (->
  #  jQuery(this).find(".dropdown-menu").stop(true, true).delay(50).fadeIn()
  #), ->
  #  jQuery(this).find(".dropdown-menu").stop(true, true).delay(50).fadeOut()

  # добавляем класс к ошибочному полю для раскраски через  bootstrap
  #$(".field_with_errors").parent().addClass "error"
