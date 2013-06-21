$(document).ready ->
  $("#cart > .heading a").click ->
    $("#cart").addClass "active"
    # Некая функция загрузки данных корзины
    #$('#cart').load('index.php?route=module/cart #cart > *');
    $('#cart').mouseleave ->
      $(this).removeClass('active');