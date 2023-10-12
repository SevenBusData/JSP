<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/12
  Time: 00:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>choose、when、otherwise标签</title>
</head>
<body>
<%--
    choose、when、otherwise标签:
        格式
            <c:choose>
                <c:when test="${表达式}">
                    <c:if test="${表达式}">
                        <c:out value="${表达式}"></c:out>
                    </c:if>
                </c:when>
                <c:otherwise>
                    <c:out value="${表达式}"></c:out>
                </c:otherwise>
            </c:choose>
        作用
            1.choose标签可以有多个when标签，当when标签的test属性为true时，执行when标签中的内容
            2.otherwise标签没有test属性，当choose标签中没有when标签的test属性为true时，执行otherwise标签中的内容
            3.when标签和otherwise标签可以有多个，但是只能有一个是执行的
        属性
            1.choose标签没有属性
            2.when标签只有一个test属性，必须属性
            3.otherwise标签没性
        注意:
            1.choose标签中必须要有when标签，而otherwise标签可以没有
            2.choose和oterwise标签没有属性，而when标签必须要有一个test属性
            3.otherwise标签必须设置在最后一个when标签之后
            4.choose标签中只能设置when标签和otherwise标签，而when标签和otherwise标签可以嵌套其他标签
            5.otherwise标签会在所有when标签都不执行的时候执行

--%>
    <%
        // 设置参数
        request.setAttribute("score", 80);
    %>
    <c:choose>
        <c:when test="${score > 90}">
                <h2>优秀</h2>
        </c:when>
        <c:when test="${score > 80}">
                <h2>良好</h2>
        </c:when>
        <c:when test="${score > 60}">
                <h2>及格</h2>
        </c:when>
        <c:otherwise>
                <h2>不及格</h2>
        </c:otherwise>
    </c:choose>

</body>
</html>
