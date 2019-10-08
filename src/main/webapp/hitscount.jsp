<%--
  Created by IntelliJ IDEA.
  User: 72733
  Date: 2019/10/8
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>点击量统计</title>
</head>
<body>
<%
    Integer hitsCount =
            (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
        /* 第一次访问 */
        out.println("欢迎访问!");
        hitsCount = 1;
    }else{
        /* 返回访问值 */
        out.println("欢迎再次访问!");
        hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<p>页面访问量为: <%= hitsCount%></p>
</body>
</html>
