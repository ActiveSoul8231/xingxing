
//  内容
$(function(){
var fh=$(".ndiv_leftC_fh");
	fh.each(function(index){
		$(this).click(function(){
		fh.css("backgroundPosition","0px -504px");
		$(this).css({backgroundPosition:"0px -490px"});
		$(".ndiv_leftC_span").css("display","none");	
		$(".ndiv_leftC_span").eq(index).css("display","block");	
		});
	});
});


//   商品
$(function(){
var li=$(".ndivRc_n_Top > ul > li");
	li.each(function(index){
		$(this).mouseover(function(){
		li.css("color","#333333");
		$(this).css({color:"#FF6600"});
		$(".ndivRc_n_One").css("display","none");	
		$(".ndivRc_n_One").eq(index).css("display","block");	
		});
	});
});

//  时间
function getCurDate(){
	 var d = new Date();
	 var week;
		 switch (d.getDay()){
		 case 1: week="星期一"; break;
		 case 2: week="星期二"; break;
		 case 3: week="星期三"; break;
		 case 4: week="星期四"; break;
		 case 5: week="星期五"; break;
		 case 6: week="星期六"; break;
		 default: week="星期天";
	 	}
 var month = add_zero(d.getMonth()+1);
 var days = add_zero(d.getDate()+1);
 var ndate = month+"月"+days+"日";
 var divT=document.getElementsByClassName("divT"); 
 var one=document.getElementsByClassName("ndivRc_n_one");
 for(var i=0;i<=one.length-1;i++){
	 
	  divT[i].innerHTML= ndate;
	 
	 }

}
function add_zero(temp){
 if(temp<10) return "0"+temp;
 else return temp;
}
setInterval("getCurDate()",100);

// JavaScript Document