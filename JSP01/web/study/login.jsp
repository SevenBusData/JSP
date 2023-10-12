<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 09:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    <form action="/JSP/LoginServlet" method="post">
        姓名：<input type="text" name="uname"> <br>
        密码：<input type="password" name="password"> <br>
        <button>登录</button> <br>
<%--        <span style="color: red; font-size: 12px"><%=request.getAttribute("msg")%></span>--%>
        <span style="color: red; font-size: 12px">${msg}</span>

    </form>
</body>
</html>
