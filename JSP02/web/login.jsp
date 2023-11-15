<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/11/8
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/judgeServlet" method="post">
  姓名：<input type="text" name="username" placeholder="姓名"/><br>
  密码：<input type="password" name="pwd" placeholder="密码"/><br>
  <input type="submit" value="登录"/>
</form>
</body>
</html>
