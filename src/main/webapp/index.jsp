<%@ page import="static sun.misc.MessageUtils.out" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<h2>Hello World!</h2>
<% out.println("hello");%>
<%= (new java.util.Date()).toLocaleString()%>
<br>
<h5>if else例子</h5>
<% int day = 2; %>
<% if (day==7) { %>
<p>今天是周末</p>
<%} else {%>
<p>今天不是周末</p>
<%} %>
<h5>switch例子</h5>
<% switch (day){
    case 1: out.println("周一");break;
    case 2: out.println("周二");break;
    case 3: out.println("周三");break;
    case 4: out.println("周四");break;
    case 5: out.println("周五");break;
    case 6: out.println("周六");break;
    case 7: out.println("周日");break;
}%>
<hr>
<h3>For 循环实例</h3>
<%! int fontSize; %>
<%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
<font style="color: green; font-size: <%=fontSize%>">
    哈哈哈哈
</font><br />
<%}%>
<hr>

<h3>While 循环实例</h3>
<%! int fsize=10; %>
<%while ( fsize <= 13){ %>
<font style="color: green;font-size: <%= fsize %> ">
    哈哈哈哈
</font><br />
<%fsize++;%>
<%}%>
<hr>
<p>指令练习</p>

<jsp:include page="date.jsp" flush="false" />

<hr>

<p>jsp:element</p>
<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   属性值
</jsp:attribute>
    <jsp:body>
        XML 元素的主体
    </jsp:body>
</jsp:element>
<hr>
<p>日期格式化</p>
<%
    Date dNow = new Date( );
    SimpleDateFormat ft =
            new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
    out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
%>
<hr>
<p>重定向</p>
<%--<jsp:forward page="date.jsp" />--%>
<%--
<%
    // 重定向到新地址
    String site = new String("http://www.baidu.com");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
--%>



<%--<%
    Integer hitsCount =
            (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
        /* 第一次访问 */
        out.println("欢迎访问");
        hitsCount = 1;
    }else{
        /* 返回访问值 */
        out.println("欢迎再次访问");
        hitsCount += 1;
%>
<p>页面点击量为<%= hitsCount%></p>--%>


</body>
</html>