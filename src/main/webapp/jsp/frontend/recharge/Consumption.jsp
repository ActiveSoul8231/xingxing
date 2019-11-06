<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 21439
  Date: 2019/10/2
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>cillcill-消费页面</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<script  type="text/javascript">
    function toRecharge() {
        location.href="${pageContext.request.contextPath}/consumption/toRecharge"
    }
    function toConsumption30() {
        location.href="${pageContext.request.contextPath}/consumption/consumption3";
    }
    function toConsumption20() {
        location.href="${pageContext.request.contextPath}/consumption/consumption2";
    }
    function toPersonalWallet() {
        location.href="${pageContext.request.contextPath}/recharge/toPersonalWallet"
    }
</script>
</head>
<%--<body><input type="hidden" value="${集合.userId}" name="UpUserId"> --%>
<input type="button" class="btn btn-default btn-lg" value="打赏30硬币" onclick="toConsumption30()">
<input type="button" class="btn btn-default btn-lg" value="打赏20硬币" onclick="toConsumption20()">
<input type="button" class="btn btn-default btn-lg" value="充值" onclick="toRecharge()"><br><br>

<form method="post" action="${pageContext.request.contextPath}/consumption/consumption">
    打赏任意金额<input type="text" name="consumptionAmount">
    <input type="submit" placeholder="自定义打赏金额(1—5000)" value="确定打赏">
</form>
</body>
</html>
