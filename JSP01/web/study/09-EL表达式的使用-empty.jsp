<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.feliven.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
        EL表达式的使用
          empty
              判断域对象是否为空
                 为空，返回true;
                 不为空，返回false;
              如果域对象是字符串
                  不存在的域对象：true
                  空字符：true
                  null true
              如果域对象是List:
                  null; true
                  没有长度的List(size):true
              如果域对象是Map:
                  null; true
                  空nap对象：true
              如果域对象是Javabean对象：
                  null; true
                  空对象：false
          注: 判断域对象不为空
              ${!empty 限域对象变量名}
    --%>

    <%
        //  字符串
        request.setAttribute("str1", "");
        request.setAttribute("str2", null);
        request.setAttribute("str3", "abc");
        //  List
        List list1 = new ArrayList();
        List list2 = null;
        List list3 = new ArrayList();
        list3.add(1);
        request.setAttribute("list1", list1);
        request.setAttribute("list2", list2);
        request.setAttribute("list3", list3);

        //  Map
        Map map1 = new HashMap<>();
        Map map2 = null;
        Map map3 = new HashMap<>();
        map3.put("a", 1);
        request.setAttribute("map1", map1);
        request.setAttribute("map2", map2);
        request.setAttribute("map3", map3);
        //  JavaBean
        User user1 = new User();
        User user2 = null;
        User user3 = new User();
        user3.setId(1);
        request.setAttribute("user1", user1);
        request.setAttribute("user2", user2);
        request.setAttribute("user3", user3);

    %>

    <div>判断字符串是否为空/存在</div>
    ${empty str1} <br>
    ${empty str2} <br>
    ${empty str3} <br>
    <hr>
    <div>判断List是否为空/存在</div>
    ${empty list1} <br>
    ${empty list2} <br>
    ${empty list3} <br>
    <hr>
    <div>判断Map是否为空/存在</div>
    ${empty map1} <br>
    ${empty map2} <br>
    ${empty map3} <br>
    <hr>
    <div>判断JavaBean是否为空/存在</div>
    ${empty user1} <br>
    ${empty user2} <br>
    ${empty user3} <br>

</body>
</html>
