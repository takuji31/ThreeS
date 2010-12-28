// JavaScript Document
$(document).ready(function(){
	$(".blank").click(function(){
		window.open($(this).attr("href"));
		return false;
	});
});