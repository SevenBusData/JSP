<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--通过taglib标签引入所需要的标签库--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>JSTL的使用</title>
    <%--
        JSTL的使用
            1、在pom文件中导入JSTL所需要的两个jar包
            2、在需要使用的标签库的JSP页面通过taglib标签引入指定库
    --%>
</head>
<body>
    <c:if test="${1 = 1}" >
        Hello JSTL
    </c:if>
</body>
</html>
