<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/1 0001
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户列表</title>
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">

<%--数据表格--%>
    <link rel="shortcut icon" href="favicon.ico"> <link href="../../css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../../css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../../css/animate.css" rel="stylesheet">
    <link href="../../css/style.css?v=4.1.0" rel="stylesheet">

    <%--表单样式--%>
    <link href="../../css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="../../css/plugins/chosen/chosen.css" rel="stylesheet">

    <link href="../../css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="../../css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="../../css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href="../../css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="../../css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="../../css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="../../css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="../../css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="../../css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="../../css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="../../css/animate.css" rel="stylesheet">
    <link href="../../css/style.css?v=4.1.0" rel="stylesheet">

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        function deleteUser(id) {
            location.href="${pageContext.request.contextPath}/admin/deleteUser?id="+id;
        }
        function updateUserRecoveryFlag(id,recoveryFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateUserFlag?id="+id+"&recoveryFlag="+recoveryFlag;
        }
        function updateUserIceFlag(id,iceFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateUserFlag?id="+id+"&iceFlag="+iceFlag;
        }
        function updateUserDelFlag(id,delFlag) {
            // alert(id)
            location.href="${pageContext.request.contextPath}/admin/updateUserFlag?id="+id+"&delFlag="+delFlag;
        }

        window.onload = function () {
            var options = $("#pageSize").options;
            var pageSize = "${pageCountUtil.pageSize}"
            for (var i in options){
                if (options[i].value()==pageSize){
                    options[i].attr("selected",true);
                }
            }
        }
        function page(pageNow) {
            var pageSize = $("#pageSize option:selected").val();
            location.href="${pageContext.request.contextPath}/admin/userList?pageNow="+pageNow+"&pageSize="+pageSize;
        }

    </script>
</head>
<body class="gray-bg">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="dataTables_length" id="DataTables_Table_0_length">
                                <label>
                                    <%--每页显示多少条--%>
                                        每页
                                        <select id = "pageSize" onchange="page(${pageCountUtil.pageNow})">
                                            <option value="5">5</option>
                                            <option value="10">10</option>
                                        </select>条记录
                            </label>
                        </div>
                    </div>
                    <div class="col-sm-2">
                            <%--查询--%>
                            <form  method="get" action="${pageContext.request.contextPath}/admin/userList" role="form" class="form-inline">
                                <input type="text" placeholder="姓名/电话/邮箱" value="${selectByValue}" name="selectByValue">
                                <button type="submit"  class="btn btn-sm btn-primary pull-right m-t-n-xs">查询</button>
                            </form>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </div>

                <%--表格内容--%>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                            <tr>
                                <th>用户ID</th>
                                <th>用户账户</th>
                                <th>用户密码</th>
                                <th>用户昵称</th>
                                <th>个性签名</th>
                                <th>出生年月</th>
                                <th>用户性别</th>
                                <td>用户头像</td>
                                <th>回收状态</th>
                                <th>冻结状态</th>
                                <th>封号状态</th>
                                <%--<th>余额查询</th>--%>
                                <th>C币</th>
                                <th>节操值</th>
                                <th>电话号码</th>
                                <th>邮箱</th>
                                <th>功能</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${userList}" var="user">
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.userNum}</td>
                                    <td>${user.password}</td>
                                    <td>${user.userName}</td>
                                    <td>${user.userContext}</td>
                                    <td>${user.userBirthday}</td>
                                        <%--        <td>${user.userSex}</td>--%>
                                    <c:if test="${user.userSex eq '0'}">
                                        <td>女</td>
                                    </c:if>
                                    <c:if test="${user.userSex eq '1'}">
                                        <td>男</td>
                                    </c:if>
                                    <c:if test="${user.userSex eq '2'}">
                                        <td>保密</td>
                                    </c:if>
                                    <td><img class="img-circle" width="30px" height="30px" src="${user.userImg}"/></td>
                                        <%--    c:if 中test值 eq 后char类型需要用对应的编码值来判断
                                        '0'对应的编码是48,'1'对应的编码是49   --%>
                                        <%--回收状态--%>
                                    <c:if test="${user.recoveryFlag eq '0'}">
                                        <td>未回收</td>
                                    </c:if>
                                    <c:if test="${user.recoveryFlag eq '1'}">
                                        <td>已回收</td>
                                    </c:if>
                                        <%--冻结状态--%>
                                    <c:if test="${user.iceFlag eq '0'}">
                                        <td>未冻结</td>
                                    </c:if>
                                    <c:if test="${user.iceFlag eq '1'}">
                                        <td>已冻结</td>
                                    </c:if>
                                        <%--封号状态--%>
                                    <c:if test="${user.delFlag eq '0'}">
                                        <td>未封号</td>
                                    </c:if>
                                    <c:if test="${user.delFlag eq '1'}">
                                        <td>已封号</td>
                                    </c:if>
                                    <td>${user.cMoney}</td>
                                    <td>${user.userJc}</td>
                                    <td>${user.userTelephoneNum}</td>
                                    <td>${user.userEmail}</td>
                                    <td>
                                            <%--修改回收状态--%>
                                                <c:if test="${user.recoveryFlag eq '0'}">
                                                    <input  class="btn btn-warning" type="button" onclick="updateUserRecoveryFlag(${user.id},${user.recoveryFlag})" value="回收">
                                                </c:if>
                                                <c:if test="${user.recoveryFlag eq '1'}">
                                                    <input  class="btn btn-danger" type="button" onclick="updateUserRecoveryFlag(${user.id},${user.recoveryFlag})" value="拒收">

                                                </c:if>
                                            <%--冻结状态--%>
                                                <c:if test="${user.iceFlag eq '0'}">
                                                    <input class="btn btn-warning" type="button" onclick="updateUserIceFlag(${user.id},${user.iceFlag})" value="冻结">
                                                </c:if>
                                                <c:if test="${user.iceFlag eq '1'}">
                                                    <input  class="btn btn-danger" type="button" onclick="updateUserIceFlag(${user.id},${user.iceFlag})" value="解冻">
                                                </c:if>
                                            <%--封号状态--%>
                                                <c:if test="${user.delFlag eq '0'}">
                                                    <input class="btn btn-warning" type="button" onclick="updateUserDelFlag(${user.id},${user.delFlag})" value="封号">
                                                </c:if>
                                                <c:if test="${user.delFlag eq '1'}">
                                                    <input  class="btn btn-danger" type="button" onclick="updateUserDelFlag(${user.id},${user.delFlag})" value="解封">
                                                </c:if>
                                                <input class="btn btn-sm btn-primary" disabled="disabled" type="button" onclick="deleteUser(${user.id})" value="删除用户">
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--翻页--%>
    <nav aria-label="Page navigation">
        <ul class="pager">
            <li><input type="button" style="margin-left: 65%" class="btn btn-default" value="首页" onclick="page(1)"></li>
            <li> <input type="button" class="btn btn-default" value="上一页" onclick="page(${pageCountUtil.pageNow-1})"></li>
            第${pageCountUtil.pageNow}页
            <li><input type="button" class="btn btn-default" value="下一页" onclick="page(${pageCountUtil.pageNow+1})"></li>
            <li><input type="button" class="btn btn-default" value="尾页" onclick="page(${pageCountUtil.pageEnd})"></li>
            共${pageCountUtil.pageEnd}页
        </ul>
    </nav>

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="https://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
