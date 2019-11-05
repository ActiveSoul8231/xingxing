<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加</title>
</head>

<body>
<form  action="${pageContext.request.contextPath}/label/addlabel"  method="post"  enctype="multipart/form-data">
    添加标签名称:<input type="text" name="labelName">
    <input type="submit" value="提交">

</form>

</body>
</html>
