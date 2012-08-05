$(document).ready ->
  
  $('.post-heading #title_category').text $('#post_category_id option:selected').html()

  $('.post-heading #title_ad_type').text $('#post_ad_type_id option:selected').html()

  $('#post_category_id').change ->
    $('.post-heading #title_category').text $('#post_category_id option:selected').html()

  $('#post_ad_type_id').change ->
    $('.post-heading #title_ad_type').text $('#post_ad_type_id option:selected').html()

  setInterval (->
    location = $('#post_location').val()
    $('.post-heading #title_location').text location
    ), 100
