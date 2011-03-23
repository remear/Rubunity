$(function() {
  	$('a[rel*=fancybox]').fancybox({
			'showNavArrows'      : false,
			'hideOnContentClick' : false
		});
  
  $('#logo').click(function() {
    window.location = "/";
  });
  
  $('#topic-form, #rails-version-form, #ruby-version-form').hide();
  
  $('.up_vote').click(function() {
    //alert($(this).attr('value'));
    window.location.href = "/bookmark/vote/" + $(this).attr('value');
  });
  
});