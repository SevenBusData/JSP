# JSP
JSP学习  
##JSP中一种有两种类型的注释: 
1. 显示注释： 
**能够在客户端查看的注释**  
* 继承html风格的注释  
<!-- HTML注释 --->
2. 隐形注释  
**不能够在客户端查看的注释**   
* 继承JSP风格的注释   
<%-- JSP注释 --%>  
* 继承Java风格的注释  
// 单行注释  
/* 多行注释 */
## ScriptLet脚本小程序
**JSP中一共有三种脚本小程序:**
1. 第一种:Java脚本段，可以写Java代码，定义局部变量、编写语句  
<%  
//  可以写Java代码  
%>  
**生成的代码在servlet中的service方法**  
2. 第二种:声明，声明全局变量、方法、类等  
<%!  
    声明全局变量、方法、类等  
%>  
**生成的代码在servlet的类体中**
3. 第三种:输出表达式，可以输出变量和字符串  
<%=  
    数据  
%>  
**生成的代码在servlet中的service方法中，相当于out.print()输出**
## include静态包含
### 格式:
   <%@include file="要包含的页面地址"%>
### 特点:
   1. 将内容进行了直接的替换
   2. 静态包含只会生成一个源码文件，最终的内容全部在_jspService方法体中（源码文件中）
   3. 不能出现同名变量
   4. 运行效率高一点点。耦合性较高，不够灵活
## include动态包含
### 格式：
   <jsp:include page="要包含的页面路径"></jsp:include>
### 特点:
   1. 动态包含相当于方法的调用
   2. 动态包含会生成多个源码文件
   3. 可以定义同名变量
   4. 效率高，耦合度低
### 注：
   当动态包含不需要传递参数时，include双标签之间不要有任何内容，包括换行和空格  
   <jsp:include page-"要包含的页面路径">  
   <jsp:param name="参数名" value="参数值"/>  
   </jsp:include>   
   注：name属性不支持表达式，value属性支持表示  
    获取参数： request.getParameter(name);通过指定参数名获取参数值
## JSP的四大域对象
1. page作用域
    在当前页面有效，跳转后无效
2. request作用域
    在一次请求中有效，服务端跳转有效，客户端跳珠失效
3. session作用城
    在一次会话中有效，服务端和客户端跳转有效
4. application作用域
    在整个应用中有效
**JSP中跳转方式**
    1. 服务端跳转
        <jsp:forward page="跳转的地址"></jsp:forward>
    2. 客户端跳转
        超链接
## EL表达式
### 作用：
   简化JSP代码
### 格式
   ${域对象的名称}
### 操作对象：
   EL表达式一般操作的是域对象，不能操作局部变量。
### 操作范围：
   1. page范围
   在当前页面
   2. request范围
   在一次请求
   3. session范围
   在一次会话
   4. application范围
   在整个应用程序

### 注意事项：
   1. 如果el表达式获取域对象的值为空，默认显示空字符串
   2. el表达式默认从小到大范围去找，找到即可，如果四个范围都未找到，则显示空字符串
## EL表达式的使用
   1. 获取List
        * 获取List的size
            ${list.size()}
        * 获取List的指定下标的值
            ${list[下标]}  
        **注：list代表的是限域变量名**
   2. 获取Map  
       * 获取Map中指定key的value
           ${map.key} 或者 ${map["key"]}  
       **注：map代表的是限域变量名**
   3. 获取JavaBean
       * 获取JavaBean中指定属性
           ${JavaBean.属性名} ----- ${JavaBean.get属性名()}  
       **注：JavaBean中的属性字段必须提供getter方法**
## EL表达式的使用
 * empty
   1. 判断域对象是否为空  
        为空，返回true;  
        不为空，返回false;  
   2. 如果域对象是字符串  
        不存在的域对象：true  
        空字符：true  
        null true  
    3. 如果域对象是List:  
        null; true  
        没有长度的List(size):true  
    4. 如果域对象是Map:  
        null; true  
        空nap对象：true  
    5. 如果域对象是Javabean对象：  
        null; true  
        空对象：false  
    * 注: 判断域对象不为空   
         ${!empty 限域对象变量名}  
