<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
   <head>
     <title>二级菜单添加</title>
   </head>
   <body>
   <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

   <form method="post" action="${pageContext.request.contextPath}/menu/twoMenuInsert">
        菜单名称：<input type="text" name="menu2Name"><br>
        所属分类：<select name="menuName">
        <c:forEach items="${list}" var="list">
            <option value="${list.id}">
            ${list.menuName}
            </option>
        </c:forEach>
        </select>
      <input type="submit" value="添加">
    </form>
  </body>
</html>
