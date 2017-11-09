$(function(){

	/*菜单开关*/
	$(".navbar-toggle").bind("touchstart",function(){
		if($(this).is(".in")){
			$(this).removeClass('in');
		}else{
			$(this).addClass('in');
		}
	})

	/*搜索条*/
	$("#search-event").bind("click",function(){
		var $that = $(this);
		if($("#search").is(".open")){
			$that.removeClass("animated");
			$("#search").removeClass('open');
			$(".search-shadow").hide()
		}else{
			$that.addClass("animated");
			$("#search").addClass('open');
			$(".search-shadow").show()
		}
	});

	$(".search-shadow").bind("click",function(){
		$(this).hide();
		$("#search-event").removeClass("animated");
		$("#search").removeClass('open');
	});
});