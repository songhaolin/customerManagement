<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/5/23
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>新增/编辑客户信息</title>
</head>
<body >
<center>
    <form id="form" name="form" method="post" action="${pageContext.request.contextPath}/customerInfo/updateOrAddCustomerInfo">
        <table width="500" height="95" border="0" cellpadding="0" cellspacing="1" style="background-color: #3A8ECD; color: #000;"><tr>
            <tr hidden="hidden">
                <td ><input name="id" type="text" size="10" value="${customerInfo.id}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">姓名：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="name" type="text" size="20" value="${customerInfo.name}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">性别：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="gender" type="text" size="20" value="${customerInfo.gender}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">年龄：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="age" type="text" size="20" value="${customerInfo.age}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">电话：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="phone" type="text" size="20" value="${customerInfo.phone}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">邮件：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="email" type="text" size="20" value="${customerInfo.email}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">收入：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="income" type="text" size="20" value="${customerInfo.income}"/></td>
            </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">国籍：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="country" type="text"  size="20" value="${customerInfo.country}"/></td>
            </tr>
            <tr>
                <td height="30" colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">
                    <input type="submit" name="button" id="button" value="提交" />&nbsp;&nbsp;
                    <input type="reset" name="button2" id="button2" value="返回" /></td>
            </tr>
        </table>
    </form>
    <label style="color: #3A8ECD">${errormessage}</label>
</center>
</body>
</html>
