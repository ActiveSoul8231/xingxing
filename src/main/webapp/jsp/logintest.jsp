<%--
  Created by IntelliJ IDEA.
  User: baiziming
  Date: 2019/10/23 0023
  Time: 17:42
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function toRecharge() {
        location.href="${pageContext.request.contextPath}/recharge/rechargeList";
    }
    function toConsumption() {
        location.href="${pageContext.request.contextPath}/consumption/consumptionList";
    }
    function toPhotoList() {
        location.href="${pageContext.request.contextPath}/album/albumList";
    }

    function DynamicList() {
        location.href="${pageContext.request.contextPath}/dynamic/dynamicList";
    }
</script>
<body>
这是登录页面111111asdasdds
<input type="button" value="充值记录" onclick="toRecharge()">
<input type="button" value="消费记录" onclick="toConsumption()">
<input type="button" value="相册展示" onclick="toPhotoList()">

<input type="button" value="我的动态" onclick="DynamicList()">
</body>
</html>