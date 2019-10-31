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


//注册框轮播
(function(){
    var oUl = document.querySelectorAll('.submenu_right_h_cen_n ul')[0];
    oUl.innerHTML = oUl.innerHTML + oUl.innerHTML
    var oLies = document.querySelectorAll('.submenu_right_h_cen_n li');
    oUl.style.width = oLies[0].offsetWidth * oLies.length + 'px';
    var speed = -1;
    setInterval(function(){
        if (oUl.offsetLeft <= -oUl.offsetWidth*.5){
            oUl.style.left = '0px';
        }
        oUl.style.left = oUl.offsetLeft + speed + 'px';
    }, 1000/30);
})();