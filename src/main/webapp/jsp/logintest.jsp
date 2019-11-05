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
    function PhotoList() {
        location.href="${pageContext.request.contextPath}/photo/photoList";
    }
    function Label() {
        location.href="${pageContext.request.contextPath}/label/labelList";
    }
    function VIP() {
        location.href="${pageContext.request.contextPath}/vip/toVip";
    }
</script>
<body>
这是登录页面111111asdasdds
<input type="button" value="充值记录" onclick="toRecharge()">
<input type="button" value="消费记录" onclick="toConsumption()">
<input type="button" value="相册展示" onclick="toPhotoList()">
<input type="button" value="图片" onclick="PhotoList()">
<input type="button" value="标签" onclick="Label()">
<input type="button" value="会员开通页面" onclick="VIP()">

</body>
</html>