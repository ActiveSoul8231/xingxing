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
    <form method="post" action="${pageContext.request.contextPath}/menu/firstMenuUpdate">
    <input type="hidden" name="id" value="${firstMenu.id}">
    菜单名称：<input type="text" name="menuName" value="${firstMenu.menuName}"><br>
    <input type="submit" value="修改">
    </form>
</body>
</html>