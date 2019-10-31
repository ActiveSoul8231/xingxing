    <%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <html>
        <head>
        <title>一级菜单查询</title>
        </head>
        <script type="text/javascript">
        function pageList(pageNow) {
        location.href="${pageContext.request.contextPath}/menu/firstMenuSelect?pageNow="+pageNow;
        }
        function selectLike() {
        var menuName = $("#menuName").val();
        location.href="${pageContext.request.contextPath}/menu/firstMenuSelect?menuName="+menuName;
        }
        function toInsert() {
        location.href="${pageContext.request.contextPath}/menu/firstMenuToInsert";
        }
        function updateBanner(id) {
        location.href="${pageContext.request.contextPath}/menu/firstMenuToUpdate?id="+id;
        }
        function deleteBanner(id) {
        location.href="${pageContext.request.contextPath}/menu/firstMenuDelete?id="+id;
        }

        </script>
        <body>
        <input type="text"  id="menuName"  value="${menuName}"><input type="button" class="btn btn-default" value="查询" onclick="selectLike()">
        <input type="button" class="btn btn-default" value="添加" onclick="toInsert()">
        <table class="table table-striped table-bordered">
        <tr>
        <td>一级菜单Id</td>
        <td>菜单名称</td>
        <td>功能</td>
        </tr>
        <c:forEach var="oneMenu" items="${list}">
            <tr>
            <td>${oneMenu.id}</td>
            <td>${oneMenu.menuName}</td>
            <td>
            <input type="button" class="btn btn-default" value="修改" onclick="updateBanner(${oneMenu.id})">
            <input type="button" class="btn btn-default" value="删除" onclick="deleteBanner(${oneMenu.id})">
            </td>
            </tr>
        </c:forEach>
        </table>
        <input type="button" class="btn btn-default" value="首页" onclick="pageList(1)">
        <input type="button" class="btn btn-default" value="上一页" onclick="pageList(${pageCountUtil.pageNow-1})">
        <input type="button" class="btn btn-default" value="下一页" onclick="pageList(${pageCountUtil.pageNow+1})">
        <input type="button" class="btn btn-default" value="尾页" onclick="pageList(${pageCountUtil.pageEnd})">
        </body>
        </html>