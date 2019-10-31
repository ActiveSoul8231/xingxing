<%--
  Created by IntelliJ IDEA.
  User: 18460
  Date: 2019/10/16
  Time: 18:13
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
<html>
<head>
    <title>普通用户登陆</title>
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
    window.onload=function () {
        var message = "${message}"
        if(message != null){
            $("#flag2").text(message);
        }
    }

    function getUserFlag() {
        //将  id="userName"  的值放入 ss 中
        var ss = $("#userName").val();
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("")
        $.ajax({
            //请求类型为：POST
            type:"POST",
            // 把请求发送到user  中的  getUserFlag() 方法
            url:"${pageContext.request.contextPath}/user/getUserFlag",
            //映射或字符串值。规定连同请求发送到服务器的数据
            data:{"userName":ss},
            //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
            dataType:"json",
            //请求成功时执行的回调函数。
            success:function (obj) {
                $("#flag1").text(obj.message1)
                // $("#flag1").append("<span class='glyphicon glyphicon-leaf' >"+obj.message1+"</span>")
            }
        })
    }

    function toRegister() {
        location.href="${pageContext.request.contextPath}/jsp/frontend/loginorregister/register.jsp";
    }

    <%--function toAdmin() {--%>
        <%--location.href="${pageContext.request.contextPath}/jsp/admin/login.jsp";--%>
    <%--}--%>
</script>
<body>
<%--<p><h6><button onclick="toAdmin()">管理员入口</button></h6></p>--%>
<p><hr></p>
    <form action="${pageContext.request.contextPath}/user/userLogin" method="post">
        <input type="text" id="userName" name="userName" value="${userName}" onmouseleave="getUserFlag()" placeholder="请输入用户名"><span id="flag1"></span><%--<div id="flag1"></div>--%><br>
        <input type="password" name="password" placeholder="请输入密码"><span id="flag2"></span><br>
        <input type="submit" value="登录">
        <input type="button" onclick="toRegister()" value="没账号？去注册">
    </form>
</body>
</html>
    
