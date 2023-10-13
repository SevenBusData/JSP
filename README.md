# JSP
JSP学习  
## JSP中一种有两种类型的注释: 
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
## jstl标签
### JSTL的使用
  1. 在pom文件中导入JSTL所需要的两个jar包
  2. 在需要使用的标签库的JSP页面通过taglib标签引入指定库
### if标签
 **格式：**
```jsp
 <c:if test="<boolean>" var="<string>" scope="<string>">  
 ...
 </c:if>
```
 
 **常用属性：**  
 test:条件判断，操作的是域对象，接收返回结果是boolean类型的值（必要属性）  
 var:限域变量名（存放在作用域中的变量名），用来接收判断结果的值（可选属性）  
 scope:限域变量名的范围(page,request, session,application)(可选属性)  
 **注：**
 1. 标签操作的一般都是域对象  
 2. if标签标签没有else,如果想要else的效果，就需要设置两个完全相反的条件  
### choose、when、otherwise标签:
**格式**
```jsp
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
```

**作用**  
  1. choose标签可以有多个when标签，当when标签的test属性为true时，执行when标签中的内容  
  2. otherwise标签没有test属性，当choose标签中没有when标签的test属性为true时，执行otherwise标签中的内容
  3. when标签和otherwise标签可以有多个，但是只能有一个是执行的  

**属性**
  1. choose标签没有属性
  2. when标签只有一个test属性，必须属性
  3. otherwise标签没性  

**注意:**
  1. choose标签中必须要有when标签，而otherwise标签可以没有
  2. choose和oterwise标签没有属性，而when标签必须要有一个test属性
  3. otherwise标签必须设置在最后一个when标签之后
  4. choose标签中只能设置when标签和otherwise标签，而when标签和otherwise标签可以嵌套其他标签
  5. otherwise标签会在所有when标签都不执行的时候执行  
### forEach标签
  **格式：**
```jsp
    <c: forEach
      itens-"<object>"
      begin="<int>"
      end="<int>"
      step-"cint"
      var="<string>"
      varstatus="<string>">
    </c:forEach>
```
          
  **属性：**
      begin: 开始数  
      end: 结束数  
      step: 间隔数  
      var: 限域变量名，用来接收当前遍历的成员  
      items: 要循环的数据（数组、List、Map等）   
  1. 迭代主体内容多次  
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
### 格式化动作标签
#### fornatumber标签
  **将数值型转化成指定格式的字符**
  **语法格式**
```jsp
    <fmt: formatNumber
      value="<string>"
      type="<string>"
      var"<string>"
      scope="<string>"/>
```
        
**常用属性：**  
 value:要格式化的数值  
 type:要格式化的型:  
  * number 数值型 (默认)  
  * percent  百分比类型  
  * currency 货币类型  

 var:限域变量名，用来接收格式化的结果  
 scope:var属性的范围（page|request|session|application）  


**注:**
1. 如果使用var属性标签不会输出结果，需要使用EL表达式输出  
2. type类型默认时number  

#### formatDate标签
**将Date型的数据转化成指定格式的字符串**
**语法格式：**
```jsp
<fmt: formatDate
 value="<string>"
 type"<string>"
 dateStyle="<string>"
 timestyle="<string>"
 pattern-"<string>"
 tineZone="<string>"
 var="<string>"
 scope"string>"/>
```
    
 **常用属性：**  
  value:要格式化的日期   
  type:格式化的类型   
   * date 日期型 年月日  
   * time 时间型 时分秒  
   * both 日期时间型  

  datestyle:日期格式  
  tiestyle: 日期时间  
  pattern:白定义模式   
    y M d H m s  
  timeZone  
  var  
  scope   
#### parseNumber标签
 **将指定格式的数值字符串转化成数值型**
 **语法格式：**  
```jsp
    <fmt: parseNumber
      value="<string>"
      type="<string>"
      var="<string>"
      scope="<string>"/>
```
      
#### parseDate标签
 **将日期型的字符串转换成Date型**
 **格式语法：**
```jsp
    <fmt:parseDate
      value="<string>"
      type="<string>"
      dateStyle="<string
      timeStyle="<string
      pattern="<string>"
      var="<string>"
      scope="<string>"/>
```
      
