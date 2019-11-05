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
        location.href="${pageContext.request.contextPath}/R/toRecharge"
    }
    function toUpdateTest() {
        location.href="${pageContext.request.contextPath}/C/updateConsumption";
    }
    function toDSTest1() {
        location.href="${pageContext.request.contextPath}/C/rewardConsumption1";
    }
    function toDSTest2() {
        location.href="${pageContext.request.contextPath}/C/rewardConsumption2";
    }
    function toPersonalWallet() {
        location.href="${pageContext.request.contextPath}/R/toPersonalWallet"
    }
</script>
</head>
<%--<body><input type="hidden" value="${集合.userId}" name="UpUserId"> --%>
<input type="button" class="btn btn-default btn-lg" value="打赏1硬币" onclick="toDSTest1()">
<input type="button" class="btn btn-default btn-lg" value="打赏2硬币" onclick="toDSTest2()">
<input type="button" class="btn btn-default btn-lg" value="修改测试" onclick="toUpdateTest()">
<input type="button" class="btn btn-default btn-lg" value="充值" onclick="toRecharge()"><br><br>

<form method="post" action="${pageContext.request.contextPath}/consumption/consumption">
    打赏任意金额<input type="text" name="consumptionAmount">
    <input type="submit" placeholder="自定义打赏金额(1—5000)" value="确定打赏">
</form>
</body>
</html>
