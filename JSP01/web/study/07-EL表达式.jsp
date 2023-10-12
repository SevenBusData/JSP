<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
<%--
    EL表达式
      作用：
          简化JSP代码
      格式
          ${域对象的名称}
      操作对象：
          EL表达式一般操作的是域对象，不能操作局部变量。
      操作范围：
          page范围
              在当前页面
          request范围
              在一次请求
          session范围
              在一次会话
          application范围
              在整个应用程序

      注意事项：
          1. 如果el表达式获取域对象的值为空，默认显示空字符串
          2. e1表达式默认从小到大范围去找，找到即可，如果四个范围都未找到，则显示空字符串

--%>


    <%--  设置数据  --%>
    <%
      //  设计page范围的域对象
      pageContext.setAttribute("name", "seven");
      //  设计request范围的域对象
      request.setAttribute("name", "felicia");
      //  设计session范围的域对象
      session.setAttribute("name", "feliven");
      //  设计application范围的域对象
      application.setAttribute("name", "liyue ");


      String str = "Hello";
    %>


    <%--  获取数据  --%>
    获取局部变量: ${str} <br>
    获取域变量: ${name} <br>
    获取指定范围的域对象: <br>
    &nbsp;&nbsp;page域对象: ${pageScope.name} <br>
    &nbsp;&nbsp;request域对象: ${requestScope.name} <br>
    &nbsp;&nbsp;session域对象: ${sessionScope.name} <br>
    &nbsp;&nbsp;application域对象: ${applicationScope.name} <br>


</body>
</html>
