    <%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <html>
    <head>
    <title>Title</title>
    </head>
        <script type="text/javascript">

        function pageList(pageNow) {
        var menuId = "${oneMenuId}";
        location.href="${pageContext.request.contextPath}/menu/twoMenuSelect?pageNow="+pageNow+"&oneMenuId="+menuId;
        }
        function selectLike() {
        var menuId = "${oneMenuId}";
        var menu2Name = $("#menu2Name").val();
        location.href="${pageContext.request.contextPath}/menu/twoMenuSelect?menu2Name="+menu2Name+"&oneMenuId="+menuId;
        }
        function toInsert() {
        location.href="${pageContext.request.contextPath}/menu/twoMenuToInsert";
        }
        function toUpdateBanner(id) {
        location.href="${pageContext.request.contextPath}/videoOne/toUpdateTwoMenu?id="+id;
        }
        function deleteBanner(id) {
        location.href="${pageContext.request.contextPath}/menu/twoMenuDelete?id="+id;
        }
        function selectByOne() {
        var menuId = $("#oneMenuId option:selected").val();
        location.href="${pageContext.request.contextPath}/menu/twoMenuSelect?oneMenuId="+menuId;
        }
        window.onload=function () {
          var menuId = "${oneMenuId}";
            if(menuId != null){
              var numbers = $("#oneMenuId").find("option"); //获取select下拉框的所有值
                for (var j = 1; j < numbers.length; j++) {
            if ($(numbers[j]).val() == menuId) {
               $(numbers[j]).attr("selected", "selected");
              }
            }
          }

        }
        </script>
    <body>
    <input type="text"  id="menu2Name"  value="${menu2Name}"><input type="button" class="btn btn-default" value="查询" onclick="selectLike()">
    <select id="oneMenuId" onchange="selectByOne()">
    <option>--请选择--</option>
    <c:forEach items="${firstMenuList}" var="oneMenu">
        <option value="${oneMenu.id}">
        ${oneMenu.menuName}
        </option>
    </c:forEach>
    </select>
    <input type="button" class="btn btn-default" value="添加" onclick="toInsert()">
    <table class="table table-striped table-bordered">
    <tr>
    <td>二级菜单Id</td>
    <td>菜单名称</td>
    <td>功能</td>
    </tr>
    <c:forEach var="twoMenu" items="${twoMenuList}">
        <tr>
        <td>${twoMenu.id}</td>
        <td>${twoMenu.menu2Name}</td>
        <td>
        <input type="button" class="btn btn-default" value="修改" onclick="toUpdateBanner(${twoMenu.id})">
        <input type="button" class="btn btn-default" value="删除" onclick="deleteBanner(${twoMenu.id})">
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