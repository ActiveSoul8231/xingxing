<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<table>
    <form  action="${pageContext.request.contextPath}/label/labelUpdate"  method="post">
        <input type="hidden" name="id" value="${labelList.id}">
        要修改的标签名字<input type="text" name="labelName" value="${labelList.labelName}">
        <input type="submit" value="修改">
    </form>
</table>

</body>
</html>
