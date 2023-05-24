<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.mycom.myapp.pojo.CustomerInfo" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户信息管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        table {
            width: 500px;
            border: 1px solid cornflowerblue;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid cornflowerblue;
        }
    </style>
</head>
<body>
<h1>客户信息</h1>
<tr>
    <form method="GET" action="queryCustomerInfo">
        <label for="name">姓名:</label>
        <input type="text" id="name" name="name" value="${name}">
        <label for="phone">手机号:</label>
        <input type="text" id="phone" name="phone" value="${phone}">
        <input type="submit" value="搜索">
        <input type="reset" value="重置"
               onclick="location.href='${pageContext.request.contextPath}/customerInfo/toCustomerInfo'">
    </form>
</tr>
<br>
<table>
    <tr>
        <th>id</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>电话</th>
        <th>邮件</th>
        <th>国籍</th>
    </tr>
    <c:forEach items="${infoList}" var="customerInfo">
        <tr>
            <td>${customerInfo.id}</td>
            <td>${customerInfo.name}</td>
            <td>${customerInfo.gender}</td>
            <td>${customerInfo.age}</td>
            <td>${customerInfo.phone}</td>
            <td>${customerInfo.email}</td>
            <td>${customerInfo.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
