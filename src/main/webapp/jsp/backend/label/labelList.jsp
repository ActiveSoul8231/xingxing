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
        location.href="${pageContext.request.contextPath}/label/insertLabel";


    }

    function updateObj(id) {
        location.href="${pageContext.request.contextPath}/label/updateLabel?id="+id;

    }

    function deleteObj(id) {
        location.href="${pageContext.request.contextPath}/label/deleteLabel?id="+id;

    }
    function labelLike() {
        var val=$("#labelName").val();
        location.href="${pageContext.request.contextPath}/label/labelList?labelName="+val;
    }
    function page(pageNow) {
        location.href="${pageContext.request.contextPath}/label/labelList?pageNow="+pageNow+"&pageSize="+10;
    }
</script>
<body>
<input type="button" value="添加" onclick="insertObj()">
<input type="text" id="labelName">
<button onclick="labelLike()">模糊查询</button>
<table>
    <tr>
        <td>序号</td>
        <td>标签名称</td>
        <td>功能</td>
    </tr>
    <c:forEach var="li" items="${labelList}">
        <tr>
            <td>${li.id}</td>
            <td>${li.labelName}</td>

            <td>
                <input type="button" value="修改" onclick="updateObj(${li.id})">
                <input type="button" value="删除" onclick="deleteObj(${li.id})">
            </td>
        </tr>
    </c:forEach>
</table>
<input type="button" value="首页" onclick="page(1)">
<input type="button" value="上一页" onclick="page(${pageNow-1})">
<input type="button" value="下一页" onclick="page(${pageNow+1})">
<input type="button" value="尾页" onclick="page(${pageEnd})">
</body>
</html>