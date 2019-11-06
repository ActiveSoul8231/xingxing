<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
<body>
<form action="${pageContext.request.contextPath}/video/videoInsert" method="post" enctype="multipart/form-data">
<%--    <br>视频名称：<input type="text" name="videoName"></br>--%>
    <br>视频图片：<input type="file" name="upload"></br>
    <br>视频上传地址：<input type="file" name="upload"></br>
    <br><input value="上传" type="submit"/></br>
</form>
</body>
</html>
