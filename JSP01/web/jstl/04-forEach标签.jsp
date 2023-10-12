<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/12
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>forEach标签</title>
    <%--
        forEach标签
          格式：
          <c: forEach
              itens-"<object>"
              begin="<int>"
              end="<int>"
              step-"cint"
              var="<string>"
              varstatus="<string>">
          </c:forEach>
          属性：
              begin: 开始数
              end: 结束数
              step: 间隔数
              var: 限域变量名，用来接收当前遍历的成员
          1.迭代主体内容多次
              <c:forEach begin="开始数" end="结束数" step="间隔数" var="限域变量名">
              </c:forEach>
              相当于Java中for...int
              for (int i = 0; i < 10: i++) {
              }
          2,循环

    --%>
</head>
<body>
    <%--    迭代主体内容多次    --%>
    <c:forEach var="i" begin="1" end="10" step="2">
        ${i} &nbsp;
    </c:forEach>
</body>
</html>
