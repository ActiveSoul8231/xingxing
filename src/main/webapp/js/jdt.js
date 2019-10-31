//顶部焦点图
	var main=document.getElementsByClassName("main");
	var ctrl=document.getElementsByClassName("ctrl");
	var uls=ctrl.item(0).children.item(0);
	var lis=uls.children;
	var main_img=document.getElementsByClassName("main_img");
	var img=main_img.item(0).children;
	var left=document.getElementsByClassName("leftmain");
	var right=document.getElementsByClassName("rightmain");
	
	for(var i=0;i<lis.length;i++){
		lis.item(i).index=i;
			lis.item(i).onmouseover=function(){
				
				for(var j=0;j<lis.length;j++){
						lis.item(j).style.backgroundColor="#ddd";
						img.item(j).style.display="none";
					}
					img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var timer=null;
		var m=0;
		main.item(0).onmouseover=function(){
					left.item(0).style.display="block";
					right.item(0).style.display="block";
					clearInterval(timer);
				}
		main.item(0).onmouseleave=function(){
					left.item(0).style.display="none";
					right.item(0).style.display="none";
					timer=setInterval("run()",2000);
				}
		timer=setInterval("run()",2000);
				function run(){m++;
					if(m>lis.length-1){
							m=0;
						}
					for(var j=0;j<lis.length;j++){
							lis.item(j).style.backgroundColor="#ddd";
							img.item(j).style.display="none";
						}
						lis.item(m).style.backgroundColor="#F60";
						img.item(m).style.display="block";
					
				}
		left.item(0).onclick=function(){
			if(m<=0){
				m=lis.length-1;
			}else{
				m--;
				}
			for(var n=0;n<lis.length;n++){
				lis.item(n).style.backgroundColor="#dddddd";
				img.item(n).style.display="none";
			}
			lis.item(m).style.backgroundColor="#F60";
			img.item(m).style.display="block";
			};
		right.item(0).onclick=function(){
			if(m>=lis.length-1){
				m=0;
			}else{
				m++;
				}	
			for(var n=0;n<lis.length;n++){
				lis.item(n).style.backgroundColor="#dddddd";
				img.item(n).style.display="none";
			}
			lis.item(m).style.backgroundColor="#F60";
			img.item(m).style.display="block";
		};


//F1焦点图
	var F1nav=document.getElementsByClassName("FlouRightC_left_nav");
	var F1nav_li=document.getElementsByClassName("F1C_left_nav_li");
	var F1uls=F1nav_li.item(0).children.item(0);
	var F1lis=F1uls.children;
	var F1main_img=document.getElementsByClassName("F1C_left_nav_img");
	var F1img=F1main_img.item(0).children;
	var F1left=document.getElementsByClassName("F1leftmain");
	var F1right=document.getElementsByClassName("F1rightmain");
	
	for(var i=0;i<F1lis.length;i++){
		F1lis.item(i).index=i;
			F1lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F1lis.length;j++){
						F1lis.item(j).style.backgroundColor="#ddd";
						F1img.item(j).style.display="none";
					}
					F1img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F1timer=null;
		var F1m=0;
		F1nav.item(0).onmouseover=function(){
					F1left.item(0).style.display="block";
					F1right.item(0).style.display="block";
					clearInterval(F1timer);
				}
		F1nav.item(0).onmouseleave=function(){
					F1left.item(0).style.display="none";
					F1right.item(0).style.display="none";
					F1timer=setInterval("F1run()",2000);
				}
		F1timer=setInterval("F1run()",2000);
				function F1run(){
					F1m++;
					if(F1m>F1lis.length-1){
							F1m=0;
						}
					for(var j=0;j<F1lis.length;j++){
							F1lis.item(j).style.backgroundColor="#ddd";
							F1img.item(j).style.display="none";
						}
						F1lis.item(F1m).style.backgroundColor="#F60";
						F1img.item(F1m).style.display="block";
					
				}
		F1left.item(0).onclick=function(){
			if(F1m<=0){
				F1m=F1lis.length-1;
			}else{
				F1m--;
				}
			for(var n=0;n<F1lis.length;n++){
				F1lis.item(n).style.backgroundColor="#dddddd";
				F1img.item(n).style.display="none";
			}
			F1lis.item(F1m).style.backgroundColor="#F60";
			F1img.item(F1m).style.display="block";
			};
		F1right.item(0).onclick=function(){
			if(F1m>=F1lis.length-1){
				F1m=0;
			}else{
				F1m++;
				}	
			for(var n=0;n<F1lis.length;n++){
				F1lis.item(n).style.backgroundColor="#dddddd";
				F1img.item(n).style.display="none";
			}
			F1lis.item(F1m).style.backgroundColor="#F60";
			F1img.item(F1m).style.display="block";
		};



//F2焦点图
	var F2nav=document.getElementsByClassName("F2louRightC_left_nav");
	var F2nav_li=document.getElementsByClassName("F2C_left_nav_li");
	var F2uls=F2nav_li.item(0).children.item(0);
	var F2lis=F2uls.children;
	var F2main_img=document.getElementsByClassName("F2C_left_nav_img");
	var F2img=F2main_img.item(0).children;
	var F2left=document.getElementsByClassName("F2leftmain");
	var F2right=document.getElementsByClassName("F2rightmain");
	
	for(var i=0;i<F2lis.length;i++){
		F2lis.item(i).index=i;
			F2lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F2lis.length;j++){
						F2lis.item(j).style.backgroundColor="#ddd";
						F2img.item(j).style.display="none";
					}
					F2img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F2timer=null;
		var F2m=0;
		F2nav.item(0).onmouseover=function(){
					F2left.item(0).style.display="block";
					F2right.item(0).style.display="block";
					clearInterval(F2timer);
				}
		F2nav.item(0).onmouseleave=function(){
					F2left.item(0).style.display="none";
					F2right.item(0).style.display="none";
					F2timer=setInterval("F2run()",2000);
				}
		F2timer=setInterval("F2run()",2000);
				function F2run(){
					F2m++;
					if(F2m>F2lis.length-1){
							F2m=0;
						}
					for(var j=0;j<F2lis.length;j++){
							F2lis.item(j).style.backgroundColor="#ddd";
							F2img.item(j).style.display="none";
						}
						F2lis.item(F2m).style.backgroundColor="#F60";
						F2img.item(F2m).style.display="block";
					
				}
		F2left.item(0).onclick=function(){
			if(F2m<=0){
				F2m=F2lis.length-1;
			}else{
				F2m--;
				}
			for(var n=0;n<F2lis.length;n++){
				F2lis.item(n).style.backgroundColor="#dddddd";
				F2img.item(n).style.display="none";
			}
			F2lis.item(F2m).style.backgroundColor="#F60";
			F2img.item(F2m).style.display="block";
			};
		F2right.item(0).onclick=function(){
			if(F2m>=F2lis.length-1){
				F2m=0;
			}else{
				F2m++;
				}	
			for(var n=0;n<F2lis.length;n++){
				F2lis.item(n).style.backgroundColor="#dddddd";
				F2img.item(n).style.display="none";
			}
			F2lis.item(F2m).style.backgroundColor="#F60";
			F2img.item(F2m).style.display="block";
		};



//F3焦点图
	var F3nav=document.getElementsByClassName("F3louRightC_left_nav");
	var F3nav_li=document.getElementsByClassName("F3C_left_nav_li");
	var F3uls=F3nav_li.item(0).children.item(0);
	var F3lis=F3uls.children;
	var F3main_img=document.getElementsByClassName("F3C_left_nav_img");
	var F3img=F3main_img.item(0).children;
	var F3left=document.getElementsByClassName("F3leftmain");
	var F3right=document.getElementsByClassName("F3rightmain");
	
	for(var i=0;i<F3lis.length;i++){
		F3lis.item(i).index=i;
			F3lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F3lis.length;j++){
						F3lis.item(j).style.backgroundColor="#ddd";
						F3img.item(j).style.display="none";
					}
					F3img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F3timer=null;
		var F3m=0;
		F3nav.item(0).onmouseover=function(){
					F3left.item(0).style.display="block";
					F3right.item(0).style.display="block";
					clearInterval(F3timer);
				}
		F3nav.item(0).onmouseleave=function(){
					F3left.item(0).style.display="none";
					F3right.item(0).style.display="none";
					F3timer=setInterval("F3run()",2000);
				}
		F3timer=setInterval("F3run()",2000);
				function F3run(){
					F3m++;
					if(F3m>F3lis.length-1){
							F3m=0;
						}
					for(var j=0;j<F3lis.length;j++){
							F3lis.item(j).style.backgroundColor="#ddd";
							F3img.item(j).style.display="none";
						}
						F3lis.item(F3m).style.backgroundColor="#F60";
						F3img.item(F3m).style.display="block";
					
				}
		F3left.item(0).onclick=function(){
			if(F3m<=0){
				F3m=F3lis.length-1;
			}else{
				F3m--;
				}
			for(var n=0;n<F3lis.length;n++){
				F3lis.item(n).style.backgroundColor="#dddddd";
				F3img.item(n).style.display="none";
			}
			F3lis.item(F3m).style.backgroundColor="#F60";
			F3img.item(F3m).style.display="block";
			};
		F3right.item(0).onclick=function(){
			if(F3m>=F3lis.length-1){
				F3m=0;
			}else{
				F3m++;
				}	
			for(var n=0;n<F3lis.length;n++){
				F3lis.item(n).style.backgroundColor="#dddddd";
				F3img.item(n).style.display="none";
			}
			F3lis.item(F3m).style.backgroundColor="#F60";
			F3img.item(F3m).style.display="block";
		};



//F4焦点图
	var F4nav=document.getElementsByClassName("F4louRightC_left_nav");
	var F4nav_li=document.getElementsByClassName("F4C_left_nav_li");
	var F4uls=F4nav_li.item(0).children.item(0);
	var F4lis=F4uls.children;
	var F4main_img=document.getElementsByClassName("F4C_left_nav_img");
	var F4img=F4main_img.item(0).children;
	var F4left=document.getElementsByClassName("F4leftmain");
	var F4right=document.getElementsByClassName("F4rightmain");
	
	for(var i=0;i<F4lis.length;i++){
		F4lis.item(i).index=i;
			F4lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F4lis.length;j++){
						F4lis.item(j).style.backgroundColor="#ddd";
						F4img.item(j).style.display="none";
					}
					F4img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F4timer=null;
		var F4m=0;
		F4nav.item(0).onmouseover=function(){
					F4left.item(0).style.display="block";
					F4right.item(0).style.display="block";
					clearInterval(F4timer);
				}
		F4nav.item(0).onmouseleave=function(){
					F4left.item(0).style.display="none";
					F4right.item(0).style.display="none";
					F4timer=setInterval("F4run()",2000);
				}
		F4timer=setInterval("F4run()",2000);
				function F4run(){
					F4m++;
					if(F4m>F4lis.length-1){
							F4m=0;
						}
					for(var j=0;j<F4lis.length;j++){
							F4lis.item(j).style.backgroundColor="#ddd";
							F4img.item(j).style.display="none";
						}
						F4lis.item(F4m).style.backgroundColor="#F60";
						F4img.item(F4m).style.display="block";
					
				}
		F4left.item(0).onclick=function(){
			if(F4m<=0){
				F4m=F4lis.length-1;
			}else{
				F4m--;
				}
			for(var n=0;n<F4lis.length;n++){
				F4lis.item(n).style.backgroundColor="#dddddd";
				F4img.item(n).style.display="none";
			}
			F4lis.item(F4m).style.backgroundColor="#F60";
			F4img.item(F4m).style.display="block";
			};
		F4right.item(0).onclick=function(){
			if(F4m>=F4lis.length-1){
				F4m=0;
			}else{
				F4m++;
				}	
			for(var n=0;n<F4lis.length;n++){
				F4lis.item(n).style.backgroundColor="#dddddd";
				F4img.item(n).style.display="none";
			}
			F4lis.item(F4m).style.backgroundColor="#F60";
			F4img.item(F4m).style.display="block";
		};


//F5焦点图
	var F5nav=document.getElementsByClassName("F5louRightC_left_nav");
	var F5nav_li=document.getElementsByClassName("F5C_left_nav_li");
	var F5uls=F5nav_li.item(0).children.item(0);
	var F5lis=F5uls.children;
	var F5main_img=document.getElementsByClassName("F5C_left_nav_img");
	var F5img=F5main_img.item(0).children;
	var F5left=document.getElementsByClassName("F5leftmain");
	var F5right=document.getElementsByClassName("F5rightmain");
	
	for(var i=0;i<F5lis.length;i++){
		F5lis.item(i).index=i;
			F5lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F5lis.length;j++){
						F5lis.item(j).style.backgroundColor="#ddd";
						F5img.item(j).style.display="none";
					}
					F5img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F5timer=null;
		var F5m=0;
		F5nav.item(0).onmouseover=function(){
					F5left.item(0).style.display="block";
					F5right.item(0).style.display="block";
					clearInterval(F5timer);
				}
		F5nav.item(0).onmouseleave=function(){
					F5left.item(0).style.display="none";
					F5right.item(0).style.display="none";
					F5timer=setInterval("F5run()",2000);
				}
		F5timer=setInterval("F5run()",2000);
				function F5run(){
					F5m++;
					if(F5m>F5lis.length-1){
							F5m=0;
						}
					for(var j=0;j<F5lis.length;j++){
							F5lis.item(j).style.backgroundColor="#ddd";
							F5img.item(j).style.display="none";
						}
						F5lis.item(F5m).style.backgroundColor="#F60";
						F5img.item(F5m).style.display="block";
					
				}
		F5left.item(0).onclick=function(){
			if(F5m<=0){
				F5m=F5lis.length-1;
			}else{
				F5m--;
				}
			for(var n=0;n<F5lis.length;n++){
				F5lis.item(n).style.backgroundColor="#dddddd";
				F5img.item(n).style.display="none";
			}
			F5lis.item(F5m).style.backgroundColor="#F60";
			F5img.item(F5m).style.display="block";
			};
		F5right.item(0).onclick=function(){
			if(F5m>=F5lis.length-1){
				F5m=0;
			}else{
				F5m++;
				}	
			for(var n=0;n<F5lis.length;n++){
				F5lis.item(n).style.backgroundColor="#dddddd";
				F5img.item(n).style.display="none";
			}
			F5lis.item(F5m).style.backgroundColor="#F60";
			F5img.item(F5m).style.display="block";
		};



//F6焦点图
	var F6nav=document.getElementsByClassName("F6louRightC_left_nav");
	var F6nav_li=document.getElementsByClassName("F6C_left_nav_li");
	var F6uls=F6nav_li.item(0).children.item(0);
	var F6lis=F6uls.children;
	var F6main_img=document.getElementsByClassName("F6C_left_nav_img");
	var F6img=F6main_img.item(0).children;
	var F6left=document.getElementsByClassName("F6leftmain");
	var F6right=document.getElementsByClassName("F6rightmain");
	
	for(var i=0;i<F6lis.length;i++){
		F6lis.item(i).index=i;
			F6lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F6lis.length;j++){
						F6lis.item(j).style.backgroundColor="#ddd";
						F6img.item(j).style.display="none";
					}
					F6img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F6timer=null;
		var F6m=0;
		F6nav.item(0).onmouseover=function(){
					F6left.item(0).style.display="block";
					F6right.item(0).style.display="block";
					clearInterval(F6timer);
				}
		F6nav.item(0).onmouseleave=function(){
					F6left.item(0).style.display="none";
					F6right.item(0).style.display="none";
					F6timer=setInterval("F6run()",2000);
				}
		F6timer=setInterval("F6run()",2000);
				function F6run(){
					F6m++;
					if(F6m>F6lis.length-1){
							F6m=0;
						}
					for(var j=0;j<F6lis.length;j++){
							F6lis.item(j).style.backgroundColor="#ddd";
							F6img.item(j).style.display="none";
						}
						F6lis.item(F6m).style.backgroundColor="#F60";
						F6img.item(F6m).style.display="block";
					
				}
		F6left.item(0).onclick=function(){
			if(F6m<=0){
				F6m=F6lis.length-1;
			}else{
				F6m--;
				}
			for(var n=0;n<F6lis.length;n++){
				F6lis.item(n).style.backgroundColor="#dddddd";
				F6img.item(n).style.display="none";
			}
			F6lis.item(F6m).style.backgroundColor="#F60";
			F6img.item(F6m).style.display="block";
			};
		F6right.item(0).onclick=function(){
			if(F6m>=F6lis.length-1){
				F6m=0;
			}else{
				F6m++;
				}	
			for(var n=0;n<F6lis.length;n++){
				F6lis.item(n).style.backgroundColor="#dddddd";
				F6img.item(n).style.display="none";
			}
			F6lis.item(F6m).style.backgroundColor="#F60";
			F6img.item(F6m).style.display="block";
		};



//F7焦点图
	var F7nav=document.getElementsByClassName("F7louRightC_left_nav");
	var F7nav_li=document.getElementsByClassName("F7C_left_nav_li");
	var F7uls=F7nav_li.item(0).children.item(0);
	var F7lis=F7uls.children;
	var F7main_img=document.getElementsByClassName("F7C_left_nav_img");
	var F7img=F7main_img.item(0).children;
	var F7left=document.getElementsByClassName("F7leftmain");
	var F7right=document.getElementsByClassName("F7rightmain");
	
	for(var i=0;i<F7lis.length;i++){
		F7lis.item(i).index=i;
			F7lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F7lis.length;j++){
						F7lis.item(j).style.backgroundColor="#ddd";
						F7img.item(j).style.display="none";
					}
					F7img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F7timer=null;
		var F7m=0;
		F7nav.item(0).onmouseover=function(){
					F7left.item(0).style.display="block";
					F7right.item(0).style.display="block";
					clearInterval(F7timer);
				}
		F7nav.item(0).onmouseleave=function(){
					F7left.item(0).style.display="none";
					F7right.item(0).style.display="none";
					F7timer=setInterval("F7run()",2000);
				}
		F7timer=setInterval("F7run()",2000);
				function F7run(){
					F7m++;
					if(F7m>F7lis.length-1){
							F7m=0;
						}
					for(var j=0;j<F7lis.length;j++){
							F7lis.item(j).style.backgroundColor="#ddd";
							F7img.item(j).style.display="none";
						}
						F7lis.item(F7m).style.backgroundColor="#F60";
						F7img.item(F7m).style.display="block";
					
				}
		F7left.item(0).onclick=function(){
			if(F7m<=0){
				F7m=F7lis.length-1;
			}else{
				F7m--;
				}
			for(var n=0;n<F7lis.length;n++){
				F7lis.item(n).style.backgroundColor="#dddddd";
				F7img.item(n).style.display="none";
			}
			F7lis.item(F7m).style.backgroundColor="#F60";
			F7img.item(F7m).style.display="block";
			};
		F7right.item(0).onclick=function(){
			if(F7m>=F7lis.length-1){
				F7m=0;
			}else{
				F7m++;
				}	
			for(var n=0;n<F7lis.length;n++){
				F7lis.item(n).style.backgroundColor="#dddddd";
				F7img.item(n).style.display="none";
			}
			F7lis.item(F7m).style.backgroundColor="#F60";
			F7img.item(F7m).style.display="block";
		};




//F8焦点图
	var F8nav=document.getElementsByClassName("F8louRightC_left_nav");
	var F8nav_li=document.getElementsByClassName("F8C_left_nav_li");
	var F8uls=F8nav_li.item(0).children.item(0);
	var F8lis=F8uls.children;
	var F8main_img=document.getElementsByClassName("F8C_left_nav_img");
	var F8img=F8main_img.item(0).children;
	var F8left=document.getElementsByClassName("F8leftmain");
	var F8right=document.getElementsByClassName("F8rightmain");
	
	for(var i=0;i<F8lis.length;i++){
		F8lis.item(i).index=i;
			F8lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F8lis.length;j++){
						F8lis.item(j).style.backgroundColor="#ddd";
						F8img.item(j).style.display="none";
					}
					F8img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F8timer=null;
		var F8m=0;
		F8nav.item(0).onmouseover=function(){
					F8left.item(0).style.display="block";
					F8right.item(0).style.display="block";
					clearInterval(F8timer);
				}
		F8nav.item(0).onmouseleave=function(){
					F8left.item(0).style.display="none";
					F8right.item(0).style.display="none";
					F8timer=setInterval("F8run()",2000);
				}
		F8timer=setInterval("F8run()",2000);
				function F8run(){
					F8m++;
					if(F8m>F8lis.length-1){
							F8m=0;
						}
					for(var j=0;j<F8lis.length;j++){
							F8lis.item(j).style.backgroundColor="#ddd";
							F8img.item(j).style.display="none";
						}
						F8lis.item(F8m).style.backgroundColor="#F60";
						F8img.item(F8m).style.display="block";
					
				}
		F8left.item(0).onclick=function(){
			if(F8m<=0){
				F8m=F8lis.length-1;
			}else{
				F8m--;
				}
			for(var n=0;n<F8lis.length;n++){
				F8lis.item(n).style.backgroundColor="#dddddd";
				F8img.item(n).style.display="none";
			}
			F8lis.item(F8m).style.backgroundColor="#F60";
			F8img.item(F8m).style.display="block";
			};
		F8right.item(0).onclick=function(){
			if(F8m>=F8lis.length-1){
				F8m=0;
			}else{
				F8m++;
				}	
			for(var n=0;n<F8lis.length;n++){
				F8lis.item(n).style.backgroundColor="#dddddd";
				F8img.item(n).style.display="none";
			}
			F8lis.item(F8m).style.backgroundColor="#F60";
			F8img.item(F8m).style.display="block";
		};



//F9焦点图
	var F9nav=document.getElementsByClassName("F9louRightC_left_nav");
	var F9nav_li=document.getElementsByClassName("F9C_left_nav_li");
	var F9uls=F9nav_li.item(0).children.item(0);
	var F9lis=F9uls.children;
	var F9main_img=document.getElementsByClassName("F9C_left_nav_img");
	var F9img=F9main_img.item(0).children;
	var F9left=document.getElementsByClassName("F9leftmain");
	var F9right=document.getElementsByClassName("F9rightmain");
	
	for(var i=0;i<F9lis.length;i++){
		F9lis.item(i).index=i;
			F9lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F9lis.length;j++){
						F9lis.item(j).style.backgroundColor="#ddd";
						F9img.item(j).style.display="none";
					}
					F9img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F9timer=null;
		var F9m=0;
		F9nav.item(0).onmouseover=function(){
					F9left.item(0).style.display="block";
					F9right.item(0).style.display="block";
					clearInterval(F9timer);
				}
		F9nav.item(0).onmouseleave=function(){
					F9left.item(0).style.display="none";
					F9right.item(0).style.display="none";
					F9timer=setInterval("F9run()",2000);
				}
		F9timer=setInterval("F9run()",2000);
				function F9run(){
					F9m++;
					if(F9m>F9lis.length-1){
							F9m=0;
						}
					for(var j=0;j<F9lis.length;j++){
							F9lis.item(j).style.backgroundColor="#ddd";
							F9img.item(j).style.display="none";
						}
						F9lis.item(F9m).style.backgroundColor="#F60";
						F9img.item(F9m).style.display="block";
					
				}
		F9left.item(0).onclick=function(){
			if(F9m<=0){
				F9m=F9lis.length-1;
			}else{
				F9m--;
				}
			for(var n=0;n<F9lis.length;n++){
				F9lis.item(n).style.backgroundColor="#dddddd";
				F9img.item(n).style.display="none";
			}
			F9lis.item(F9m).style.backgroundColor="#F60";
			F9img.item(F9m).style.display="block";
			};
		F9right.item(0).onclick=function(){
			if(F9m>=F9lis.length-1){
				F9m=0;
			}else{
				F9m++;
				}	
			for(var n=0;n<F9lis.length;n++){
				F9lis.item(n).style.backgroundColor="#dddddd";
				F9img.item(n).style.display="none";
			}
			F9lis.item(F9m).style.backgroundColor="#F60";
			F9img.item(F9m).style.display="block";
		};



//F10焦点图
	var F10nav=document.getElementsByClassName("F10louRightC_left_nav");
	var F10nav_li=document.getElementsByClassName("F10C_left_nav_li");
	var F10uls=F10nav_li.item(0).children.item(0);
	var F10lis=F10uls.children;
	var F10main_img=document.getElementsByClassName("F10C_left_nav_img");
	var F10img=F10main_img.item(0).children;
	var F10left=document.getElementsByClassName("F10leftmain");
	var F10right=document.getElementsByClassName("F10rightmain");
	
	for(var i=0;i<F10lis.length;i++){
		F10lis.item(i).index=i;
			F10lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F10lis.length;j++){
						F10lis.item(j).style.backgroundColor="#ddd";
						F10img.item(j).style.display="none";
					}
					F10img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F10timer=null;
		var F10m=0;
		F10nav.item(0).onmouseover=function(){
					F10left.item(0).style.display="block";
					F10right.item(0).style.display="block";
					clearInterval(F10timer);
				}
		F10nav.item(0).onmouseleave=function(){
					F10left.item(0).style.display="none";
					F10right.item(0).style.display="none";
					F10timer=setInterval("F10run()",2000);
				}
		F10timer=setInterval("F10run()",2000);
				function F10run(){
					F10m++;
					if(F10m>F10lis.length-1){
							F10m=0;
						}
					for(var j=0;j<F10lis.length;j++){
							F10lis.item(j).style.backgroundColor="#ddd";
							F10img.item(j).style.display="none";
						}
						F10lis.item(F10m).style.backgroundColor="#F60";
						F10img.item(F10m).style.display="block";
					
				}
		F10left.item(0).onclick=function(){
			if(F10m<=0){
				F10m=F10lis.length-1;
			}else{
				F10m--;
				}
			for(var n=0;n<F10lis.length;n++){
				F10lis.item(n).style.backgroundColor="#dddddd";
				F10img.item(n).style.display="none";
			}
			F10lis.item(F10m).style.backgroundColor="#F60";
			F10img.item(F10m).style.display="block";
			};
		F10right.item(0).onclick=function(){
			if(F10m>=F10lis.length-1){
				F10m=0;
			}else{
				F10m++;
				}	
			for(var n=0;n<F10lis.length;n++){
				F10lis.item(n).style.backgroundColor="#dddddd";
				F10img.item(n).style.display="none";
			}
			F10lis.item(F10m).style.backgroundColor="#F60";
			F10img.item(F10m).style.display="block";
		};



//F11焦点图
	var F11nav=document.getElementsByClassName("F11louRightC_left_nav");
	var F11nav_li=document.getElementsByClassName("F11C_left_nav_li");
	var F11uls=F11nav_li.item(0).children.item(0);
	var F11lis=F11uls.children;
	var F11main_img=document.getElementsByClassName("F11C_left_nav_img");
	var F11img=F11main_img.item(0).children;
	var F11left=document.getElementsByClassName("F11leftmain");
	var F11right=document.getElementsByClassName("F11rightmain");
	
	for(var i=0;i<F11lis.length;i++){
		F11lis.item(i).index=i;
			F11lis.item(i).onmouseover=function(){
				
				for(var j=0;j<F11lis.length;j++){
						F11lis.item(j).style.backgroundColor="#ddd";
						F11img.item(j).style.display="none";
					}
					F11img.item(this.index).style.display="block";
					this.style.backgroundColor="#F60";
				}
			}
		var F11timer=null;
		var F11m=0;
		F11nav.item(0).onmouseover=function(){
					F11left.item(0).style.display="block";
					F11right.item(0).style.display="block";
					clearInterval(F11timer);
				}
		F11nav.item(0).onmouseleave=function(){
					F11left.item(0).style.display="none";
					F11right.item(0).style.display="none";
					F11timer=setInterval("F11run()",2000);
				}
		F11timer=setInterval("F11run()",2000);
				function F11run(){
					F11m++;
					if(F11m>F11lis.length-1){
							F11m=0;
						}
					for(var j=0;j<F11lis.length;j++){
							F11lis.item(j).style.backgroundColor="#ddd";
							F11img.item(j).style.display="none";
						}
						F11lis.item(F11m).style.backgroundColor="#F60";
						F11img.item(F11m).style.display="block";
					
				}
		F11left.item(0).onclick=function(){
			if(F11m<=0){
				F11m=F11lis.length-1;
			}else{
				F11m--;
				}
			for(var n=0;n<F11lis.length;n++){
				F11lis.item(n).style.backgroundColor="#dddddd";
				F11img.item(n).style.display="none";
			}
			F11lis.item(F11m).style.backgroundColor="#F60";
			F11img.item(F11m).style.display="block";
			};
		F11right.item(0).onclick=function(){
			if(F11m>=F11lis.length-1){
				F11m=0;
			}else{
				F11m++;
				}	
			for(var n=0;n<F11lis.length;n++){
				F11lis.item(n).style.backgroundColor="#dddddd";
				F11img.item(n).style.display="none";
			}
			F11lis.item(F11m).style.backgroundColor="#F60";
			F11img.item(F11m).style.display="block";
		};

