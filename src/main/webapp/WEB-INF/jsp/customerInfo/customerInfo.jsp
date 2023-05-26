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
            margin: 0 auto;
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

        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .top {
            height: 20%;
            background-color: #f2f2f2;
        }

        .bottom {
            height: 80%;
            background-color: #d9d9d9;
        }

        .button {
            width: 100px;
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 50px;
            margin-right: 50px;
            background: gainsboro;
        }

        .search-table {
            text-align: center;
        }
    </style>
</head>
<body>
<!-- 导航栏 -->
<%@ include file="../navbar.jsp" %>
<div class="top">
    <table>
        <tr>
            <form method="POST" action="queryCustomerInfo">
                <h1 style="text-align: center">客户信息</h1>
                <table class="search-table">
                    <label for="name">姓名:</label>
                    <input type="text" id="name" name="name" value="${name}">
                    <label for="phone">手机号:</label>
                    <input type="text" id="phone" name="phone" value="${phone}">
                </table>
                <table>
                    <input class="button" type="submit" value="搜索">
                    <input class="button" type="submit" value="重置">
                </table>
            </form>
        </tr>
    </table>
</div>
<div class="bottom">
    <button onclick="location.href='${pageContext.request.contextPath}/customerInfo/toUpdateOrAddCustomerInfo'">新增客户</button>
    <table>
        <thead>
        <tr>
            <th><input type="checkbox" id="selectAll"></th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>电话</th>
            <th>邮件</th>
            <th>收入</th>
            <th>国籍</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${infoList}" var="customerInfo">
            <tr>
                <td colspan="1">
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
                    <span class="text-field" name="email" value="${customerInfo.income}">${customerInfo.income}</span>
                </td>
                <td>
                    <span class="text-field" name="country"
                          value="${customerInfo.country}">${customerInfo.country}</span>
                </td>
                <td colspan="2">
                    <form action="toUpdateOrAddCustomerInfo" method="post" style="display: inline-block">
                        <input type="hidden" name="id" value="${customerInfo.id}">
                        <input type="submit" value="更新" style="display: inline-block">
                    </form>
                    <form action="deleteCustomerInfo" method="post" style="display: inline-block">
                        <input type="hidden" name="id" value="${customerInfo.id}">
                        <input type="submit" value="删除">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <button type="button" id="deleteSelected">批量删除</button>

    <script type="text/javascript">
        // 全选或取消全选当前页面的所有复选框
        document.getElementById('selectAll').addEventListener('change', function () {
            var checkboxes = document.querySelectorAll('.rowCheckbox');
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = this.checked;
            }
        });

        // 删除当前页面中所有被选中的复选框所对应的行
        document.getElementById('deleteSelected').addEventListener('click', function () {
            var checkboxes = document.querySelectorAll('.rowCheckbox:checked');
            var ids = [];
            for (var i = 0; i < checkboxes.length; i++) {
                ids.push(checkboxes[i].dataset.id);
            }
            if (ids.length > 0) {
                if (confirm('确定要删除这些记录吗？')) {
                    // 提交删除请求
                    var form = document.createElement('form');
                    form.method = 'POST';
                    form.action = 'deleteCustomerInfoBatch';
                    for (var i = 0; i < ids.length; i++) {
                        var input = document.createElement('input');
                        input.type = 'hidden';
                        input.name = 'ids';
                        input.value = ids[i];
                        form.appendChild(input);
                    }
                    document.body.appendChild(form);
                    form.submit();
                }
            } else {
                alert('请先选择要删除的记录！');
            }
        });
    </script>

</div>


</body>
</html>
