<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.feliven.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/11
  Time: 20:27
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
            获取List
                获取List的size
                    $(list.size()}
                获取List的指定下标的值
                    $(list[下标])
                注：list代表的是限域变量名
            获取Map
                获取Map中指定key的value
                    ${map.key} 或者 ${map["key"]}
                注：map代表的是限域变量名
            获取JavaBean
                获取JavaBean中指定属性
                    ${JavaBean.属性名} ----- ${JavaBean.get属性名()}
                注：JavaBean中的属性字段必须提供getter方法
    --%>

    <%
        //  list的使用
        List<String> lists = new ArrayList<>();
        lists.add("aaa");
        lists.add("bbb");
        lists.add("ccc");
        request.setAttribute("list", lists);

      //  Map的使用
      Map maps = new HashMap();
      maps.put("aaa", "1111");
      maps.put("bbb", "2222");
      maps.put("ccc", "3333");
      request.setAttribute("map", maps);

      //  JavaBean对象
      User user = new User();
      user.setId(1);
      user.setName("feliven");
      user.setPassword("123456");
      request.setAttribute("user", user);
    %>

    <h4>获取List</h4>
    获取List的size: ${list.size()} <br>
    获取List的指定下标的值: ${list[1]} <br>

    <h4>获取Map</h4>
    获取Map的指定key的value值: ${map.aaa} ----  ${map["bbb"]} <br>

    <h4>获取JavaBean</h4>
    ${user}  <br>
    获取JavaBean的指定属性的值: ${user.name} ----- ${user.getPassword()} <br>
</body>
</html>
