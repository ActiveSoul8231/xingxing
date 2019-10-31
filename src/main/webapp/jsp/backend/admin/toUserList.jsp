<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/2 0002
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<script type="text/javascript">
    function showUser() {
        location.href="${pageContext.request.contextPath}/admin/userList"
    }

</script>
<html>
<head>
    <title>Title</title>
</head>
<body>

<input type="button" onclick="showUser()" value="查看">
</body>
</html>
