<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/16
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
    <div style="text-align: center">
        <form action="/lp/login" method="post" id="loginForm">
            <label>姓名:</label>
            <input type="text" name="uname" id="uname" placeholder="请输入账号:" value="${messageModel.object.name}"> <br>
            <label>密码:</label>
            <input type="password" name="upwd" id="upwd" placeholder="请输入密码:" value="${messageModel.object.password}"> <br>
            <span style="font-size: 12px; color: red" id="msg">${messageModel.msg}</span> <br>
            <button type="button" id="loginBtn">登录</button> &nbsp;
            <button type="button" id="registerBtn">注册</button>
        </form>
    </div>
    <%--引入JS--%>
    <script src="./JS/jquery.js"></script>
    <script>
        $("#loginBtn").click(function () {
            let uname = $("#uname").val();
            let upwd = $("#upwd").val();
            if (isEmpty(uname)) {
                $("#msg").html("用户名输入不能为空!");
                return;
            }
            if (isEmpty(upwd)) {
                $("#msg").html("密码输入不能为空!");
                return;
            }
            $("#loginForm").submit();
        })

        /**
         * 判断字符串是否为空
         * @param str
         * @returns {boolean}
         */
        function isEmpty(str) {
            if (str == null || str.trim() == "") {
                return true;
            }
            return false;
        }
    </script>
</body>
</html>
