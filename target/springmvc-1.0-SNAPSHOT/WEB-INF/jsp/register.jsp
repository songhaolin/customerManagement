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
    <title>Title</title>
</head>
<body>
<center>
    <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/user/register">
        <table width="500" height="95" border="0" cellpadding="0" cellspacing="1" style="background-color: #3A8ECD; color: #000;"><tr>
        <tr>
            <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">用户名：</td>
            <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                <input name="username" type="text" size="10" /></td>
        </tr>
            <tr>
                <td width="114" height="30" align="right" valign="middle" bgcolor="#FFFFFF">密码：</td>
                <td width="227" height="20" align="left" valign="middle" bgcolor="#FFFFFF">
                    <input name="password" type="text" size="10" /></td>
            </tr>
            <tr>
                <td height="30" colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><input type="submit" name="button" id="button" value="注册" />&nbsp;&nbsp;
                    <input type="reset" name="button2" id="button2" value="重置" /></td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
