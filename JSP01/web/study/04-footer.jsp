<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/10
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>底部</title>
</head>
<body>
    <h2>底部内容</h2>
    <%
        int num = 10;

        //  获取动态包含传递的参数
        String uname = request.getParameter("uname");
        String msg = request.getParameter("msg");
        out.print(uname + "," + msg);
    %>
</body>
</html>
