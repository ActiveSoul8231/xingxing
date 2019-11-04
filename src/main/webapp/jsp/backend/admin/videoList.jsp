<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/7 0007
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>视频审核列表</title>
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
        function deleteVideo(id) {
            location.href="${pageContext.request.contextPath}/admin/deleteVideo?Vid="+id;
        }
        function toExamine(id,examineFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateFlag?Vid="+id+"&examineFlag="+examineFlag;
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
            location.href = "${pageContext.request.contextPath}/admin/getManagementVideo?pageNow="+pageNow+"&pageSize="+pageSize;
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
                            <%--模糊查询--%>
                            <form  method="post" action="${pageContext.request.contextPath}/admin/getManagementVideo">
                                <input type="text" placeholder="请输入您需要查找视频的名称 …" value="${selectByVideoName}" name="selectByVideoName">
                                <button type="submit"  class="btn btn-sm btn-primary pull-right m-t-n-xs">查询</button>
                            </form>
                        </div>
                        <div class="col-sm-4">

                        </div>
                    </div>
                </div>
                <div class="ibox-content">
                    <table  class="table table-striped table-bordered table-hover dataTables-example">
                        <tr>
                            <th>用户ID</th>
                            <th>视频名称</th>
                            <th>封面图片</th>
                            <th>视频地址</th>
                            <th>上传时间</th>
                            <th>审核状态</th>
                            <th>是否通过</th>
                            <th>操作</th>
                        </tr>

                        <c:forEach items="${managementVideoList}" var="management">
                            <tr>
                                <td>${management.userId}</td>
                                <td>${management.videoName}</td>
                                <td><img  width="50px" height="50px" src="${management.videoCover}"/></td>
                                <td><video style="width:100px;height: 80px;" src="${management.videoAddress}"/></td>
                                <td>${management.uploadTime}</td>
                                <c:if test="${management.examineFlag eq 48}">
                                    <td>未审核</td>
                                </c:if>
                                <c:if test="${management.examineFlag eq 49}">
                                    <td>已审核</td>
                                </c:if>
                                <c:if test="${management.auditPass eq 48}">
                                    <td>未查看</td>
                                </c:if>
                                <c:if test="${management.auditPass eq 49}">
                                    <td>通过</td>
                                </c:if>
                                <c:if test="${management.auditPass eq 50}">
                                    <td>驳回</td>
                                </c:if>
                                    <%--    c:if 中test值 eq 后char类型需要用对应的编码值来判断
                                    '0'对应的编码是48,'1'对应的编码是49   --%>
                                <td>
                                    <input class="btn btn-sm btn-primary"  type="button" onclick="deleteVideo(${management.id})" value="删除视频">
                                        <%--审核状态--%>
                                    <c:if test="${management.examineFlag eq 48}">
                                    <input  class="btn btn-outline btn-success" type="button" onclick="toExamine(${management.id},${management.examineFlag})" value="去审核页">
                                    </c:if>
                                    <c:if test="${management.examineFlag eq 49}">
                                    <input  class="btn btn-outline btn-success" type="button" onclick="toExamine(${management.id},${management.examineFlag})" value="取消审核">
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--分页--%>
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
</body>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="https://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</html>
