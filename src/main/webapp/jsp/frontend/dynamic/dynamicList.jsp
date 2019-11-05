<!--我的动态-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的动态</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <!-- head 中 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <script type="text/javascript">
        function showDynamic() {
            location.href="../dynamic/showDynamicList";
        }
        function insertAlbum(aId) {
            location.href="${pageContext.request.contextPath}/album/toInsertAlbum?aId="+aId;
        }

    </script>
</head>
<style type="text/css">
    .one{margin-left: 160px; resize:none;}
    .two{margin-left: 160px; resize:none;}
    .tree{margin-left: 160px; resize:none;}
    .weui-cell{border: 1px solid #666; width: 1000px;}
</style>


<body>

<center>
    <form method="post" action="${pageContext.request.contextPath}/dynamic/addDynamic"  method="post" enctype="multipart/form-data" >
        <div class="weui-cell">
            <textarea class="weui-textarea" id="ActivityParticipationProcess" name="dynamicContent" placeholder="有什么想和大家分享的？" rows="5" oninput="OnInput (event,255,'count')" onpropertychange="OnPropChanged (event,255,'count')"></textarea>
            <div class='weui-textarea-counter'><span id="count"></span>/255</div>
        </div>
        <input type="file" name="upload">
        <input type="submit" value="发布">
    </form>
</center><br>
<%--    <button onclick="showDynamic()" value="显示动态">显示全部</button>--%>
<c:forEach var="dynamic" items="${dynamicList}">
    <p class="one">${dynamic.dynamicDate}</p>
    <p class="two"><tr class="weui-textarea" name="dynamicContent" style="border-style:none">${dynamic.dynamicContent}</tr></p>
    <p class="tree"><img height="200px" src="${dynamic.dynamicPhotosAddress}"></p><br>
</c:forEach>
</body>
<!-- body 最后 -->
<script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
<script>
    $("#count").html("0");//初始化字数计数器

    /* 此方法兼容大部分浏览器，如：Firefox, Google Chrome, Opera, Safari, Internet Explorer from version 9
    监听输入框字数变化*/
    function OnInput(event, length, id) {

        if(event.srcElement.value.length <= length) {
            $("#" + id).html(event.srcElement.value.length);
        } else {
            $.toptip("内容过长，最多" + length + "字", 'warning');
            /*获取输入框id值*/
            var id2 = event.srcElement.id;
            /*超出规定长度后禁止继续输入*/
            var value = event.srcElement.value.substring(0, length);
            $("#" + id2).val(value);
        }

    }
    // 此方法仅适用于IE浏览器
    function OnPropChanged(event, length, id) {

        if(event.srcElement.value.length <= length) {
            $("#" + id).html(event.srcElement.value.length);
        } else {
            $.toptip("内容过长，最多" + length + "字", 'warning');
            /*获取输入框id值*/
            var id2 = event.srcElement.id;
            /*超出规定长度后禁止继续输入*/
            var value = event.srcElement.value.substring(0, length);
            $("#" + id2).val(value)
        }
    }
</script>
</html>