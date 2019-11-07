<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加</title>
</head>

<body>
<form  action="${pageContext.request.contextPath}/banner/bannerAdd"  method="post"  enctype="multipart/form-data">
    添加图片名称<input type="text" name="photosName">
    添加图片跳转地址<input type="text" name="photosJumps">
    添加图片<input type="file" name="upload">
    <input type="submit" value="提交">
</form>

</body>
</html>
