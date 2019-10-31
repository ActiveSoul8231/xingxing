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
    function insertObj() {

    }

    function updateObj(id) {

    }

    function deleteObj(id) {

    }

    function page(pageNow) {

    }
</script>
<body>
<input type="button" value="添加" onclick="insertObj()">
<table>
    <tr>
        <td>序号</td>
        <td>充值金额</td>
        <td>充值时间</td>
        <td>功能</td>
    </tr>
    <c:forEach var="li" items="${list}">
        <tr>
            <td>${li.id}</td>
            <td>${li.rechargeAmonunt}</td>
            <td>${li.rechargeTime}</td>
            <td>
                <input type="button" value="修改" onclick="updateObj(${li.id})">
                <input type="button" value="删除" onclick="deleteObj(${li.id})">
            </td>
        </tr>
    </c:forEach>
</table>
<%--<input type="button" value="首页" onclick="page(1)">
<input type="button" value="上一页" onclick="page(${})">
<input type="button" value="下一页" onclick="page(${})">
<input type="button" value="尾页" onclick="page(${})">--%>
</body>
</html>