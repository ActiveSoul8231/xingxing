<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function insertObj() {
        location.href="${pageContext.request.contextPath}/video/toVideoInsert";
    }
    function page(pageNow) {
        location.href="${pageContext.request.contextPath}/video/videoList?pageNow="+pageNow;
    }
    function LikeVideoList() {
        var  val=$("#videoName").val();
        location.href="${pageContext.request.contextPath}/video/videoList?videoName="+val;
    }
    function topVideo(id) {
        location.href="${pageContext.request.contextPath}/video/topVideo?id="+id;
    }
    function cancelTopVideo(id) {
        location.href="${pageContext.request.contextPath}/video/cancelTopVideo?id="+id;
    }

</script>
<body>
<input type="button" value="上传" onclick="insertObj()">
<input type="text" id="videoName">
<input type="button" value="查询" onclick="LikeVideoList()">
<table class="table">

    <tr>
        <td>视频id</td>
        <td>视频名称</td>
        <td>视频封面</td>
        <td>上传时间</td>
        <td>审核状态</td>
        <td>视频通过</td>
        <td>通过状态</td>
        <td>置顶状态</td>


    </tr>
<c:forEach var="video1" items="${videoList}">
    <c:if test="${video1.topFlag eq 49}">
        <tr>
        <td>${video1.id}</td>
        <td>${video1.videoName}</td>
        <c:if test="${video1.topFlag eq 49}">
            <td><img src="${video1.videoCover}" width="50px" height="50px"></img></td>
        </c:if>
        <td>${video1.uploadTime}</td>
        <td>${video1.examineFlag}</td>
        <td>${video1.auditPass}</td>
        <td>${video1.topFlag}</td>
        <c:if test="${video1.topFlag eq 49}">
            <td><button onclick="cancelTopVideo(${video1.id})">取消置顶</button> </td>
        </c:if>
        </tr>
    </c:if>
</c:forEach>

<%--    <tr>--%>
<%--        <td>视频id</td>--%>
<%--        <td>视频名称</td>--%>
<%--        <td>视频封面图片</td>--%>
<%--        <td>上传时间</td>--%>
<%--        <td>审核状态</td>--%>
<%--        <td>视频通过</td>--%>
<%--        <td>通过状态</td>--%>
<%--        <td>会员状态</td>--%>
<%--        <td>功能</td>--%>
<%--    </tr>--%>
    <c:forEach var="video" items="${videoList}">
        <c:if test="${video.topFlag eq 48}">
        <tr>
            <td>${video.id}</td>
            <td>${video.videoName}</td>
            <td><a href="${pageContext.request.contextPath}/video/onVideo?id=${video.id}"><img src="${video.videoCover}"width="50px" height="50px"></a></td>
            <td>${video.uploadTime}</td>
            <td>${video.examineFlag}</td>
            <td>${video.auditPass}</td>
            <td>${video.topFlag}</td>
            <c:if test="${video.topFlag eq 48}">
                <td><button onclick="topVideo(${video.id})">置顶</button> </td>
            </c:if>
        </tr>
        </c:if>
    </c:forEach>
</table>
<input type="button" value="首页" onclick="page(1)">
<input type="button" value="上一页" onclick="page(${pageCountUtil.pageNow-1})">
<input type="button" value="下一页" onclick="page(${pageCountUtil.pageNow+1})">
<input type="button" value="尾页" onclick="page(${pageCountUtil.pageEnd})">
</body>
</html>
