<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 08:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP四大域对象</title>
</head>
<body>
    <%--
        JSP的四大域对象
            page作用域
                在当前页面有效，跳转后无效
            request作用域
                在一次请求中有效，服务端跳转有效，客户端跳珠失效
            session作用城
                在一次会话中有效，服务端和客户端跳转有效
            application作用域
                在整个应用中有效
            JSP中跳转方式
                1,服务端跳转
                    <jsp:forward page-"跳转的地址"></jsp:forward>
                2.客户端跳转
                    超链接

    --%>
    <%
        //  设计page范围的域对象
        pageContext.setAttribute("name1", "seven");
        //  设计request范围的域对象
       request.setAttribute("name2", "felicia");
        //  设计session范围的域对象
        session.setAttribute("name3", "feliven");
        //  设计application范围的域对象
        application.setAttribute("name4", "liyue ");
    %>

    <%--  jsp服务端跳转 --%>
<%--    <jsp:forward page="06-JSP四大域对象获取对象.jsp"/>--%>
    <%--  jsp客户端跳转  --%>
        <a href="06-JSP四大域对象获取对象.jsp">跳转页面</a>
</body>
</html>
