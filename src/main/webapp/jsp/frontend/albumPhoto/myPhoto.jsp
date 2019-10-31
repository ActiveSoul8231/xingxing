<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="../../static/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    window.onload=function () {
        var pageSize = "${pageCountUtil.pageSize}"
        var options = $("#pageSize").find("option"); // select下所有的option
        for(var i in options){
            if(pageSize == options[i].value){
                $("#pageSize option[value="+pageSize+"]").attr("selected",true);
            }
        }
    }
    function page(pageNow) {
        var pageSize = $("#pageSize option:selected").val();
        location.href= "${pageContext.request.contextPath}/photo/photoList?pageNow="
            +pageNow+"&pageSize="+pageSize;
    }
    function insertPhoto() {
        location.href="${pageContext.request.contextPath}/photo/toInsertPhoto?albumId=${albumId}";
    }

    function updateObj(id) {

    }

    function deleteObj(id) {
        location.href="${pageContext.request.contextPath}/photo/deletePhoto?id="+id;
    }

    function selectObj() {
        var beginTime = $("#beginTime").val();
        var endTime = $("#endTime").val();
        var fileName = $("#fileName").val();
        location.href= "${pageContext.request.contextPath}/photo/photoList?beginTime="
            +beginTime+"&endTime="+endTime+"&fileName="+fileName;
    }
</script>
<body>
<input type="button" value="添加" onclick="insertPhoto()">
文件名称：<input type="text" id="fileName" value="${fileName}">
开始时间：<input class="Wdate" id="beginTime" value="${beginTime}" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyyMMdd'})">
结束时间：<input class="Wdate" id="endTime" value="${endTime}" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyyMMdd'})">
<input type="button" value="查询" onclick="selectObj()">
<%--相册ID：<input type="text" value="${albumList.id}">--%>
<table class="table">
    <tr>
        <td>照片</td>
        <td>上传时间</td>
        <td>文件名称</td>
        <td>功能</td>
    </tr>
    <c:forEach var="photo" items="${photoList}">
        <tr>
<%--            <td>${photo.id}</td>--%>
            <td><img height="55px" src="${photo.photoAddress}"></td>
            <td>${photo.uploadTime}</td>
            <td>${photo.fileName}</td>

            <td>
                <input type="button" value="修改" onclick="updateObj(${photo.id})">
                <input type="button" value="删除" onclick="deleteObj(${photo.id})">
                <a href="${pageContext.request.contextPath}/photo/download?id=${photo.id}">下载</a>
            </td>
        </tr>
    </c:forEach>
</table>
<select id = "pageSize" onchange="page(${pageCountUtil.pageNow})">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="10">10</option>
</select>
<input type="button" value="首页" onclick="page(1)">
<input type="button" value="上一页" onclick="page(${pageCountUtil.pageNow-1})">
${pageCountUtil.pageNow}
<input type="button" value="下一页" onclick="page(${pageCountUtil.pageNow+1})">
<input type="button" value="尾页" onclick="page(${pageCountUtil.pageEnd})">
共${pageCountUtil.pageEnd}页
</body>
</html>