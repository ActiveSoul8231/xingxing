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
        location.href="${pageContext.request.contextPath}/recharge/toRecharge"
    }

    function updateObj(id) {

    }
    $(function()
    {
        $("#showAllAddress").click(function()
        {
            if($(this).val()=="显示更多")
            {
                $(".changeTr").removeAttr("style");
                $("#showAllAddress").attr("value","收起");
            }
            else
            {
                $(".changeTr").css("display","none");
                $("#showAllAddress").attr("value","显示更多");
            }
        });
    });
</script>
<body>
<input type="button" value="充值" onclick="insertObj()">
<table class="table table-hover" id="addressTable" >
    <caption>充值记录</caption>
    <thead>
    <tr>
        <th>序号</th>
        <th>充值金额</th>
        <th>充值时间</th>
    </tr>
    </thead>
    <c:set var="i" value="0"></c:set>
    <c:forEach items="${rechargeList}" var="recharge">
        <c:set var="i" value="${i+1}"/>
        <c:if test="${i<6}">
            <c:if test="${i==1}">
                <tbody>
                <tr>
                    <td>${recharge.id}</td>
                    <td>${recharge.rechargeAmonunt}</td>
                    <td>${recharge.rechargeTime}</td>
                </tr>
                </tbody>
            </c:if>
            <c:if test="${i!=1}">
                <tbody>
                <tr>
                    <td>${recharge.id}</td>
                    <td>${recharge.rechargeAmonunt}</td>
                    <td>${recharge.rechargeTime}</td>
                </tr>
                </tbody>
            </c:if>
        </c:if>
        <c:if test="${i>=6}">
            <tbody>
            <tr style="display: none;" class="changeTr">
                <td>${recharge.id}</td>
                <td>${recharge.rechargeAmonunt}</td>
                <td>${recharge.rechargeTime}</td>
            </tr>
            </tbody>
        </c:if>
    </c:forEach>
    <tbody>
    <tr>
        <c:set var="length" value="${rechargeLength}"/>
        <c:if test="${length>5}">
            <td colspan="5" align="right"><input type="button" class="btn btn-warning" value="显示更多" id="showAllAddress"></td>
        </c:if>
    </tr>
    </tbody>
</table>
</body>
</html>