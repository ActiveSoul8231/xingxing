<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function tovip1() {
        location.href="${pageContext.request.contextPath}/vip/toVip1";
    }
    function tovip12() {
        location.href="${pageContext.request.contextPath}/vip/toVip12";
    }



</script>
<body>
<input type="button" class="btn btn-default btn-lg" value="开通1个月" onclick="tovip1()">
<input type="button" class="btn btn-default btn-lg" value="开通12个月" onclick="tovip12()">


<form action="${pageContext.request.contextPath}/vip/vipsj" method="post"  enctype="multipart/form-data">
    <tr>
        自定义开通时间：<input type="text" name="vipTime" placeholder="自定义开通时长(月为单位,最多不能超过120个月)">
        <input type="submit" class="btn btn-warning" value="开通">
    </tr>
</form>
</table>
</body>
</html>
