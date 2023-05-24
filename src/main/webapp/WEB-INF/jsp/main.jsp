<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户管理系统</title>
</head>
<body>
<h1>欢迎来到客户管理系统, ${user.username}!</h1>
<%--<p>Your email is: ${user.email}</p>--%>
<div>
    <button onclick="location.href='${pageContext.request.contextPath}/customerInfo/toCustomerInfo'">客户信息</button>
    <button onclick="location.href='${pageContext.request.contextPath}/customerCategory/toCustomerCategory'">客户分类</button>
    <button onclick="location.href='${pageContext.request.contextPath}/customerConsumption/toCustomerConsumption'">信息推送</button>
</div>
<p><a href="${pageContext.request.contextPath}/user/logout">登出</a></p>
</body>
</html>
