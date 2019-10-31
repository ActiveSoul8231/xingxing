<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/8 0008
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>去查看</title><script type="text/javascript">
    function showUser() {
        location.href="${pageContext.request.contextPath}/admin/getManagementVideo"
    }

</script>
</head>
<body>
<input type="button" onclick="showUser()" value="查看">
</body>
</html>
