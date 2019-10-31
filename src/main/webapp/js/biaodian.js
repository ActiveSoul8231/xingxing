//    顶部广告
$(function(){$(".Topimg_x").click(function(){$(".Topimg_width").css("display","none");});});


//    工具栏
$(function(){
	$(".toolbar_dl").mouseover(function(){
			$(".toolbar_dl_img").css("backgroundPosition","0px 0px");
			$(".toolbar_dl").css("backgroundColor","#fda929");
		});
	$(".toolbar_dl").mouseleave(function(){
			$(".toolbar_dl_img").css("backgroundPosition","-35px 0px");
			$(".toolbar_dl").css("backgroundColor","#383838");
		});
	$(".toolbar_gwc").mouseover(function(){
			$(".toolbar_gwc_n").css("borderTop","1px solid #fda929");
			$(".toolbar_gwc_n").css("borderBottom","1px solid #fda929");
			$(".toolbar_gwc").css("backgroundColor","#fda929");
			$(".toolbar_gwc_img").css("backgroundPosition","0px -28px");
			$(".toolbar_gwc_n > a").css("color","#383838");
		});
	$(".toolbar_gwc").mouseleave(function(){
			$(".toolbar_gwc_n").css("borderTop","1px solid #4d4d4d");
			$(".toolbar_gwc_n").css("borderBottom","1px solid #4d4d4d");
			$(".toolbar_gwc").css("backgroundColor","#383838");
			$(".toolbar_gwc_img").css("backgroundPosition","-35px -28px");
			$(".toolbar_gwc_n > a").css("color","#FFF");
		});
	$(".toolbar_lc").mouseover(function(){
			$(".toolbar_lc_img").css("backgroundPosition","0px -89px");
			$(".toolbar_lc").css("backgroundColor","#fda929");
			$(".toolbar_lc_app").css("display","block");
			$(".toolbar_lc_app").css("backgroundColor","#fda929");
			$(".toolbar_lc_app > a").css("color","#383838");
		});
	$(".toolbar_lc").mouseleave(function(){
			$(".toolbar_lc_img").css("backgroundPosition","-35px -89px");
			$(".toolbar_lc").css("backgroundColor","#383838");
			$(".toolbar_lc_app").css("display","none");
			$(".toolbar_lc_app").css("backgroundColor","#383838");
			$(".toolbar_lc_app > a").css("color","#fda929");
		});
	$(".toolbar_zj").mouseover(function(){
			$(".toolbar_zj_img").css("backgroundPosition","0px -120px");
			$(".toolbar_zj").css("backgroundColor","#fda929");
			$(".toolbar_zj_app").css("display","block");
			$(".toolbar_zj_app").css("backgroundColor","#fda929");
			$(".toolbar_zj_app > a").css("color","#383838");
		});
	$(".toolbar_zj").mouseleave(function(){
			$(".toolbar_zj_img").css("backgroundPosition","-33px -120px");
			$(".toolbar_zj").css("backgroundColor","#383838");
			$(".toolbar_zj_app").css("display","none");
			$(".toolbar_zj_app").css("backgroundColor","#383838");
			$(".toolbar_zj_app > a").css("color","#fda929");
		});
	$(".toolbar_qd").mouseover(function(){
			$(".toolbar_qd_img").css("backgroundPosition","0px -291px");
			$(".toolbar_qd").css("backgroundColor","#fda929");
			$(".toolbar_qd_app").css("display","block");
			$(".toolbar_qd_app").css("backgroundColor","#fda929");
			$(".toolbar_qd_app > a").css("color","#383838");
		});
	$(".toolbar_qd").mouseleave(function(){
			$(".toolbar_qd_img").css("backgroundPosition","-35px -291px");
			$(".toolbar_qd").css("backgroundColor","#383838");
			$(".toolbar_qd_app").css("display","none");
			$(".toolbar_qd_app").css("backgroundColor","#383838");
			$(".toolbar_qd_app > a").css("color","#fda929");
		});
	$(".toolbar_zx").mouseover(function(){
			$(".toolbar_zx").css("backgroundColor","#fda929");
			$(".toolbar_zx_img").css("backgroundPosition","0px -177px");
			$(".toolbar_zx_app").css("display","block");
			$(".toolbar_zx_app").css("backgroundColor","#fda929");
			$(".toolbar_zx_app > a").css("color","#383838");
		});
	$(".toolbar_zx").mouseleave(function(){
			$(".toolbar_zx").css("backgroundColor","#383838");
			$(".toolbar_zx_img").css("backgroundPosition","-35px -177px");
			$(".toolbar_zx_app").css("display","none");
			$(".toolbar_zx_app").css("backgroundColor","#383838");
			$(".toolbar_zx_app > a").css("color","#fda929");
		});
	$(".toolbar_yj").mouseover(function(){
			$(".toolbar_yj").css("backgroundColor","#fda929");
			$(".toolbar_yj_img").css("backgroundPosition","0px -208px");
			$(".toolbar_yj_app").css("display","block");
			$(".toolbar_yj_app").css("backgroundColor","#fda929");
			$(".toolbar_yj_app > a").css("color","#383838");
		});
	$(".toolbar_yj").mouseleave(function(){
			$(".toolbar_yj").css("backgroundColor","#383838");
			$(".toolbar_yj_img").css("backgroundPosition","-37px -208px");
			$(".toolbar_yj_app").css("display","none");
			$(".toolbar_yj_app").css("backgroundColor","#383838");
			$(".toolbar_yj_app > a").css("color","#fda929");
		});
	$(".toolbar_fang").mouseover(function(){
			$(".toolbar_fang").css("backgroundColor","#fda929");
			$(".toolbar_fang_img").css("backgroundPosition","0px -149px");
			$(".toolbar_fang_app").css("display","block");
			$(".toolbar_fang_app").css("backgroundColor","#ededed");
			$(".toolbar_fang_app > a").css("color","#383838");
		});
	$(".toolbar_fang").mouseleave(function(){
			$(".toolbar_fang").css("backgroundColor","#383838");
			$(".toolbar_fang_img").css("backgroundPosition","-35px -149px");
			$(".toolbar_fang_app").css("display","none");
			$(".toolbar_fang_app").css("backgroundColor","#383838");
			$(".toolbar_fang_app > a").css("color","#fda929");
		});
	$(".toolbar_fanhui").mouseover(function(){
			$(".toolbar_fanhui").css("backgroundColor","#fda929");
			$(".toolbar_fanhui_img").css("backgroundPosition","0px -240px");
			$(".toolbar_fanhui_app").css("display","block");
			$(".toolbar_fanhui_app").css("backgroundColor","#fda929");
			$(".toolbar_fanhui_app > a").css("color","#383838");
		});
	$(".toolbar_fanhui").mouseleave(function(){
			$(".toolbar_fanhui").css("backgroundColor","#383838");
			$(".toolbar_fanhui_img").css("backgroundPosition","-35px -240px");
			$(".toolbar_fanhui_app").css("display","none");
			$(".toolbar_fanhui_app").css("backgroundColor","#383838");
			$(".toolbar_fanhui_app > a").css("color","#fda929");
		});
});


//    出现搜索框input
$(function(){
var one=$(".Osous_one_center_left");
var app=$(".Osous_center_app");
var x=$(".Osous_center_app_x");

	one.each(function(){
        $(this).click(function(){
					app.css("display","block");
			});
    });
	
	app.mouseleave(function(){
			app.css("display","none");
		});
	
	x.each(function(){
        $(this).click(function(){
					app.css("display","none");
			});
    });
	
	});

//    出现搜索框购物车
$(function(){
var gwc=$(".Osous_right_gouwuche");
var span=$(".Osous_right_gouwuche > span");
	gwc.mouseover(function(){
			span.css("background-image","url(../image/gouwuchecheng.png)");
		});
	gwc.mouseleave(function(){
			span.css("background-image","url(../image/gouwuche.png)");
		});
		
});

//    网站导航
$(function(){
var one=$(".head_left_one");
var app=$(".head_left_one_app");
var kuai=$(".head_left_one_kuai");
var x=$(".head_left_one_app_x");
var img=$(".head_left_one_span > img");

	one.mouseover(function(){
			one.css("border","1px solid #dddddd");
			one.css("backgroundColor","#FFF");
			app.css("display","block");
			kuai.css("display","block");
			img.css("top","-70px");
		});
	one.mouseleave(function(){
			one.css("border","1px solid #f5f5f5");
			one.css("backgroundColor","#f5f5f5");
			app.css("display","none");
			one.css("borderBottom","none");
			kuai.css("display","none");
			img.css("top","-60px");
		});
		
	$(x).click(function(){
		app.css("display","none");
		});
	
});
	
//    我的易购
$(function(){
var yigou=$(".head_right_yigou");
var app=$(".head_right_yigou_app");
var kuai=$(".head_right_yigou_kuai");
var img=$(".head_right_yigou_span > img");

	yigou.mouseover(function(){
			yigou.css("border","1px solid #dddddd");
			yigou.css("backgroundColor","#FFF");
			app.css("display","block");
			kuai.css("display","block");
			img.css("top","-70px");
		});
	yigou.mouseleave(function(){
			yigou.css("border","1px solid #f5f5f5");
			yigou.css("backgroundColor","#f5f5f5");
			app.css("display","none");
			yigou.css("borderBottom","none");
			kuai.css("display","none");
			img.css("top","-60px");
		});
		
});
//    购物车
$(function(){
var gwc=$(".head_right_gouwuche");
var span=$(".head_right_gouwuche > span");
	gwc.mouseover(function(){
			span.css("background-image","url(../image/gouwuchecheng.png)");
		});
	gwc.mouseleave(function(){
			span.css("background-image","url(../image/gouwuche.png)");
		});
		
});
//    收藏夹
$(function(){
var shoucang=$(".head_right_shoucang");
var app=$(".head_right_shoucang_app");
var kuai=$(".head_right_shoucang_kuai");
var img=$(".head_right_shoucang_span > img");

	shoucang.mouseover(function(){
			shoucang.css("border","1px solid #dddddd");
			shoucang.css("backgroundColor","#FFF");
			app.css("display","block");
			kuai.css("display","block");
			img.css("top","-70px");
		});
	shoucang.mouseleave(function(){
			shoucang.css("border","1px solid #f5f5f5");
			shoucang.css("backgroundColor","#f5f5f5");
			app.css("display","none");
			shoucang.css("borderBottom","none");
			kuai.css("display","none");
			img.css("top","-60px");
		});
		
});

//    手机苏宁
$(function(){
var shouji=$(".head_right_shouji");
var app=$(".head_right_shouji_app");
var kuai=$(".head_right_shouji_kuai");
var img=$(".head_right_shouji_span > img");

	shouji.mouseover(function(){
			shouji.css("border","1px solid #dddddd");
			shouji.css("backgroundColor","#FFF");
			app.css("display","block");
			kuai.css("display","block");
			img.css("top","-70px");
		});
	shouji.mouseleave(function(){
			shouji.css("border","1px solid #f5f5f5");
			shouji.css("backgroundColor","#f5f5f5");
			app.css("display","none");
			shouji.css("borderBottom","none");
			kuai.css("display","none");
			img.css("top","-60px");
		});
		
});


//    客户服务
$(function(){
var fuwu=$(".head_right_fuwu");
var app=$(".head_right_fuwu_app");
var kuai=$(".head_right_fuwu_kuai");
var img=$(".head_right_fuwu_span > img");

	fuwu.mouseover(function(){
			fuwu.css("border","1px solid #dddddd");
			fuwu.css("backgroundColor","#FFF");
			app.css("display","block");
			kuai.css("display","block");
			img.css("top","-70px");
		});
	fuwu.mouseleave(function(){
			fuwu.css("border","1px solid #f5f5f5");
			fuwu.css("backgroundColor","#f5f5f5");
			app.css("display","none");
			fuwu.css("borderBottom","none");
			kuai.css("display","none");
			img.css("top","-60px");
		});
		
});

//    搜索框input
$(function(){
var one=$(".sous_center_top_left");
var app=$(".sous_center_app");
var x=$(".sous_center_app_x");

	one.each(function(){
        $(this).click(function(){
					app.css("display","block");
			});
    });
	
	app.mouseleave(function(){
			app.css("display","none");
		});
	
	x.each(function(){
        $(this).click(function(){
					app.css("display","none");
			});
    });
	
	});

//    选项卡
$(function(){
var li=$(".navrightone > .navrightTop > ul > li");
	li.each(function(index){
		
		$(this).click(function(){
		li.css("backgroundColor","");
		li.css("color","#666666");
		li.css("marginTop","");
		li.css("borderTop","");
		$(this).css({backgroundColor:"#ffc001",color:"#333333",borderTop:"5px solid #ffc001",marginTop:"-5px"});
		$(".navrightOne").css("display","none");	
		$(".navrightOne").eq(index).css("display","block");	
			
			
		});
		
	});
});

//    选项卡下第三页
$(function(){
var li=$(".navrightOne > .navrightOne_top > .navrightOne_top3 >  ul > li");
	li.each(function(index){
		
		$(this).click(function(){
		li.css("border","1px solid #ededed");
		$(".navrightOne_top3 > ul > li > span").css("display","none");	
		li.css("color","#666666");
		$(this).css({color:"#333333",border:"1px solid #ffd965"});
		$(".navrightOnetop3_l").css("display","none");	
		$(".navrightOnetop3_l").eq(index).css("display","block");	
		$(".navrightOne_top3 > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//    商品滚动导航
$(function(){
	var navBottom=$(".navBottom");
	var uls=$(".navBottom > ul");
	var left=$(".navBottomleft");
	var right=$(".navBottomright");
	var i=0;
	navBottom.mouseover(function(){
			left.css("display","block");
			right.css("display","block");
		});
	navBottom.mouseleave(function(){
			left.css("display","none");
			right.css("display","none");
	});
	left.click(function(){
		 i--;
			if(i<0){
				i=uls.length-1;
				}
			uls.css("display","none");
			uls.eq(i).css("display","block");
		});
	right.click(function(){
		 i++;
			if(i>uls.length-1){
				i=0;
				}
			uls.css("display","none");
			uls.eq(i).css("display","block");
		});
});

//   大牌盛宴
$(function(){
var span=$(".dapaicenter_right > ul > li > span");
 var t=$(".dapaicenter_right > ul > li");
	t.click(function(){
					var r= $(this).index();
					span.eq(r).css("backgroundPosition","-91px -71px");
					span.eq(r).css("display","block");
		});	
	});



//   猜你喜欢换一换
$(function(){
var huan=$(".xihhuan");
var ul=$(".xihcenter > ul");
		i=0;

	huan.click(function(){
		 	i++;
			if(i>ul.length-1){
				i=0;
				}
			ul.css("display","none");
			ul.eq(i).css("display","block");
		});


});


//   F1楼选项卡
$(function(){
var li=$(".F1louRight > .F1louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F1louRight_center").css("display","none");	
		$(".F1louRight_center").eq(index).css("display","block");	
		$(".F1louRight_top > ul > li > span").css("display","none");	
		$(".F1louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});


//   F2 手机通讯选项卡
$(function(){
var li=$(".F2louRight > .F2louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F2louRight_center").css("display","none");	
		$(".F2louRight_center").eq(index).css("display","block");	
		$(".F2louRight_top > ul > li > span").css("display","none");	
		$(".F2louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F3 食品酒水选项卡
$(function(){
var li=$(".F3louRight > .F3louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F3louRight_center").css("display","none");	
		$(".F3louRight_center").eq(index).css("display","block");	
		$(".F3louRight_top > ul > li > span").css("display","none");	
		$(".F3louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F4 家用电器选项卡
$(function(){
var li=$(".F4louRight > .F4louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F4louRight_center").css("display","none");	
		$(".F4louRight_center").eq(index).css("display","block");	
		$(".F4louRight_top > ul > li > span").css("display","none");	
		$(".F4louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F5 生活电器选项卡
$(function(){
var li=$(".F5louRight > .F5louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F5louRight_center").css("display","none");	
		$(".F5louRight_center").eq(index).css("display","block");	
		$(".F5louRight_top > ul > li > span").css("display","none");	
		$(".F5louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F6 电脑数码选项卡
$(function(){
var li=$(".F6louRight > .F6louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F6louRight_center").css("display","none");	
		$(".F6louRight_center").eq(index).css("display","block");	
		$(".F6louRight_top > ul > li > span").css("display","none");	
		$(".F6louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F7 母婴玩具选项卡
$(function(){
var li=$(".F7louRight > .F7louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F7louRight_center").css("display","none");	
		$(".F7louRight_center").eq(index).css("display","block");	
		$(".F7louRight_top > ul > li > span").css("display","none");	
		$(".F7louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F8 生活日用选项卡
$(function(){
var li=$(".F8louRight > .F8louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F8louRight_center").css("display","none");	
		$(".F8louRight_center").eq(index).css("display","block");	
		$(".F8louRight_top > ul > li > span").css("display","none");	
		$(".F8louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F9 美妆个护选项卡
$(function(){
var li=$(".F9louRight > .F9louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F9louRight_center").css("display","none");	
		$(".F9louRight_center").eq(index).css("display","block");	
		$(".F9louRight_top > ul > li > span").css("display","none");	
		$(".F9louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F10 家装建材选项卡
$(function(){
var li=$(".F10louRight > .F10louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F10louRight_center").css("display","none");	
		$(".F10louRight_center").eq(index).css("display","block");	
		$(".F10louRight_top > ul > li > span").css("display","none");	
		$(".F10louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F11 汽车用品选项卡
$(function(){
var li=$(".F11louRight > .F11louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F11louRight_center").css("display","none");	
		$(".F11louRight_center").eq(index).css("display","block");	
		$(".F11louRight_top > ul > li > span").css("display","none");	
		$(".F11louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//   F12 汽车用品选项卡
$(function(){
var li=$(".F12louRight > .F12louRight_top > ul > li");
	li.each(function(index){
		
		$(this).mouseover(function(){
		li.css("color","#666666");
		$(this).css({color:"#783e18"});
		$(".F12louRight_center").css("display","none");	
		$(".F12louRight_center").eq(index).css("display","block");	
		$(".F12louRight_top > ul > li > span").css("display","none");	
		$(".F12louRight_top > ul > li > span").eq(index).css("display","block");	
			
			
		});
		
	});
});

//    社区
$(function(){
	var Right=$(".shequRight");
	var one=$(".shequRightone");
	var shequRight_l=$(".shequRight_l");
	var shequRight_r=$(".shequRight_r");
	var lis=$(".shequRhui > ul > li");
	var i=0;
	Right.mouseover(function(){
			shequRight_l.css("display","block");
			shequRight_r.css("display","block");
		});
	Right.mouseleave(function(){
			shequRight_l.css("display","none");
			shequRight_r.css("display","none");
	});
	shequRight_l.click(function(){
		 i--;
			if(i<0){
				i=one.length-1;
				}
			one.css("display","none");
			one.eq(i).css("display","block");
			lis.css("backgroundColor","#FFF");
			lis.eq(i).css("backgroundColor","#ffaa00");
		});
	shequRight_r.click(function(){
		 i++;
			if(i>one.length-1){
				i=0;
				}
			one.css("display","none");
			one.eq(i).css("display","block");
			lis.css("backgroundColor","#FFF");
			lis.eq(i).css("backgroundColor","#ffaa00");
		});
});

// JavaScript Document