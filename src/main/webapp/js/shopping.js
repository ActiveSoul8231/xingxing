//    kuai
$(function(){
var kuai=$(".kuai");
	kuai.each(function(index){
		
		$(this).click(function(){
		kuai.css("backgroundPosition","0px -20px");
		$(this).css({backgroundPosition:"0px -36px"});
		});
	});
});

// JavaScript Document