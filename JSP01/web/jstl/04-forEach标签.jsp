<%@ page import="com.feliven.domain.User" %>
<%@ page import="java.util.*" %><%--
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
              items: 要循环的数据（数组、List、Map等）
          1.迭代主体内容多次
              <c:forEach begin="开始数" end="结束数" step="间隔数" var="限域变量名">
              </c:forEach>
              相当于Java中for...int
              for (int i = 0; i < 10: i++) {
              }
          2. 循环
              <c:forEach items="要被循环的数据"  var="限域变量名">
              </c:forEach>
              相当于Java中的forEach
              for (Object item : items) {
              }
    --%>
</head>
<body>
    <%--    迭代主体内容多次    --%>
    <c:forEach var="i" begin="1" end="10" step="2">
        ${i} &nbsp;
    </c:forEach>
    <hr>
    <%--  循环  --%>
    <%
        List<String> lists = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            lists.add("A:" + i);
        }
        pageContext.setAttribute("lists", lists);
    %>
    <c:forEach items="${lists}" var="item">
        ${item} &nbsp;
    </c:forEach>
    <hr>
    <%--  循环对象集合  --%>
    <%
        List<User> userList = new ArrayList<>();
        User user1 = new User(1, "zhangsan", "123456");
        User user2 = new User(2, "lisi", "123456");
        User user3 = new User(3, "wangwu", "123456");
        userList.add(user1);
        userList.add(user2);
        userList.add(user3);
        //  将数据设置到作用域中
        pageContext.setAttribute("userList", userList);
    %>
    <%--  判断集合是否为空  --%>
    <c:if test="${!empty userList}" >
        <%--   当集合不为空时，遍历数据     --%>
        <table align="center" width="800px" border="1" style="border-collapse: collapse">
            <tr align="center">
                <th>用户编号</th>
                <th>用户名称</th>
                <th>用户密码</th>
                <th>用户操作</th>
            </tr>
            <c:forEach items="${userList}" var="user">
                <tr align="center">
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.password}</td>
                    <td><button>修改</button></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <hr>

    <%--  循环Map  --%>
    <%
        Map<String, Object> map = new HashMap<>();
        map.put("id", 1);
        map.put("name", "zhangsan");
        map.put("password", "123456");
        pageContext.setAttribute("map", map);
    %>
    <c:forEach items="${map}" var="m">
        key: ${m.key} ---- value: ${m.value} <br>
    </c:forEach>
</body>
</html>
