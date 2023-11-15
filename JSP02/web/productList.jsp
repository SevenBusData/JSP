<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/11/15
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${empty requestScope.productList}">
        <h1>没有查询到数据</h1>
        <a href="/getProduce">获取数据</a>
    </c:if>
    <c:if test="${not empty requestScope.productList}">
      <table>
        <tr>
          <td>编号</td>
          <td>姓名/td>
          <td>价格</td>
        </tr>
        <c:forEach var="item" items="${requestScope.productList}">
          <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.price}</td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
</body>
</html>
