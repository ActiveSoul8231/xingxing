<%--
  Created by IntelliJ IDEA.
  User: 18460
  Date: 2019/10/17
  Time: 17:15
<!-- jstl JSP标准标签库  -->
		<dependency>
		    <groupId>javax.servlet</groupId>
		    <artifactId>jstl</artifactId>
		    <version>1.2</version>
		</dependency>
		<!-- 返回jsp页面还需要这个依赖 -->
		<dependency>
		    <groupId>org.apache.tomcat.embed</groupId>
		    <artifactId>tomcat-embed-jasper</artifactId>
		    <scope>provided</scope>
		</dependency>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    span{
        color: #ab1e1e;
    }
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    <%--注册时使用此点击事件是为了异步提交判断用户名是否已经被占用--%>
    <%--flag1 注册时判断用户名是否唯一--%>
    function getUserFlag() {
        //将  id="userName"  的值放入 ss 中
        var ss = $("#userName").val();
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("")
        $.ajax({
            //请求类型为：POST
            type:"POST",
            // 把请求发送到user  中的  getUserName() 方法
            url:"${pageContext.request.contextPath}/user/getUserName",
            //映射或字符串值。规定连同请求发送到服务器的数据
            data:{"userName":ss},
            //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
            dataType:"json",
            //请求成功时执行的回调函数。
            success:function (obj4) {
                $("#flag1").text(obj4.message)
            }
        })
    }

    // flag2 判断两次输入密码是否重复
    function passwordVerification() {
        var password1 = $("#password1").val();
        var password2 = $("#password2").val();
        if(password1 != password2){
            $("#flag2").text("🍂两次密码输入不一致");
        }else{
            $("#flag2").text("");
        }
    }



    /**
     * 前端  ajax  验证  验证码是否正确
     */
    // flag3 判断邮箱验证码是否相同
    function validataMailCode() {
        var mailCode=$("#mailCode").val();
        var mailCodeReturn=$("#mailCodeReturn").val();
        if (mailCode != mailCodeReturn){
            $("#flag3").text("🍂眼花了吧？");
        }else {
            $("#flag3").text("");
        }
    }

    // flag4 判断用户邮箱是否唯一
    function getUserEmailFlag() {
        var val = $("#email").val();
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/userEmailFlag",
            data:{"userMailFlag":val},
            dataType:"json",
            success:function (obj3) {
                $("#flag4").text(obj3.mailFlag);
            }
        })
    }

//    判断注册用户的手机号是否唯一
    function getUserTel() {
        var val = $("#userTel").val();
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/userTel",
            data:{"userTelphone":val},
            dataType:"json",
            success:function (obj2) {
                $("#flag5").text(obj2.phoneFlag);
            }
        })
    }

    function submitForm() {
        var str = "0";
        var text1 = $("#flag1").text();
        var text2 = $("#flag2").text();
        var text3 = $("#flag3").text();
        var text4 = $("#flag4").text();
        var text5 = $("#flag5").text();
        if(text1 != ""){
            str = "用户名重复";
        }
        if(text2 != ""){
            str="两次密码不同";
        }
        if(text3 != ""){
            str="验证码怎么输错了";
        }
        if(text4 != ""){
            str="邮箱不能重复哦"
        }
        if(text5 != ""){
            str="手机号也不能重复"
        }
        if(str == "0"){
            $("#userForm").submit();
        }else{
            alert(str);
        }
    }
    //接收邮箱验证码转成的 json 文件
    function sendEmail() {
        //清空验证码
        $("#mailCode").empty();
        //将 id=“email”  的值放入 val
        var val = $("#email").val();
        $("#flag1").text("")
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/sendMail",
            //将邮箱地址放到键为 “userEmail” 中，，传到 sendMail() 方法
            data:{"userEmail":val},
            dataType:"json",
            success:function (obj1) {
                $("#mailCode").append("<input type='hidden' id='mailCodeReturn' value='"+obj1.mailCode+"'>");
                alert("验证码已经发送");
            }
        })
    }
    function toLogin() {
        location.href="${pageContext.request.contextPath}/jsp/frontend/loginorregister/login.jsp";
    }
</script>
<body>
    <form id="userForm" action="${pageContext.request.contextPath}/user/userRegister" method="post" enctype="multipart/form-data">
        <input type="text" id="userName" name="userName" value="${userName}" onmouseleave="getUserFlag()" placeholder="起个名字吧"><span id='flag1'></span><br>
        <input type="password" id="password1" name="password" placeholder="输入一条能记住的密码"><br>
        <input type="password" id="password2" onmouseleave="passwordVerification()" placeholder="再输一遍吧"><span id="flag2"></span><br>
        <input type="email"  placeholder="邮箱" id="email" name="userEmail" onmouseleave="getUserEmailFlag()"><input type="button" onclick="sendEmail()" value="点击获取验证码"/><span id="flag4"></span><br>
        <input type="text" id="mailCode" placeholder="请输入验证码"  name="mailCode" onmouseleave="validataMailCode()"><span id = "flag3"></span><br>
        <input type="text" id="userTel" placeholder="请输入手机号" name="userTelephoneNum" onmouseleave="getUserTel()"><span id = "flag5"></span><br>
        <input type="button" value="注册" onclick="submitForm()"><input type="button" onclick="toLogin()" value="有账号了？去登录">
    </form>
</body>
</html>
    
