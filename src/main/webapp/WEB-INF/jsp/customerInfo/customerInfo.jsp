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
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 1em;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 0.5em;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h1>客户信息</h1>
<tr>
    <form method="POST" action="queryCustomerInfo">
        <table>
            <label for="name">姓名:</label>
            <input type="text" id="name" name="name" value="${name}">
            <label for="phone">手机号:</label>
            <input type="text" id="phone" name="phone" value="${phone}">
            <input type="submit" value="搜索">
            <input type="submit" value="重置">
        </table>
    </form>
</tr>
<br>
<%--<form action="/deleteSelectedData" method="POST">--%>

    <table>
        <thead>
        <tr>
            <th><input type="checkbox" id="selectAll"></th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>电话</th>
            <th>邮件</th>
            <th>国籍</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${infoList}" var="customerInfo">
            <tr>
                <td>
                    <input type="checkbox" name="selectedIds" class="rowCheckbox" data-id="${customerInfo.id}">
                </td>
                <td>
                    <span class="text-field" name="name" value="${customerInfo.name}">${customerInfo.name}</span>
                </td>
                <td>
                    <span class="text-field" name="gender" value="${customerInfo.gender}">${customerInfo.gender}</span>
                </td>
                <td>
                    <span class="text-field" name="age" value="${customerInfo.age}">${customerInfo.age}</span>
                </td>
                <td>
                    <span class="text-field" name="phone" value="${customerInfo.phone}">${customerInfo.phone}</span>
                </td>
                <td>
                    <span class="text-field" name="email" value="${customerInfo.email}">${customerInfo.email}</span>
                </td>
                <td>
                    <span class="text-field" name="country"
                          value="${customerInfo.country}">${customerInfo.country}</span>
                </td>
                <td>
                    <form action="toUpdateOrAddCustomerInfo" method="post">
                        <input type="hidden" name="id" value="${customerInfo.id}">
                        <input type="submit" value="更新">
                    </form>
                    <form action="deleteCustomerInfo" method="post">
                        <input type="hidden" name="id" value="${customerInfo.id}">
                        <input type="submit" value="删除">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <button type="submit">删除选中项</button>
<%--</form>--%>
</body>
</html>
