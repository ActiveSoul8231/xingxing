<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<table>
    <form  action="${pageContext.request.contextPath}/banner/bannerUpdate"  method="post"  enctype="multipart/form-data">
        <input type="hidden" name="id" value="${banner.id}">
        要修改的图片名称<input type="text" name="photosName" value="${banner.photosName}">
        要修改的跳转地址<input type="text" name="photosJumps" value="${banner.photosJumps}">
        要修改的图片<img src="${banner.photosAddress}">
        <input type="file" name="upload">
        <input type="submit" value="修改">
    </form>
</table>

</body>
</html>
