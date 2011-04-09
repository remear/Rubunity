$(function() {
  	$('a[rel*=fancybox]').fancybox({
			'showNavArrows'      : false,
			'hideOnContentClick' : false
		});
  
  $('#logo').click(function() {
    window.location = "/";
  });
  
  $('#rails-version-form, #ruby-version-form').hide();
 
	$("#topic-form").hide();
	$('#addTopic').click(function() {
		$('#topic-form').show();
		return false;
	});

  $('.up_vote').click(function() {
    //alert($(this).attr('value'));
    window.location.href = "/bookmark/vote/" + $(this).attr('value');
  });
  
});
