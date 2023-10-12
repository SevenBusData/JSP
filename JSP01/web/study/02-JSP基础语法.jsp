<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/10
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<pre>
    JSP中一种有两种类型的注释:
        1、显示注释：
            能够在客户端查看的注释
            1、继承html风格的注释   &lt;!--注释--&gt;
                <!-- HTML注释 --->
        2、隐形注释
            不能够在客户端查看的注释
            1、继承JSP风格的注释  &lt;%-- JSP注释 --%&gt;
                <%-- JSP注释 --%>
            2、继承Java风格的注释
                // 单行注释
                /* 多行注释 */
</pre>

<%-- Java脚本段--%>
<%
    //  这是单行注释
    /*  这是多行注释  */
%>
</body>
</html>
