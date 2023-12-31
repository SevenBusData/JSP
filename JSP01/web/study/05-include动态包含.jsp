<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/10
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include动态包含</title>
</head>
<body>
<%--
    include动态包含
        格式：
            <jsp:include page="要包含的页面路径"></jsp:include>
        特点:
            1.动态包含相当于方法的调用
            2.动态包含会生成多个源码文件
            3.可以定义同名变量
            4.效率高，耦合度低
        注：
            当动态包含不需要传递参数时，include双标签之间不要有任何内容，包括换行和空格
                <jsp:include page-"要包含的页面路径">
                    <jsp:param name="参数名" value="参数值"/>
                </jsp:include>

                注：name属性不支持表达式，value属性支持表示

                获取参数：
                    request.getParameter(name);通过指定参数名获取参数值
--%>
    <jsp:include page="04-header.jsp"></jsp:include>
    <h2>主题内容</h2>
    <%
        int num = 1;

        String str = "123456";
    %>
    <jsp:include page="04-footer.jsp">
        <jsp:param name="uname" value="admin"/>
        <jsp:param name="msg" value="<%=str%>"/>
    </jsp:include>
</body>
</html>
