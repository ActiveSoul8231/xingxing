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
    function insertAlbum(aId) {
        location.href="${pageContext.request.contextPath}/album/toInsertAlbum?aId="+aId;
    }

    function updateObj(id) {

    }

    function deleteAlbum(id) {
        location.href="${pageContext.request.contextPath}/album/deleteAlbum?id="+id;

    }
    function toAlbumPhoto(id) {
        location.href="${pageContext.request.contextPath}/album/albumPhoto?id="+id;/*albumId*/

    }

    function page(pageNow) {

    }
</script>

<body>
<input type="button" value="添加一个相册" onclick="insertAlbum(${album.id})"><br>

<c:forEach var="album" items="${albumList}">
    <tr>
        <td>相册号：${album.id}</td><br>
        <td>相册名字：${album.albumName}</td><br>
        <td><img src="${album.photo.photoAddress}" width="500" height="500"  onclick="toAlbumPhoto(${album.id})"/><br></td>
        <td>
            <input type="button" value="删除" onclick="deleteAlbum(${album.id})"><br>
        </td>
    </tr>
</c:forEach>

</body>
</html>