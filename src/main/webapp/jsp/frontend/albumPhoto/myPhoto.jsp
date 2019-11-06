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

    function page(pageNow) {
        var pageSize = $("#pageSize option:selected").val();
        location.href= "${pageContext.request.contextPath}/album/albumPhoto?pageNow="
            +pageNow+"&pageSize="+pageSize;
    }
    function insertPhoto() {
        location.href="${pageContext.request.contextPath}/photo/toInsertPhoto?albumId=${albumId}";
    }

    function deleteObj(id) {
        var albumId = $("#albumId").val();
        location.href="${pageContext.request.contextPath}/photo/deletePhoto?id="+id+"&albumId="+albumId;
    }

</script>
<body>
<input type="hidden" id="albumId" value="${albumId}">
<input type="button" value="添加" onclick="insertPhoto()">

<%--相册ID：<input type="text" value="${albumList.id}">--%>
<table class="table">
    <tr>
        <td>照片</td>
        <td>上传时间</td>
        <td>文件名称</td>
        <td>功能</td>
    </tr>
    <div align="center">
    <c:forEach var="photo" items="${photoList}">

        <tr>
<%--           <td>${photo.id}</td>--%>
            <td><img height="233px" src="${photo.photoAddress}"></td>
            <td>${photo.uploadTime}</td>
            <td>${photo.fileName}</td>

            <td>
                <input type="button" value="删除" onclick="deleteObj(${photo.id})">
                <a href="${pageContext.request.contextPath}/photo/download?id=${photo.id}">下载</a>
            </td>
        </tr>

    </c:forEach>
    </div>
</table>

</body>
</html>