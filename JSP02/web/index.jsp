<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/11/1
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>作业</title>
  </head>
  <body>
    javaWeb.class
    <a href="/hello">请求一个servlet</a>

    <hr/>
    <h1>个人信息提交</h1>
    <form action="/userServlet" method="post">
      姓名：<input type="text" name="username" placeholder="姓名"/><br>
      密码：<input type="password" name="pwd" placeholder="密码"/><br>
      <input type="radio" name="gender" value="男" checked/>男
      <input type="radio" name="gender" value="女"/>女<br>
      <input type="checkbox" name="hobbies" value="football"/>足球
      <input type="checkbox" name="hobbies" value="basketball"/>篮球
      <input type="checkbox" name="hobbies" value="reading"/>阅读
      <input type="checkbox" name="hobbies" value="music"/>音乐<br>
      <input type="submit" value="提交">
    </form>
    <hr/>
  </body>
</html>
