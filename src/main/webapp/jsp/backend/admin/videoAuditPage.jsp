<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/8 0008
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>
<head>
    <title>审核页面</title>
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
        function updateAuditPass(id,auditPass) {

            location.href = "${pageContext.request.contextPath}/admin/updateFlag?Vid="+id+"&auditPass="+auditPass;
        }
        function cancelExamine(id,examineFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateFlag?Vid="+id+"&examineFlag="+examineFlag;
        }

        
    </script>
</head>
<body class="gray-bg">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <a class="btn btn-outline btn-primary" href="javascript:history.go(-1)">返回</a>
                </div>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <tr>
                            <th>视频名称</th>
                            <th>视频封面图片</th>
                            <th>视频地址</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td>${managementVideo.videoName}</td><br/>
                            <td><img  width="60px" height="60px" src="${managementVideo.videoCover}"/></td>
                            <td>

                                <div class="icon">  <a id="link" href="#" style="cursor:hand;"><img  width="60px" height="60px" src="${managementVideo.videoCover}"/></a><!--定义模态框id="link"-->
                                    <!-------------------modal----https://www.cnblogs.com/nightnine/p/6211857.html--->
                                    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
                                        <!-------Bootstrap 模态框避免点击背景处关闭--------https://blog.csdn.net/gloomy_114/article/details/51611734-->
                                        <div class="modal-dialog" style="width: 832px; margin:10% auto;">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove-circle"></span></button>
                                                </div>
                                                <div class="modal-body">
                                                    <iframe width="770" height="480" frameborder="0" allowfullscreen=""></iframe>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-------------------modal------->
                                </div>
                            </td>
                            <td>
                                <input class="btn btn-warning" type="button" onclick="updateAuditPass(${managementVideo.id},<%="1"%>)" value="通过">
                                <input   class="btn btn-danger"  type="button" onclick="updateAuditPass(${managementVideo.id},<%="2"%>)" value="驳回">
                                <input   class="btn btn-danger"  type="button" onclick="cancelExamine(${managementVideo.id},<%="1"%>)" value="取消审核">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="https://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">
    //-------------------modal-------
    var src = "${Videos.videoAddress}";
    $('#link').click(function () {

        $('#myModal').modal('show');
        $('#myModal iframe').attr('src', src);
    });

    $('#myModal button').click(function () {
        $('#myModal iframe').removeAttr(src);
    });
    //-------------------modal------^

</script>
</body>
</html>
