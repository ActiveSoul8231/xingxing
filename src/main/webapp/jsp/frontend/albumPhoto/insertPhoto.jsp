<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<form action="${pageContext.request.contextPath}/photo/insertPhoto" method="post" enctype="multipart/form-data">
<%--    <input hidden="file" name="aId" value="${albumId}">--%>
    相册ID：****${albumId}****✧(≖ ◡ ≖✿ <br/>
<%--   这是相册ID--%>
    <input type="hidden" name="albumId" value="${albumId}">
    <input type="file" name="upload">
    <input type="submit" value="添加">
</form>
</body>
</html>