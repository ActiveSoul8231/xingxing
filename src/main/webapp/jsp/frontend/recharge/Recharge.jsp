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
    <title>cillcill-充值页面</title>
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

        location.href="${pageContext.request.contextPath}/recharge/recharge"

    }
    function toRecharge6() {
        if (confirm("确定要充值6元？")){
            location.href="${pageContext.request.contextPath}/R/Recharge6"
        }else {
            window.close();
        }
    }
    function toRecharge666() {
        if (confirm("确定要充值666元？")){
            location.href="${pageContext.request.contextPath}/R/Recharge666"
        }else {
            window.close();
        }
    }
    function toRecharge68() {
        if (confirm("确定要充值888元？")){
            location.href="${pageContext.request.contextPath}/R/Recharge888"
        }else {
            window.close();
        }
    }


</script>
<input type="button" class="btn btn-default btn-lg" value="充值6" onclick="toRecharge6()">
<input type="button" class="btn btn-default btn-lg" value="充值666" onclick="toRecharge666()">
<input type="button" class="btn btn-default btn-lg" value="充值888" onclick="toRecharge68()">


<form action="${pageContext.request.contextPath}/recharge/recharge" method="post"  enctype="multipart/form-data">
    <tr>
        <input type="hidden" name="id" value="${userid}">
        充值金额：<input type="text" name="rechargeAmount" placeholder="自定义C币数量(1—5000)">
        <input type="submit" class="btn btn-warning" value="充值">
    </tr>
</form>
</body>
</html>
