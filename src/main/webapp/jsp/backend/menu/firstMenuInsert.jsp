<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    function insertVerification() {
    var val = $("#menuName").val();
    $("#flag5").text("")
    $.ajax({
    type : "POST",
    url:"${pageContext.request.contextPath}/menu/getMenuName",
    data:{"menuName":val},
    dataType:"json",
    success : function(obj) {
    $("#flag5").text(obj.message)
    }
    })
    }
    function insertSubmitForm() {
    var str = "0";
    var text5 = $("#flag5").text();
    if (text5 != ""){
    str = "已拥有，请重新输入！"
    }
    if(str == "0"){
    $("#insertForm").submit();
    }else{
    alert(str);
    }
    }
    </script>
<body>
    <form id="insertForm" action="${pageContext.request.contextPath}/menu/firstMenuInsert" method="post">
    <input type="text" id="menuName" name="menuName" prefix="请填写视频类型" onmouseup="insertVerification()"><span id="flag5"></span><br>
    <input type="button" value="添加" onclick="insertSubmitForm()">
    </form>
</body>
</html>