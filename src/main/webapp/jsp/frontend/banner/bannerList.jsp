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
        location.href="${pageContext.request.contextPath}/banner/insertBanner"
    }

    function updateBanner(id) {
        location.href="${pageContext.request.contextPath}/banner/bannerToUpdate?id="+id;
    }
    function deleteBanner(id) {
        location.href="${pageContext.request.contextPath}/banner/bannerDelete?id="+id;
    }
    function bannerLike() {
        var val=$("#bannerName").val();
        location.href="${pageContext.request.contextPath}/banner/BannerList?bannerLikeName="+val;
    }
</script>
<body>
<input type="button" value="添加" onclick="insertObj()">
<input type="text" id="bannerName">
<button onclick="bannerLike()">模糊查询</button>
<table class="table table-hover" id="addressTable" >
    <caption>轮播图列表</caption>
    <thead>
    <tr>
        <th>序号</th>
        <th>图片名称</th>
        <th>跳转地址</th>
        <th>图片</th>
        <th>上传时间</th>
        <th>功能</th>
    </tr>
    <c:forEach items="${bannerList}" var="b">
        <tr>
        <td>${b.id}</td>
        <td>${b.photosName}</td>
         <td>${b.photosJumps}</td>
        <td><img src="${b.photosAddress}" height="80px" width="50px"></td>
         <td>${b.photosUploadTime}</td>
        <td>
            <input type="button" value="修改" onclick="updateBanner(${b.id})">
            <input type="button" value="删除" onclick="deleteBanner(${b.id})">
        </td>
        </tr>
    </c:forEach>


    </thead>

</table>
</body>
</html>