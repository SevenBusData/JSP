<%--
  Created by IntelliJ IDEA.
  User: seven
  Date: 2023/10/10
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ScriptLet脚本小程序</title>
</head>
<body>
<%--
    ScriptLet脚本小程序
        JSP中一共有三种脚本小程序:
            第一种:Java脚本段，可以写Java代码，定义局部变量、编写语句
                <%
                    //  可以写Java代码
                %>
                生成的代码在servlet中的service方法
            第二种:声明，声明全局变量、方法、类等
                <%!
                    声明全局变量、方法、类等
                %>
                生成的代码在servlet的类体中
            第三种:输出表达式，可以输出变量和字符串
                <%=
                    数据
                %>
                生成的代码在servlet中的service方法中，相当于out.print()输出
--%>

    <%-- 第一种:Java脚本段，可以写Java代码，定义局部变量、编写语句 --%>
    <%
        //  定义局部变量
        String str = "Hello Jsp";
        //  输出到控制台
        System.out.println(str);
        //  输出到浏览器
        out.print(str);
        out.write("---------");
        //  输出全局变量
        out.write("全局变量" + num);
        out.write("---------");
    %>
    <%-- 第二种:声明，声明全局变量、方法、类等  --%>
    <%!
        //  声明全局变量
        int num = 10;
    %>

    <%-- 第三种:输出表达式，可以输出变量和字符串  --%>
    <%=str%>

</body>
</html>
